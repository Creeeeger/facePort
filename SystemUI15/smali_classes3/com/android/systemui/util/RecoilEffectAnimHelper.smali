.class public final Lcom/android/systemui/util/RecoilEffectAnimHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/android/systemui/util/RecoilEffectAnimHelper$Companion;

.field private static final DOWN_DURATION:J = 0x64L

.field private static final DOWN_SCALE:F = 0.96f

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final RELEASE_DURATION:J = 0x15eL


# instance fields
.field private final container:Landroid/view/View;

.field private downAnimator:Landroid/animation/ValueAnimator;

.field private releaseAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/util/RecoilEffectAnimHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/util/RecoilEffectAnimHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/util/RecoilEffectAnimHelper;->Companion:Lcom/android/systemui/util/RecoilEffectAnimHelper$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/util/RecoilEffectAnimHelper;->$stable:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/util/RecoilEffectAnimHelper;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/RecoilEffectAnimHelper;->container:Landroid/view/View;

    sget-object v7, Lcom/android/systemui/util/ValueAnimatorUtil;->INSTANCE:Lcom/android/systemui/util/ValueAnimatorUtil;

    sget-object v4, Lcom/android/systemui/util/RecoilEffectAnimHelper;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-wide/16 v5, 0x64

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f75c28f    # 0.96f

    move-object v0, v7

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/util/ValueAnimatorUtil;->createScaleAnimator(Landroid/view/View;FFLandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/RecoilEffectAnimHelper;->downAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Lcom/android/systemui/util/ValueAnimatorUtil;->getRELEASE_INTERPOLATOR()Landroid/view/animation/Interpolator;

    move-result-object v4

    const-wide/16 v5, 0x15e

    const v2, 0x3f75c28f    # 0.96f

    const/high16 v3, 0x3f800000    # 1.0f

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/util/ValueAnimatorUtil;->createScaleAnimator(Landroid/view/View;FFLandroid/view/animation/Interpolator;J)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/RecoilEffectAnimHelper;->releaseAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final startTouchDownAnim()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/RecoilEffectAnimHelper;->container:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/RecoilEffectAnimHelper;->downAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    sget-object v1, Lcom/android/systemui/util/ValueAnimatorUtil;->INSTANCE:Lcom/android/systemui/util/ValueAnimatorUtil;

    const v2, 0x3f75c28f    # 0.96f

    invoke-virtual {v1, p0, v0, v2}, Lcom/android/systemui/util/ValueAnimatorUtil;->startDownScaleAnim(Landroid/animation/ValueAnimator;Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method public final startTouchReleaseAnim()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/RecoilEffectAnimHelper;->container:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/util/RecoilEffectAnimHelper;->releaseAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    sget-object v2, Lcom/android/systemui/util/ValueAnimatorUtil;->INSTANCE:Lcom/android/systemui/util/ValueAnimatorUtil;

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object p0, p0, Lcom/android/systemui/util/RecoilEffectAnimHelper;->downAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1, v0, v3, p0}, Lcom/android/systemui/util/ValueAnimatorUtil;->startReleaseScaleAnim(Landroid/animation/ValueAnimator;Landroid/view/View;FLandroid/animation/ValueAnimator;)V

    :cond_1
    return-void
.end method
