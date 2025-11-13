.class public final Lcom/android/systemui/navigationbar/NavigationBar$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/NavigationBar;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/NavigationBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final animateNavBarLongPress(ZZJ)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$900(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/buttons/ButtonInterface;->animateLongPress(ZZJ)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onConnectionChanged(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$700(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-boolean v1, v0, Lcom/android/systemui/recents/OverviewProxyService;->mIsEnabled:Z

    iput-boolean v1, p1, Lcom/android/systemui/navigationbar/NavigationBarView;->mOverviewProxyEnabled:Z

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$800(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->shouldShowSwipeUpUI()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/navigationbar/NavigationBarView;->mShowSwipeUpUi:Z

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateStates()V

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->updateScreenPinningGestures()V

    return-void
.end method

.method public final onHomeRotationEnabled(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1100(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iput-boolean p1, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mHomeRotationEnabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsRecentsAnimationRunning:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/shared/rotation/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    :cond_0
    return-void
.end method

.method public final onOverviewShown()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1200(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsRecentsAnimationRunning:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    return-void
.end method

.method public final onPrioritizedRotation(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ADDITIONAL_LOG:Z

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onPrioritizedRotation rotation : %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavigationBar"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/basic/util/LogWrapper;->dp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mStartingQuickSwitchRotation:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mShowOrientedHandleForImmersiveMode:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->orientSecondaryHomeHandle()V

    return-void
.end method

.method public final onTaskbarStatusUpdated$1(ZZ)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1300(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mFloatingRotationButton:Lcom/android/systemui/shared/rotation/FloatingRotationButton;

    iput-boolean p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsTaskbarVisible:Z

    iput-boolean p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsTaskbarStashed:Z

    iget-boolean v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mIsShowing:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mPositionCalculator:Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;

    iget v1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mDisplayRotation:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->calculatePosition(IZZ)Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mPosition:Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;

    iget v0, p2, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;->translationX:I

    iget v1, p1, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;->translationX:I

    if-ne v1, v0, :cond_1

    iget v0, p1, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;->translationY:I

    iget p2, p2, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;->translationY:I

    if-eq v0, p2, :cond_2

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->updateTranslation(Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;Z)V

    iput-object p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButton;->mPosition:Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;

    :cond_2
    :goto_0
    return-void
.end method

.method public final onToggleRecentApps()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1400(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/shared/rotation/RotationButtonController;

    iget-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mIsRecentsAnimationRunning:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/shared/rotation/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    return-void
.end method

.method public final setAssistantOverridesRequested([I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mAssistManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/assist/AssistManager;

    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistOverrideInvocationTypes:[I

    return-void
.end method

.method public final setOverrideHomeButtonLongPress(FZJ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setOverrideHomeButtonLongPress receives: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p3

    new-instance p4, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda12;

    const/4 v0, 0x1

    invoke-direct {p4, v0}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-virtual {p3, p4}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p3

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBar$3;->this$0:Lcom/android/systemui/navigationbar/NavigationBar;

    iput-object p3, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressDurationMs:Ljava/util/Optional;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p3, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda12;

    const/4 p4, 0x2

    invoke-direct {p3, p4}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda12;-><init>(I)V

    invoke-virtual {p1, p3}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressSlopMultiplier:Ljava/util/Optional;

    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHomeButtonLongPressHapticEnabled:Z

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressDurationMs:Ljava/util/Optional;

    new-instance p2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mOverrideHomeButtonLongPressSlopMultiplier:Ljava/util/Optional;

    new-instance p2, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;

    const/4 p3, 0x3

    invoke-direct {p2, p3}, Lcom/android/systemui/navigationbar/NavigationBar$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->access$1000(Lcom/android/systemui/navigationbar/NavigationBar;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBar;->reconfigureHomeLongClick()V

    :cond_0
    return-void
.end method
