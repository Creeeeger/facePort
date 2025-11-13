.class public Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;
.super Ljava/lang/Object;
.source "EmergencyActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final blacklist mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final blacklist mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field private final blacklist mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

.field private blacklist mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field private final blacklist mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

.field private final blacklist mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

.field private final blacklist mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

.field private final blacklist mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

.field private final blacklist mToastController:Lcom/samsung/android/globalactions/util/ToastController;

.field private blacklist mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V
    .locals 0
    .param p1, "globalActions"    # Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;
    .param p2, "conditionChecker"    # Lcom/samsung/android/globalactions/util/ConditionChecker;
    .param p3, "samsungGlobalActionsAnalytics"    # Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;
    .param p4, "systemController"    # Lcom/samsung/android/globalactions/util/SystemController;
    .param p5, "featureFactory"    # Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;
    .param p6, "keyGuardManagerWrapper"    # Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;
    .param p7, "toastController"    # Lcom/samsung/android/globalactions/util/ToastController;
    .param p8, "resourcesWrapper"    # Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    .line 42
    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 44
    iput-object p5, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 45
    iput-object p6, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 47
    iput-object p7, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    .line 48
    iput-object p8, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 49
    return-void
.end method

.method private blacklist isNeedSecureConfirm()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_RMM_LOCKED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 148
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_LOCK_NETWORK_AND_SECURITY:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 149
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public blacklist getState()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    return-object v0
.end method

.method public blacklist onPress()V
    .locals 9

    .line 84
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "strategies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;

    .line 87
    .local v2, "strategy":Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;
    invoke-interface {v2}, Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;->onPressEmergencyModeAction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    return-void

    .line 90
    .end local v2    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;
    :cond_0
    goto :goto_0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FMM_LOCKED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 94
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->off:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    if-ne v1, v3, :cond_3

    .line 95
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_TABLET_DEVICE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    const v1, 0x10405b5

    goto :goto_1

    .line 97
    :cond_2
    const v1, 0x10405b4

    :goto_1
    nop

    .local v1, "res":I
    goto :goto_3

    .line 99
    .end local v1    # "res":I
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_TABLET_DEVICE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    const v1, 0x10405b7

    goto :goto_2

    .line 101
    :cond_4
    const v1, 0x10405b6

    :goto_2
    nop

    .line 103
    .restart local v1    # "res":I
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-virtual {v4, v1}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    .line 104
    return-void

    .line 107
    .end local v1    # "res":I
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_BIKE_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_EMERGENCY_MODE_USER_AGREEMENT:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 108
    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 109
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v3, 0x10405a4

    invoke-virtual {v1, v3}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "emergencyModeText":Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v4, 0x10405ad

    invoke-virtual {v3, v4}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "sBikeModeText":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v5, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v6, 0x10405b3

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    aput-object v3, v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    .line 116
    return-void

    .line 119
    .end local v1    # "emergencyModeText":Ljava/lang/String;
    .end local v3    # "sBikeModeText":Ljava/lang/String;
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->isNeedSecureConfirm()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 120
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createSecureConfirmStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 121
    .local v1, "secureConfirmStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;

    .line 122
    .local v3, "strategy":Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v3, p0, v4}, Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;->doActionBeforeSecureConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Z

    .line 123
    .end local v3    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;
    goto :goto_4

    .line 124
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v2, p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->registerSecureConfirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 125
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    const-string v3, "emergencymode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setPendingIntentAfterUnlock(Ljava/lang/String;)V

    .line 126
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->hideDialogOnSecureConfirm()V

    .line 127
    return-void

    .line 130
    .end local v1    # "secureConfirmStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;>;"
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    .line 131
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    const-wide/16 v7, 0x3

    const-string v4, "611"

    const-string v5, "6111"

    const-string v6, "Emergency mode"

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 134
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/util/SystemController;->toggleEmergencyMode()V

    .line 135
    return-void
.end method

.method public blacklist onPressSecureConfirm()V
    .locals 8

    .line 139
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->dismissDialog(Z)V

    .line 140
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    const-string v3, "611"

    const-string v4, "6111"

    const-string v5, "Emergency mode"

    const-wide/16 v6, 0x3

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SystemController;->toggleEmergencyMode()V

    .line 144
    return-void
.end method

.method public blacklist setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 58
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->setStateLabel()V

    .line 60
    return-void
.end method

.method public blacklist setState(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;)V
    .locals 0
    .param p1, "toggleState"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    .line 74
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    .line 75
    return-void
.end method

.method public blacklist setStateLabel()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_EMERGENCY_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->on:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    .line 65
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v2, 0x104058a

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_0
    sget-object v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->off:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    .line 68
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v2, 0x1040589

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void
.end method
