.class public final Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final FEEDBACK_ANIMATION_DOWN_EASING:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final FEEDBACK_ANIMATION_DOWN_TARGET_DARK:J

.field public static final FEEDBACK_ANIMATION_DOWN_TARGET_LIGHT:J

.field public static final FEEDBACK_ANIMATION_UP_EASING:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;

.field public static final SCALE_ANIMATION_DOWN_EASING:Landroidx/compose/animation/core/CubicBezierEasing;

.field public static final SCALE_ANIMATION_UP_EASING:Landroidx/compose/animation/core/CubicBezierEasing;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;

    invoke-direct {v0}, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;-><init>()V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->INSTANCE:Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->SCALE_ANIMATION_DOWN_EASING:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v3, 0x3e6147ae    # 0.22f

    invoke-direct {v0, v3, v3, v1, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->SCALE_ANIMATION_UP_EASING:Landroidx/compose/animation/core/CubicBezierEasing;

    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->White:J

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {v0, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v3

    sput-wide v3, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->FEEDBACK_ANIMATION_DOWN_TARGET_DARK:J

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->Black:J

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {v0, v3, v4}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(FJ)J

    move-result-wide v3

    sput-wide v3, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->FEEDBACK_ANIMATION_DOWN_TARGET_LIGHT:J

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-direct {v0, v1, v1, v2, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->FEEDBACK_ANIMATION_DOWN_EASING:Landroidx/compose/animation/core/CubicBezierEasing;

    new-instance v0, Landroidx/compose/animation/core/CubicBezierEasing;

    const v1, 0x3f2b851f    # 0.67f

    const v3, 0x3e2e147b    # 0.17f

    invoke-direct {v0, v3, v3, v1, v2}, Landroidx/compose/animation/core/CubicBezierEasing;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/sesl/compose/foundation/SeslRecoilDefaults;->FEEDBACK_ANIMATION_UP_EASING:Landroidx/compose/animation/core/CubicBezierEasing;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
