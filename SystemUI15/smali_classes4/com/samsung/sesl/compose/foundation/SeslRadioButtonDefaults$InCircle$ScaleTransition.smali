.class public final Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$InCircle$ScaleTransition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$InCircle$ScaleTransition;

.field public static final easing:Landroidx/compose/animation/core/CubicBezierEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$InCircle$ScaleTransition;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$InCircle$ScaleTransition;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$InCircle$ScaleTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$InCircle$ScaleTransition;

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v1, 0x3ef74bc7    # 0.483f

    const v2, 0x3f9b851f    # 1.215f

    const v3, 0x3ebae148    # 0.365f

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$InCircle$ScaleTransition;->easing:Landroidx/compose/animation/core/CubicBezierEasing;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
