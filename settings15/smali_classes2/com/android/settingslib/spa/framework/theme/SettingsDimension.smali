.class public abstract Lcom/android/settingslib/spa/framework/theme/SettingsDimension;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final appIconInfoSize:F

.field public static final appIconItemSize:F

.field public static final buttonPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final buttonPaddingVertical:F

.field public static final dialogItemPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final dialogItemPaddingHorizontal:F

.field public static final iconLarge:F

.field public static final illustrationCornerRadius:F

.field public static final illustrationMaxHeight:F

.field public static final illustrationMaxWidth:F

.field public static final illustrationPadding:F

.field public static final itemDividerHeight:F

.field public static final itemIconContainerSize:F

.field public static final itemIconSize:F

.field public static final itemPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final itemPaddingAround:F

.field public static final itemPaddingEnd:F

.field public static final itemPaddingStart:F

.field public static final itemPaddingVertical:F

.field public static final menuFieldPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final paddingExtraLarge:F

.field public static final paddingSmall:F

.field public static final paddingTiny:F

.field public static final textFieldPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    int-to-float v1, v0

    sput v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->paddingTiny:F

    const/4 v1, 0x4

    int-to-float v1, v1

    sput v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->paddingSmall:F

    const/16 v1, 0x10

    int-to-float v1, v1

    const/16 v2, 0x18

    int-to-float v2, v2

    sput v2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->paddingExtraLarge:F

    sput v2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemIconSize:F

    const/16 v3, 0x48

    int-to-float v3, v3

    sput v3, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemIconContainerSize:F

    sput v2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingStart:F

    sput v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingEnd:F

    sput v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingVertical:F

    new-instance v3, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v3, v2, v1, v1, v1}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    sput-object v3, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-static {v2, v1, v4, v3}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v3

    sput-object v3, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->textFieldPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {v2, v1, v1, v0}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-a9UjIt4$default(FFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->menuFieldPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/16 v0, 0x8

    int-to-float v0, v0

    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemPaddingAround:F

    const/16 v0, 0x20

    int-to-float v0, v0

    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->itemDividerHeight:F

    const/16 v3, 0x30

    int-to-float v3, v3

    sput v3, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->iconLarge:F

    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->appIconItemSize:F

    sput v3, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->appIconInfoSize:F

    const/16 v0, 0xc

    int-to-float v0, v0

    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->buttonPaddingVertical:F

    new-instance v3, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v3, v1, v0, v1, v0}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    sput-object v3, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->buttonPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    sput v2, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->dialogItemPaddingHorizontal:F

    new-instance v3, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-direct {v3, v2, v0, v2, v0}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFF)V

    sput-object v3, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->dialogItemPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/16 v0, 0x19c

    int-to-float v0, v0

    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->illustrationMaxWidth:F

    const/16 v0, 0x12c

    int-to-float v0, v0

    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->illustrationMaxHeight:F

    sput v1, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->illustrationPadding:F

    const/16 v0, 0x1c

    int-to-float v0, v0

    sput v0, Lcom/android/settingslib/spa/framework/theme/SettingsDimension;->illustrationCornerRadius:F

    return-void
.end method
