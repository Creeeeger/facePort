.class public final Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;


# instance fields
.field public isAnimationRunning:Z

.field public final onAlphaChanged:Lkotlin/jvm/functions/Function1;

.field public final onTranslationXChanged:Lkotlin/jvm/functions/Function1;

.field public final translationXIn:I

.field public final translationXOut:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;-><init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Lkotlin/jvm/functions/Function1;",
            "Lkotlin/jvm/functions/Function1;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->onAlphaChanged:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->onTranslationXChanged:Lkotlin/jvm/functions/Function1;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->isAnimationRunning:Z

    const p2, 0x7f070c49

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->translationXIn:I

    const p2, 0x7f070c4a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->translationXOut:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;-><init>(Landroid/content/res/Resources;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V

    return-void
.end method


# virtual methods
.method public final onSystemEventAnimationBegin(ZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 6

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->isAnimationRunning:Z

    const/4 p1, 0x2

    new-array v0, p1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/util/animation/AnimationUtil;->Companion:Lcom/android/systemui/util/animation/AnimationUtil$Companion;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_BAR_X_MOVE_OUT:Landroidx/core/animation/PathInterpolator;

    invoke-virtual {v0, v2}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationBegin$moveOut$1$1;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationBegin$moveOut$1$1;-><init>(Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v0, v2}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    new-array v2, p1, [F

    fill-array-data v2, :array_1

    invoke-static {v2}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationBegin$alphaOut$1$1;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationBegin$alphaOut$1$1;-><init>(Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v2, v3}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    if-eqz p2, :cond_0

    new-array p1, p1, [F

    fill-array-data p1, :array_2

    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v4, 0x12c

    invoke-virtual {p1, v4, v5}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    invoke-virtual {p1, v1}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance p2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationBegin$batteryAlphaOut$1$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationBegin$batteryAlphaOut$1$1;-><init>(Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {p1, p2}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    :goto_0
    return-object v3

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final onSystemEventAnimationFinish(ZZZ)Lcom/android/systemui/statusbar/events/SpringAnimatorSet;
    .locals 7

    iget p1, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->translationXOut:I

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;->onTranslationXChanged:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/util/animation/AnimationUtil;->Companion:Lcom/android/systemui/util/animation/AnimationUtil$Companion;

    const/16 v4, 0x17

    invoke-virtual {v3, v4}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    sget-object v4, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_BAR_X_MOVE_IN:Landroidx/core/animation/PathInterpolator;

    invoke-virtual {v2, v4}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationFinish$moveIn$1$1;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationFinish$moveIn$1$1;-><init>(Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v2, v4}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    invoke-static {v4}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    const/16 v5, 0xb

    invoke-virtual {v3, v5}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance v6, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationFinish$alphaIn$1$1;

    invoke-direct {v6, p0, v4}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationFinish$alphaIn$1$1;-><init>(Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {v4, v6}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    new-instance v6, Landroidx/core/animation/AnimatorSet;

    invoke-direct {v6}, Landroidx/core/animation/AnimatorSet;-><init>()V

    if-eqz p2, :cond_0

    filled-new-array {v2}, [Landroidx/core/animation/Animator;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroidx/core/animation/AnimatorSet;->playTogether([Landroidx/core/animation/Animator;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v1, [F

    fill-array-data p1, :array_2

    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 p2, 0x12c

    invoke-virtual {p1, p2, p3}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    const/16 p2, 0xd

    invoke-virtual {v3, p2}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {p1, v5}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    new-instance p2, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationFinish$batteryAlphaIn$1$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationFinish$batteryAlphaIn$1$1;-><init>(Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;Landroidx/core/animation/ValueAnimator;)V

    invoke-virtual {p1, p2}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    filled-new-array {p1}, [Landroidx/core/animation/Animator;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroidx/core/animation/AnimatorSet;->playTogether([Landroidx/core/animation/Animator;)V

    goto :goto_0

    :cond_1
    filled-new-array {v2, v4}, [Landroidx/core/animation/Animator;

    move-result-object p1

    invoke-virtual {v6, p1}, Landroidx/core/animation/AnimatorSet;->playTogether([Landroidx/core/animation/Animator;)V

    :goto_0
    new-instance p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationFinish$$inlined$doOnEnd$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationFinish$$inlined$doOnEnd$1;-><init>(Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;)V

    invoke-virtual {v6, p1}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    new-instance p1, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationFinish$$inlined$doOnCancel$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator$onSystemEventAnimationFinish$$inlined$doOnCancel$1;-><init>(Lcom/android/systemui/statusbar/phone/fragment/StatusBarSystemEventDefaultAnimator;)V

    invoke-virtual {v6, p1}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    new-instance p0, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;-><init>()V

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/events/SpringAnimatorSet;->playTogether([Ljava/lang/Object;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
