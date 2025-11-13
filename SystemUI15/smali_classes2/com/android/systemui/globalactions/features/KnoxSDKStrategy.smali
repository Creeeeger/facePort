.class public final Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;


# instance fields
.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

.field public final mKnoxCustomManagerWrapper:Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

.field public final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field public final mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

.field public final mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p4, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iput-object p3, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mKnoxCustomManagerWrapper:Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    iput-object p5, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    return-void
.end method


# virtual methods
.method public final onCreateActions(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iput-boolean v1, v0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskOptionShown:Z

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->setOverrideDefaultActions(Z)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v1, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogItems()I

    move-result v1

    or-int/lit8 v2, v1, 0x4

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v2, "power"

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v1, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogItems()I

    move-result v1

    or-int/lit8 v2, v1, 0x40

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v2, "restart"

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v1, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogItems()I

    move-result v1

    or-int/lit16 v2, v1, 0x80

    if-ne v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v2, "emergency"

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v1, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogItems()I

    move-result v1

    or-int/lit16 v2, v1, 0x100

    if-ne v2, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v2, "bug_report"

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_BTN_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v1, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogOptionMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iput-boolean v0, v1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskOptionShown:Z

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v1, "pro_kiosk"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    goto :goto_0

    :cond_4
    invoke-interface {p1, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->setOverrideDefaultActions(Z)V

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_POWER_DIALOG_CUSTOM_ITEMS_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "knox_custom"

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->clearActions(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mKnoxCustomManagerWrapper:Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Lcom/android/systemui/globalactions/util/KnoxCustomManagerWrapper;->mKnoxCustomManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/SystemManager;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/custom/PowerItem;

    new-instance v4, Lcom/android/systemui/globalactions/util/PowerItemWrapper;

    invoke-direct {v4, v3}, Lcom/android/systemui/globalactions/util/PowerItemWrapper;-><init>(Lcom/samsung/android/knox/custom/PowerItem;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/globalactions/util/PowerItemWrapper;

    iget-object v3, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    invoke-interface {v3, p1, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v3

    iget-object v4, v2, Lcom/android/systemui/globalactions/util/PowerItemWrapper;->mPowerItem:Lcom/samsung/android/knox/custom/PowerItem;

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/PowerItem;->getIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setIcon(Landroid/graphics/drawable/BitmapDrawable;)V

    iget-object v2, v2, Lcom/android/systemui/globalactions/util/PowerItemWrapper;->mPowerItem:Lcom/samsung/android/knox/custom/PowerItem;

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/PowerItem;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setText(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/PowerItem;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/PowerItem;->getIntentAction()I

    move-result v2

    invoke-interface {v3, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setIntentAction(I)V

    invoke-interface {p1, v3}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final onCreateEmergencyAction()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_DO_PROVISIONING_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v0, Lcom/android/systemui/globalactions/util/SystemUIConditions;->PWD_CHANGE_ENFORCED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onInitialize(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_ALLOWED_SHOW_ACTIONS:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v0, "KnoxSDKStrategy"

    const-string v1, "Presenter has been locked by Knox SDK."

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->setDisabled()V

    :cond_0
    return-void
.end method

.method public final onKeyListenerAction(II)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->isActionConfirming()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-object v0, v0, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskManager:Lcom/samsung/android/knox/custom/ProKioskManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogOptionMode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/16 p1, 0x18

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mProKioskManagerWrapper:Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;

    iget-boolean p2, p1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskOptionShown:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/systemui/globalactions/util/ProKioskManagerWrapper;->mProKioskOptionShown:Z

    iget-object p1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v1, "pro_kiosk"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->getGlobalActionsView()Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->updateViewList()V

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/KnoxSDKStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->getGlobalActionsView()Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->forceRequestLayout()V

    return p2

    :cond_1
    :goto_0
    return v1
.end method
