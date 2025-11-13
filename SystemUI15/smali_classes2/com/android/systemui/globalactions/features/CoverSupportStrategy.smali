.class public final Lcom/android/systemui/globalactions/features/CoverSupportStrategy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/WindowManagerFunctionStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;


# instance fields
.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public final mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

.field public final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

.field public final mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mResourceWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

.field public final mToastController:Lcom/samsung/android/globalactions/util/ToastController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iput-object p3, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    iput-object p4, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p5, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iput-object p6, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iput-object p7, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mResourceWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    return-void
.end method


# virtual methods
.method public final doActionBeforeSecureConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Z
    .locals 6

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "power"

    if-ne p2, v0, :cond_0

    const-string/jumbo p2, "shutdown"

    goto :goto_0

    :cond_0
    const-string p2, "reboot"

    :goto_0
    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "restart"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v4, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v1, v4}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v4, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mResourceWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v5

    if-ne v5, v0, :cond_3

    const v5, 0x1040600

    goto :goto_1

    :cond_3
    const v5, 0x1040605

    :goto_1
    invoke-virtual {v4, v5}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v4, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mResourceWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v5

    if-ne v5, v0, :cond_5

    const v0, 0x10405f3

    goto :goto_2

    :cond_5
    const v0, 0x10405f4

    :goto_2
    invoke-virtual {v4, v0}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    invoke-interface {v0, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/globalactions/features/CoverSupportStrategy;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mActionBeforeSecureConfirm:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    invoke-virtual {p0, v2}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setRegisterState(Z)V

    :cond_8
    :goto_3
    return v2
.end method

.method public final onCreateBugReportAction()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onCreateEmergencyAction()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onCreateEmergencyCallAction()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onCreateMedicalInfoAction()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_MINI_SVIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onDecorateWindow(Landroid/view/Window;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v0, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    move-result-object p0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/WindowInsetsController;->hide(I)V

    :cond_0
    return-void
.end method

.method public final onDispose()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    sget-object v0, Lcom/android/systemui/basic/util/ModuleType;->GLOBALACTIONS:Lcom/android/systemui/basic/util/ModuleType;

    iget-object p0, p0, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onInitialize(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    iget-object v0, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverUtil:Lcom/android/systemui/util/CoverUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/util/CoverUtil;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mCoverState:Lcom/samsung/android/cover/CoverState;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    sget-object v0, Lcom/android/systemui/basic/util/ModuleType;->GLOBALACTIONS:Lcom/android/systemui/basic/util/ModuleType;

    new-instance v1, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/features/CoverSupportStrategy$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/features/CoverSupportStrategy;)V

    iget-object p1, p1, Lcom/android/systemui/basic/util/CoverUtilWrapper;->mListeners:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mKeyGuardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setRegisterState(Z)V

    return-void
.end method

.method public final onReboot()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v0, "CoverSupportStrategy"

    const-string v1, "onReboot"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onShutdown()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/CoverSupportStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v0, "CoverSupportStrategy"

    const-string v1, "onShutdown"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
