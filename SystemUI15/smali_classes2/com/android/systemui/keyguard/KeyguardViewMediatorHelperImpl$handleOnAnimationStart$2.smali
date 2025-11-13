.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $appList:Ljava/util/List;

.field public final synthetic $finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public final synthetic $wallpaperClosingTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $wallpaperOpeningTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/RemoteAnimationTarget;",
            ">;",
            "Landroid/view/IRemoteAnimationFinishedCallback;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->$wallpaperClosingTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->$appList:Ljava/util/List;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->$wallpaperOpeningTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimationFrameCount:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->$wallpaperClosingTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/view/RemoteAnimationTarget;

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->$appList:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v4, :cond_3

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/RemoteAnimationTarget;

    if-eqz v4, :cond_2

    iget-object v4, v4, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v4, :cond_2

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const-string v5, "com.sec.android.app.launcher.Launcher"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_3
    iget-object v2, v2, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v2, v1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->aodAppearAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->$appList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->$wallpaperOpeningTarget:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2;->$finishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    const-wide/16 v5, 0xfa

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$1;

    invoke-direct {v5, v0, v3, v4, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$1;-><init>(Landroid/view/SurfaceControl$Transaction;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$2;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$handleOnAnimationStart$2$2$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
