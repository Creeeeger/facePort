.class public final Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;

.field public static final ThumbDiameter:F

.field public static final ThumbPadding:F

.field public static final ThumbShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public static final ThumbWidth:F

.field public static final TrackHeight:F

.field public static final TrackShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public static final TrackWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->INSTANCE:Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;

    const/16 v0, 0x14

    int-to-float v0, v0

    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    sput v0, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->TrackHeight:F

    const/16 v1, 0x23

    int-to-float v1, v1

    sput v1, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->TrackWidth:F

    const/16 v1, 0x32

    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape(I)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    sput-object v2, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->TrackShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    const/16 v2, 0x19

    int-to-float v2, v2

    sput v2, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->ThumbWidth:F

    sput v0, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->ThumbDiameter:F

    const/4 v0, 0x2

    int-to-float v0, v0

    sput v0, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->ThumbPadding:F

    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape(I)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v0

    sput-object v0, Lcom/samsung/sesl/compose/component/SeslSwitchDefaults;->ThumbShape:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
