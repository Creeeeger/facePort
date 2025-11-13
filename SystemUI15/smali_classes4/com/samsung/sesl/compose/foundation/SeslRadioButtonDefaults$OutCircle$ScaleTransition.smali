.class public final Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ScaleTransition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ScaleTransition;

.field public static final easing:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final easingReverse:Landroidx/compose/animation/core/CubicBezierEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ScaleTransition;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ScaleTransition;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ScaleTransition;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ScaleTransition;

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3f51eb85    # 0.82f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ScaleTransition;->easing:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v1, 0x3dcccccd    # 0.1f

    const v2, 0x3df5c28f    # 0.12f

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslRadioButtonDefaults$OutCircle$ScaleTransition;->easingReverse:Landroidx/compose/animation/core/CubicBezierEasing;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
