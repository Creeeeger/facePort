.class public Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;
.super Ljava/lang/Object;
.source "PowerActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final blacklist LONG_PRESS_TIME:I

.field private final blacklist mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private blacklist mExtraInfo:Ljava/lang/String;

.field private final blacklist mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field private final blacklist mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

.field blacklist mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field private blacklist mIsCalledFromSecureLock:Z

.field private blacklist mIsLockNetworkAndSecurity:Z

.field private blacklist mIsRMMLocked:Z

.field private blacklist mIsSIMLocked:Z

.field private blacklist mIsSecureKeyguard:Z

.field private final blacklist mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

.field private final blacklist mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

.field private final blacklist mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

.field private final blacklist mToastController:Lcom/samsung/android/globalactions/util/ToastController;

.field private final blacklist mUsageStatsWrapper:Lcom/samsung/android/globalactions/util/UsageStatsWrapper;

.field private final blacklist mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/UsageStatsWrapper;)V
    .locals 1
    .param p1, "globalActions"    # Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;
    .param p2, "conditionChecker"    # Lcom/samsung/android/globalactions/util/ConditionChecker;
    .param p3, "samsungGlobalActionsAnalytics"    # Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;
    .param p4, "windowManagerFuncs"    # Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;
    .param p5, "featureFactory"    # Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;
    .param p6, "toastController"    # Lcom/samsung/android/globalactions/util/ToastController;
    .param p7, "keyguardManagerWrapper"    # Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;
    .param p8, "resourcesWrapper"    # Lcom/samsung/android/globalactions/util/ResourcesWrapper;
    .param p9, "usageStatsWrapper"    # Lcom/samsung/android/globalactions/util/UsageStatsWrapper;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->LONG_PRESS_TIME:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsRMMLocked:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsSIMLocked:Z

    .line 35
    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsSecureKeyguard:Z

    .line 36
    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsLockNetworkAndSecurity:Z

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsCalledFromSecureLock:Z

    .line 51
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 52
    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 53
    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    .line 54
    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    .line 55
    iput-object p5, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 56
    iput-object p6, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    .line 57
    iput-object p7, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    .line 58
    iput-object p8, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 59
    iput-object p9, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mUsageStatsWrapper:Lcom/samsung/android/globalactions/util/UsageStatsWrapper;

    .line 60
    return-void
.end method

