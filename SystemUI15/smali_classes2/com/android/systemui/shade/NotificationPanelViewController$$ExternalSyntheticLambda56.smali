.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationPanelViewController;ZLcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iput-boolean p2, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;->f$2:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;->f$0:Lcom/android/systemui/shade/NotificationPanelViewController;

    iget-boolean v1, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;->f$1:Z

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda56;->f$2:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    check-cast p1, Ljava/lang/Float;

    iget-object v2, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardStatusViewController;->setAlpha(F)V

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaForKeyguard:F

    const-string v1, "NPVC.setTransitionAlpha()"

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->mMaxAlphaForKeyguardSource:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateAlpha$1$1()V

    :cond_0
    sget-object p0, Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardBottomAreaRefactor;

    invoke-static {}, Lcom/android/systemui/Flags;->keyguardBottomAreaRefactor()V

    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;

    check-cast p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->_bottomAreaAlpha:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget-object v1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    iget-object v1, v1, Lcom/android/keyguard/SecLockIconViewController;->mView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_CONTINUITY_LOCKSCREEN_VI:Z

    if-eqz p0, :cond_1

    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mContinuityLockScreenContainer:Lcom/android/keyguard/KeyguardContinuityLockscreenAffordanceArea;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_1
    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setAlpha(F)V

    :cond_2
    iget-object p0, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setAlpha(F)V

    :cond_3
    return-void
.end method
