#[macro_export]
macro_rules! enum_properties {
    (
        $(#[$($m:tt)*])*
        $public:vis enum $Enum:ident : $EnumProperties:ident {
            $(
                $(#[$($variant_m:tt)*])*
                $variant:ident {
                    $($field:ident : $value:expr),* $(, .. $default:expr)? $(,)?
                }
                $(
                    $(@$is_struct_variant_marker:tt)?
                    {
                        $($struct_variant_content:tt)*
                    }
                )?
                $((
                    $(
                        $(@$tuple_variant_item_marker:tt)?
                        $tuple_variant_item:ty
                    ),* $(,)?
                ))?
                $(= $discriminant:expr)?
            ),* $(,)?
        }
    ) => {
        $(#[$($m)*])*
        $public enum $Enum {
            $(
                $(#[$($variant_m)*])*
                $variant
                $({$($struct_variant_content)*})?
                $(($($tuple_variant_item),*))?
                $(= $discriminant)?
            ),*
        }

        impl core::ops::Deref for $Enum {
            type Target = $EnumProperties;
            fn deref(&self) -> &Self::Target {
                match self {
                    $(
                        $Enum::$variant
                            $({ .. $(@$is_struct_variant_marker)?})?
                            $(($(_ $(@$tuple_variant_item_marker)?),*))?
                        => &$EnumProperties {
                            $($field: $value),* $(, .. $default)?
                        }
                    ),*
                }
            }
        }
    };

    (
        $(#[$($m:tt)*])*
        $public:vis enum $Enum:ident : $EnumProperties:ident {
            $(
                $variant:ident {
                    $($field:ident : $value:expr),* $(,)?
                }
                $(
                    $(@$is_struct_variant_marker:tt)?
                    {
                        $($struct_variant_content:tt)*
                    }
                )?
                $((
                    $(
                        $(@$tuple_variant_item_marker:tt)?
                        $tuple_variant_item:ty
                    ),* $(,)?
                ))?
                $(= $discriminant:expr)?
            ),* , .. $default:expr $(,)?
        }
    ) => {
        $(#[$($m)*])*
        $public enum $Enum {
            $(
                $variant
                $({$($struct_variant_content)*})?
                $(($($tuple_variant_item),*))?
                $(= $discriminant)?
            ),*
        }

        impl core::ops::Deref for $Enum {
            type Target = $EnumProperties;
            fn deref(&self) -> &Self::Target {
                match self {
                    $(
                        $Enum::$variant
                            $({ .. $(@$is_struct_variant_marker)?})?
                            $(($(_ $(@$tuple_variant_item_marker)?),*))?
                        => &$EnumProperties {
                            $($field: $value),* , .. $default
                        }
                    ),*
                }
            }
        }
    };
}
