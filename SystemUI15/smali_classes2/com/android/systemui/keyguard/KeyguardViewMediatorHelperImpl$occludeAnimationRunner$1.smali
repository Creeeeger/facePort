.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Occlude animation cancelled by WM."

    invoke-static {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    const/4 p3, 0x0

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    invoke-static {p3, p2}, Lkotlin/collections/ArraysKt___ArraysKt;->getOrNull(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/RemoteAnimationTarget;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    move-object p2, p4

    :goto_0
    iput-object p2, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastOccludedApp:Landroid/content/ComponentName;

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p2, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastOccludedApp:Landroid/content/ComponentName;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, p4

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", edit="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, p4

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "occludeAnimationRunner app="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastOccludedApp:Landroid/content/ComponentName;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    move-object p1, p4

    :goto_3
    const-string p2, "com.samsung.android.smartsuggestions.feature.aisuggestion.ui.activity.SuggestionUiContentActivity"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastOccludedApp:Landroid/content/ComponentName;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p4

    :cond_4
    const-string p1, "com.samsung.android.smartsuggestions.feature.aisuggestion.ui.onboarding.OnboardingActivity"

    invoke-virtual {p1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->isScreenOn()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p4, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastOccludedApp:Landroid/content/ComponentName;

    if-eqz p4, :cond_7

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->editModeController:Lcom/android/systemui/keyguard/KeyguardEditModeController;

    if-eqz p1, :cond_6

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isEditMode:Z

    if-ne p1, p2, :cond_6

    goto :goto_4

    :cond_6
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object p4, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p4, p4, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->surfaceControllerLazy:Ldagger/Lazy;

    invoke-interface {p4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;

    const v0, 0x3c23d70a    # 0.01f

    invoke-virtual {p4, v0, p1}, Lcom/android/systemui/keyguard/KeyguardSurfaceControllerImpl;->setKeyguardSurfaceAppearAmount(FLandroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    if-eqz p5, :cond_8

    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    :cond_8
    return-void

    :cond_9
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->briefNowBarControllerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/aibrief/control/BriefNowBarController;

    new-instance p4, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1$onAnimationStart$2;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    invoke-direct {p4, v0, p5}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1$onAnimationStart$2;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;Landroid/view/IRemoteAnimationFinishedCallback;)V

    invoke-virtual {p1, p4}, Lcom/android/systemui/aibrief/control/BriefNowBarController;->startCircleAnimation(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$occludeAnimationRunner$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->viewMediatorLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0, p2, p3}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    if-eqz p5, :cond_a

    invoke-interface {p5}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V

    :cond_a
    return-void
.end method