.method private blacklist isNeedSecureConfirm()Z
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_RMM_LOCKED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsRMMLocked:Z

    .line 190
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsSecureKeyguard:Z

    .line 191
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_LOCK_NETWORK_AND_SECURITY:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsLockNetworkAndSecurity:Z

    .line 192
    iget-boolean v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsRMMLocked:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsSecureKeyguard:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist shutdown()V
    .locals 9

    .line 168
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    const-string v2, "SHUTDOWN"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createWindowManagerFunctionStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 171
    .local v0, "strategies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/globalactions/presentation/strategies/WindowManagerFunctionStrategy;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/presentation/strategies/WindowManagerFunctionStrategy;

    .line 172
    .local v2, "strategy":Lcom/samsung/android/globalactions/presentation/strategies/WindowManagerFunctionStrategy;
    invoke-interface {v2}, Lcom/samsung/android/globalactions/presentation/strategies/WindowManagerFunctionStrategy;->onShutdown()V

    .line 173
    .end local v2    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/WindowManagerFunctionStrategy;
    goto :goto_0

    .line 175
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mExtraInfo:Ljava/lang/String;

    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsRMMLocked:Z

    if-eqz v2, :cond_1

    const-string v2, "(RMM"

    goto :goto_1

    :cond_1
    const-string v2, "(rmm"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mExtraInfo:Ljava/lang/String;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsSIMLocked:Z

    if-eqz v2, :cond_2

    const-string v2, " SIM"

    goto :goto_2

    :cond_2
    const-string v2, " sim"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mExtraInfo:Ljava/lang/String;

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsSecureKeyguard:Z

    if-eqz v2, :cond_3

    const-string v2, " SECURE"

    goto :goto_3

    :cond_3
    const-string v2, " secure"

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mExtraInfo:Ljava/lang/String;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsLockNetworkAndSecurity:Z

    if-eqz v2, :cond_4

    const-string v2, " NAS"

    goto :goto_4

    :cond_4
    const-string v2, " nas"

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mExtraInfo:Ljava/lang/String;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mExtraInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsCalledFromSecureLock:Z

    if-eqz v2, :cond_5

    const-string v2, " LOCK)"

    goto :goto_5

    :cond_5
    const-string v2, " lock)"

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mExtraInfo:Ljava/lang/String;

    .line 182
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mUsageStatsWrapper:Lcom/samsung/android/globalactions/util/UsageStatsWrapper;

    invoke-virtual {v2, v1}, Lcom/samsung/android/globalactions/util/UsageStatsWrapper;->shutdownDump(Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    const-wide/16 v7, 0x1

    const-string v4, "611"

    const-string v5, "6111"

    const-string v6, "Power off"

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 185
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->shutdown()V

    .line 186
    return-void
.end method


# virtual methods
.method public blacklist getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public blacklist getLongPressTime()I
    .locals 1

    .line 73
    const/16 v0, 0x5dc

    return v0
.end method

.method public blacklist onLongPress()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 144
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

    .line 145
    .local v2, "strategy":Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;
    invoke-interface {v2}, Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;->onLongPressPowerAction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    return-void

    .line 148
    .end local v2    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;
    :cond_0
    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_ALLOWED_SAFE_BOOT:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewIndex()I

    move-result v1

    .line 152
    .local v1, "index":I
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v2, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->confirmSafeMode(I)V

    .line 154
    .end local v1    # "index":I
    :cond_2
    return-void
.end method

.method public blacklist onPress()V
    .locals 9

    .line 77
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 79
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

    .line 80
    .local v2, "strategy":Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;
    invoke-interface {v2}, Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;->onPressPowerAction()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    return-void

    .line 83
    .end local v2    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;
    :cond_0
    goto :goto_0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->isActionConfirming()Z

    move-result v1

    const-string v2, "503"

    if-nez v1, :cond_3

    .line 86
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactions/util/SystemConditions;->SUPPORT_SECONDARY_DISPLAY_AS_COVER:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FOLDED:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 87
    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    const-string v3, "5019"

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v1, p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->confirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 92
    return-void

    .line 95
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FMM_LOCKED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 96
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_TABLET_DEVICE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 97
    const v1, 0x10405ba

    goto :goto_1

    .line 98
    :cond_4
    const v1, 0x10405b9

    :goto_1
    nop

    .line 99
    .local v1, "res":I
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-virtual {v3, v1}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    .line 100
    return-void

    .line 103
    .end local v1    # "res":I
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createSecureConfirmStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 104
    .local v1, "secureConfirmStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;>;"
    const/4 v3, 0x0

    .line 108
    .local v3, "hasCondition":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;

    .line 109
    .local v5, "strategy":Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;
    invoke-interface {v5}, Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;->hasSecureConfirmCondition()Z

    move-result v6

    or-int/2addr v3, v6

    .line 110
    .end local v5    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;
    goto :goto_2

    .line 111
    :cond_6
    if-eqz v3, :cond_8

    .line 112
    const/4 v4, 0x1

    .line 113
    .local v4, "needSecureConfirm":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;

    .line 114
    .local v6, "strategy":Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;
    invoke-interface {v6}, Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;->isNeedSecureConfirm()Z

    move-result v7

    and-int/2addr v4, v7

    .line 115
    .end local v6    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;
    goto :goto_3

    :cond_7
    goto :goto_4

    .line 117
    .end local v4    # "needSecureConfirm":Z
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->isNeedSecureConfirm()Z

    move-result v4

    .line 120
    .restart local v4    # "needSecureConfirm":Z
    :goto_4
    if-eqz v4, :cond_b

    .line 121
    const/4 v5, 0x1

    .line 122
    .local v5, "isNeedToRegister":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;

    .line 123
    .local v7, "strategy":Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;
    iget-object v8, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v7, p0, v8}, Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;->doActionBeforeSecureConfirm(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Z

    move-result v8

    and-int/2addr v5, v8

    .line 124
    .end local v7    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;
    goto :goto_5

    .line 125
    :cond_9
    if-eqz v5, :cond_b

    .line 126
    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v6, p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->registerSecureConfirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 127
    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    const-string/jumbo v7, "shutdown"

    invoke-virtual {v6, v7}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setPendingIntentAfterUnlock(Ljava/lang/String;)V

    .line 128
    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v6}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->hideDialogOnSecureConfirm()V

    .line 129
    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v7, Lcom/samsung/android/globalactions/util/SystemConditions;->SUPPORT_SECONDARY_DISPLAY_AS_COVER:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v6, v7}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v7, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FOLDED:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 130
    invoke-interface {v6, v7}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 131
    iget-object v6, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    const-string v7, "5025"

    invoke-interface {v6, v2, v7}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_a
    return-void

    .line 137
    .end local v5    # "isNeedToRegister":Z
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->shutdown()V

    .line 138
    return-void
.end method

.method public blacklist onPressSecureConfirm()V
    .locals 1

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mIsCalledFromSecureLock:Z

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->shutdown()V

    .line 165
    return-void
.end method

.method public blacklist setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 69
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    .line 70
    return-void
.end method

.method public blacklist showBeforeProvisioning()Z
    .locals 1

    .line 158
    const/4 v0, 0x1

    return v0
.end method
