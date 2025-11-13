.class public final Lcom/android/systemui/communal/ui/compose/Dimensions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final ButtonPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

.field public static final CardHeightFull:F

.field public static final CardHeightHalf:F

.field public static final CardHeightThird:F

.field public static final CardOutlineWidth:F

.field public static final CardWidth:F

.field public static final GridHeight:F

.field public static final GridTopSpacing:F

.field public static final INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

.field public static final IconSize:F

.field public static final ItemSpacing:F

.field public static final SlideOffsetY:F

.field public static final Spacing:F

.field public static final ToolbarPaddingHorizontal:F

.field public static final ToolbarPaddingTop:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/communal/ui/compose/Dimensions;

    invoke-direct {v0}, Lcom/android/systemui/communal/ui/compose/Dimensions;-><init>()V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/Dimensions;->INSTANCE:Lcom/android/systemui/communal/ui/compose/Dimensions;

    const/16 v0, 0x212

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Lcom/android/systemui/communal/ui/compose/Dimensions;->CardHeightFull:F

    const/16 v1, 0x72

    int-to-float v1, v1

    sput v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->GridTopSpacing:F

    add-float/2addr v1, v0

    sput v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->GridHeight:F

    const/16 v1, 0x32

    int-to-float v1, v1

    sput v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->ItemSpacing:F

    sub-float v2, v0, v1

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v2, v3

    sput v2, Lcom/android/systemui/communal/ui/compose/Dimensions;->CardHeightHalf:F

    mul-float v2, v3, v1

    sub-float/2addr v0, v2

    const/4 v2, 0x3

    int-to-float v2, v2

    div-float/2addr v0, v2

    sput v0, Lcom/android/systemui/communal/ui/compose/Dimensions;->CardHeightThird:F

    const/16 v0, 0x168

    int-to-float v0, v0

    sput v0, Lcom/android/systemui/communal/ui/compose/Dimensions;->CardWidth:F

    sput v2, Lcom/android/systemui/communal/ui/compose/Dimensions;->CardOutlineWidth:F

    div-float v0, v1, v3

    sput v0, Lcom/android/systemui/communal/ui/compose/Dimensions;->Spacing:F

    const/16 v0, 0x1b

    int-to-float v0, v0

    sput v0, Lcom/android/systemui/communal/ui/compose/Dimensions;->ToolbarPaddingTop:F

    sput v1, Lcom/android/systemui/communal/ui/compose/Dimensions;->ToolbarPaddingHorizontal:F

    const/16 v0, 0x18

    int-to-float v4, v0

    const/16 v0, 0x10

    int-to-float v5, v0

    new-instance v0, Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/4 v6, 0x0

    move-object v1, v0

    move v2, v4

    move v3, v5

    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/layout/PaddingValuesImpl;-><init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/communal/ui/compose/Dimensions;->ButtonPadding:Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/16 v0, 0x28

    int-to-float v0, v0

    sput v0, Lcom/android/systemui/communal/ui/compose/Dimensions;->IconSize:F

    const/16 v0, 0x1e

    int-to-float v0, v0

    sput v0, Lcom/android/systemui/communal/ui/compose/Dimensions;->SlideOffsetY:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
