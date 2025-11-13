.class public final Lcom/samsung/sesl/compose/foundation/SeslBasicSwitchDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslBasicSwitchDefaults;

.field public static final ThumbTransitionEasing:Landroidx/compose/animation/core/CubicBezierEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/sesl/compose/foundation/SeslBasicSwitchDefaults;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/foundation/SeslBasicSwitchDefaults;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslBasicSwitchDefaults;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslBasicSwitchDefaults;

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslBasicSwitchDefaults;->ThumbTransitionEasing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
