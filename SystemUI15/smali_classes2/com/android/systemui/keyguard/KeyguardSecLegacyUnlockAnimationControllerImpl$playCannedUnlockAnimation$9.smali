.class public final Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $target:Landroid/view/RemoteAnimationTarget;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;


# direct methods
.method public constructor <init>(Landroid/view/RemoteAnimationTarget;Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;->$target:Landroid/view/RemoteAnimationTarget;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/300"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TASK_BOOST"

    invoke-static {v1, v0}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;->$target:Landroid/view/RemoteAnimationTarget;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v2, v0, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iput-object v2, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->traceTag:Ljava/lang/String;

    iget-object v0, v0, Landroid/view/RemoteAnimationTarget;->screenSpaceBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iput v2, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashWidth:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    iput v0, v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashHeight:F

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->isLauncherActivity:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;

    invoke-direct {v2, v0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$2;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_1
    sget-object v1, Lcom/android/systemui/LsRune;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->cannedAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->getUnlockAnimationDuration()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-wide v3, v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->animStartDelay:J

    invoke-virtual {v1, v3, v4}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v3, v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->scaleAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v2, v2, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->scaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iput-object v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->cannedAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->openingWallpaperLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->skipFrameCount:I

    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->frameUpdatedCount:I

    iput-boolean v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->forceEnded:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashAlpha:F

    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->reqLeashScale:F

    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashAlpha:F

    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeashScale:F

    iget-object v1, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    iget-object v2, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->jankMonitorContext:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$JankMonitorContext;

    if-nez v2, :cond_5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$JankMonitorContext;

    iget-object v4, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->context:Landroid/content/Context;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, v4, v5}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$JankMonitorContext;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v3, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->jankMonitorContext:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$JankMonitorContext;

    move-object v2, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :cond_5
    :goto_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->curLeash:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v3, 0x1d

    invoke-static {v3, v2, v0}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    const-string v2, "KeyguardUnlock"

    invoke-virtual {v0, v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->cannedAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9;->this$0:Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl$playCannedUnlockAnimation$9$5;-><init>(Lcom/android/systemui/keyguard/KeyguardSecLegacyUnlockAnimationControllerImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3d4cccd0    # 0.050000012f
    .end array-data
.end method
