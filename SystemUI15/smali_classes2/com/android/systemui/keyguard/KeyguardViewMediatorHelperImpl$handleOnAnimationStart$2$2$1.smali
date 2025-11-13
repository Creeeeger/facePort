.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $appList:Ljava/util/List;

.field public final synthetic $curTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic $wallpaperOpeningTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceControl$Transaction;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/SurfaceControl$Transaction;",
            "Ljava/util/List<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$1;->$curTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$1;->$appList:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$1;->$wallpaperOpeningTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$1;->$curTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$1;->$appList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$1;->$wallpaperOpeningTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationTarget;

    if-eqz v3, :cond_0

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v1, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/view/RemoteAnimationTarget;

    iget-object v1, v1, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimationFrameCount:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimationFrameCount:I

    return-void
.end method
