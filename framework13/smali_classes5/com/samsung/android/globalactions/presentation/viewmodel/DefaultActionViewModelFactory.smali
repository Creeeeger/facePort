.class public Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;
.super Ljava/lang/Object;
.source "DefaultActionViewModelFactory.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;


# instance fields
.field private final blacklist mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field blacklist mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field private final blacklist mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

.field private final blacklist mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

.field blacklist mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/util/UtilFactory;Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V
    .locals 0
    .param p1, "defaultUtilFactory"    # Lcom/samsung/android/globalactions/util/UtilFactory;
    .param p2, "resourceFactory"    # Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;
    .param p3, "conditionChecker"    # Lcom/samsung/android/globalactions/util/ConditionChecker;
    .param p4, "samsungGlobalActionsAnalytics"    # Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    .line 38
    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    .line 39
    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 40
    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    .line 41
    return-void
.end method


# virtual methods
.method public blacklist createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .locals 18
    .param p1, "globalActions"    # Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;
    .param p2, "type"    # Ljava/lang/String;

    .line 58
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    new-instance v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-direct {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;-><init>()V

    move-object v13, v1

    .line 59
    .local v13, "actionInfo":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_TABLET_DEVICE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v14

    .line 60
    .local v14, "isTabletDevice":Z
    const/4 v15, 0x0

    .line 62
    .local v15, "descriptionResID":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "force_restart_message"

    const-string v3, "bug_report"

    const-string v10, "emergency"

    const-string/jumbo v9, "restart"

    const-string/jumbo v8, "power"

    const-string v7, "data_mode"

    const-string v4, "lock_down_mode"

    const-string v5, "logout"

    const-string/jumbo v6, "safe_mode"

    move/from16 v16, v15

    .end local v15    # "descriptionResID":I
    .local v16, "descriptionResID":I
    const-string v15, "emergency_call"

    move/from16 v17, v14

    .end local v14    # "isTabletDevice":Z
    .local v17, "isTabletDevice":Z
    const/4 v14, -0x1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_1
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_2
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_5
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_6
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_7
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_8
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_9
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :goto_0
    move v1, v14

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 223
    const/4 v1, 0x0

    return-object v1

    .line 208
    :pswitch_0
    new-instance v1, Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel;

    iget-object v2, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/HandlerUtil;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/HandlerUtil;

    iget-object v3, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 209
    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/LogWrapper;

    invoke-direct {v1, v11, v2, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/LogoutActionViewModel;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/HandlerUtil;Lcom/samsung/android/globalactions/util/LogWrapper;)V

    .line 211
    .local v1, "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    invoke-virtual {v13, v5}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    .line 212
    const v2, 0x1040591

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    .line 213
    iget-object v2, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ENDSESSION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    .line 214
    sget-object v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_3P_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 216
    invoke-interface {v1, v13}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V

    .line 217
    return-object v1

    .line 194
    .end local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    :pswitch_1
    new-instance v1, Lcom/samsung/android/globalactions/presentation/viewmodel/LockdownModeActionViewModel;

    iget-object v2, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    iget-object v3, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    .line 195
    invoke-interface {v3, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    invoke-direct {v1, v2, v3, v11}, Lcom/samsung/android/globalactions/presentation/viewmodel/LockdownModeActionViewModel;-><init>(Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V

    .line 198
    .restart local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    invoke-virtual {v13, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    .line 199
    const v2, 0x1040590

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    .line 200
    iget-object v2, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_LOCKDOWN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    .line 201
    sget-object v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_5P_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 203
    invoke-interface {v1, v13}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V

    .line 204
    return-object v1

    .line 177
    .end local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    :pswitch_2
    new-instance v10, Lcom/samsung/android/globalactions/presentation/viewmodel/DataModeActionViewModel;

    iget-object v3, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/SystemController;

    .line 179
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactions/util/SystemController;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    .line 180
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/globalactions/util/AlertDialogFactory;

    iget-object v8, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 182
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    .line 183
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    move-object v1, v10

    move-object/from16 v2, p1

    move-object v15, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v14

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/globalactions/presentation/viewmodel/DataModeActionViewModel;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/util/AlertDialogFactory;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;)V

    .line 185
    .restart local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    invoke-virtual {v13, v15}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    .line 186
    const v2, 0x10405a3

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    .line 187
    iget-object v2, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_DATAMODE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    .line 188
    sget-object v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_2P_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 190
    invoke-interface {v1, v13}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V

    .line 191
    return-object v1

    .line 165
    .end local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    :pswitch_3
    new-instance v1, Lcom/samsung/android/globalactions/presentation/viewmodel/ForceRestartMessageActionViewModel;

    invoke-direct {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ForceRestartMessageActionViewModel;-><init>()V

    .line 167
    .restart local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    .line 168
    const v2, 0x104058b

    iget-object v3, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->INTEGER_FORCE_RESTART_TIME:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 169
    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v3

    .line 168
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v13, v14}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    .line 171
    sget-object v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_FORCE_RESTART_MSG_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 173
    invoke-interface {v1, v13}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V

    .line 174
    return-object v1

    .line 152
    .end local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    :pswitch_4
    new-instance v1, Lcom/samsung/android/globalactions/presentation/viewmodel/BugReportActionViewModel;

    iget-object v2, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v4, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {v2, v4}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/SystemController;

    iget-object v4, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 153
    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    invoke-direct {v1, v11, v2, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/BugReportActionViewModel;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    .line 155
    .restart local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    invoke-virtual {v13, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    .line 156
    const v2, 0x1040be7

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    .line 157
    iget-object v2, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/util/SystemPropertiesWrapper;->getBugReportStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v13, v14}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    .line 159
    sget-object v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->BOTTOM_BTN_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 161
    invoke-interface {v1, v13}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V

    .line 162
    return-object v1

    .line 138
    .end local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    :pswitch_5
    new-instance v14, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;

    iget-object v3, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/SystemController;

    .line 139
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactions/util/SystemController;

    iget-object v6, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    .line 140
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 141
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    move-object v1, v14

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V

    .line 143
    .restart local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    invoke-virtual {v13, v10}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    .line 144
    const v2, 0x10405a4

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    .line 145
    iget-object v2, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_EMERGENCY:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    .line 146
    sget-object v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_4P_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 148
    invoke-interface {v1, v13}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V

    .line 149
    return-object v1

    .line 126
    .end local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    :pswitch_6
    new-instance v1, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;

    iget-object v2, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v3, Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    iget-object v4, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v5, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-interface {v4, v5}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/util/SystemController;

    invoke-direct {v1, v2, v11, v3, v4}, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyCallActionViewModel;-><init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;Lcom/samsung/android/globalactions/util/SystemController;)V

    .line 128
    .restart local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    invoke-virtual {v13, v15}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    .line 129
    const v2, 0x1040588

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    .line 130
    iget-object v2, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v3, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_EMERGENCY_CALL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    .line 131
    sget-object v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_4P_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 133
    invoke-interface {v1, v13}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V

    .line 134
    return-object v1

    .line 104
    .end local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    :pswitch_7
    new-instance v14, Lcom/samsung/android/globalactions/presentation/viewmodel/RestartActionViewModel;

    iget-object v3, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    .line 106
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    iget-object v6, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ToastController;

    .line 107
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    .line 108
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 109
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/UsageStatsWrapper;

    .line 110
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/samsung/android/globalactions/util/UsageStatsWrapper;

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v11, v9

    move-object v9, v10

    move-object v10, v15

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/globalactions/presentation/viewmodel/RestartActionViewModel;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/UsageStatsWrapper;)V

    .line 112
    .restart local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    invoke-virtual {v13, v11}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    .line 113
    const v2, 0x1040bec

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    .line 115
    if-eqz v17, :cond_1

    const v2, 0x1040582

    goto :goto_2

    .line 116
    :cond_1
    const v2, 0x1040581

    :goto_2
    nop

    .line 118
    .end local v16    # "descriptionResID":I
    .local v2, "descriptionResID":I
    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setDescription(Ljava/lang/String;)V

    .line 119
    iget-object v3, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_RESTART:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    .line 120
    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_3P_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v13, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 122
    invoke-interface {v1, v13}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V

    .line 123
    return-object v1

    .line 86
    .end local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .end local v2    # "descriptionResID":I
    .restart local v16    # "descriptionResID":I
    :pswitch_8
    new-instance v9, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    iget-object v4, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    .line 87
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 88
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ToastController;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v10, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v11, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V

    .line 90
    .restart local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    invoke-virtual {v13, v11}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    .line 91
    const v2, 0x104059a

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    .line 93
    if-eqz v17, :cond_2

    const v2, 0x1040584

    goto :goto_3

    .line 94
    :cond_2
    const v2, 0x1040583

    :goto_3
    nop

    .line 96
    .end local v16    # "descriptionResID":I
    .restart local v2    # "descriptionResID":I
    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setDescription(Ljava/lang/String;)V

    .line 97
    iget-object v3, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SAFEMODE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    .line 98
    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_1P_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v13, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 100
    invoke-interface {v1, v13}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V

    .line 101
    return-object v1

    .line 64
    .end local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .end local v2    # "descriptionResID":I
    .restart local v16    # "descriptionResID":I
    :pswitch_9
    new-instance v11, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;

    iget-object v3, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iget-object v4, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mSAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    .line 66
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    iget-object v6, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ToastController;

    .line 67
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    .line 68
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    .line 69
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iget-object v1, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Lcom/samsung/android/globalactions/util/UsageStatsWrapper;

    .line 70
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/samsung/android/globalactions/util/UsageStatsWrapper;

    move-object v1, v11

    move-object/from16 v2, p1

    move-object v15, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/globalactions/presentation/viewmodel/PowerActionViewModel;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/UsageStatsWrapper;)V

    .line 72
    .restart local v1    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    invoke-virtual {v13, v15}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setName(Ljava/lang/String;)V

    .line 73
    const v2, 0x1040beb

    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setLabel(Ljava/lang/String;)V

    .line 75
    if-eqz v17, :cond_3

    const v2, 0x1040580

    goto :goto_4

    .line 76
    :cond_3
    const v2, 0x104057f

    :goto_4
    nop

    .line 78
    .end local v16    # "descriptionResID":I
    .restart local v2    # "descriptionResID":I
    invoke-virtual {v0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->getResString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setDescription(Ljava/lang/String;)V

    .line 79
    iget-object v3, v0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mResourceFactory:Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;

    sget-object v4, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_POWEROFF:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    invoke-interface {v3, v4}, Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;->get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I

    move-result v3

    invoke-virtual {v13, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setIcon(I)V

    .line 80
    sget-object v3, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->CENTER_ICON_1P_VIEW:Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    invoke-virtual {v13, v3}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewType(Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;)V

    .line 82
    invoke-interface {v1, v13}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V

    .line 83
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a8dbfb4 -> :sswitch_9
        -0x436d1ceb -> :sswitch_8
        -0x4167ea76 -> :sswitch_7
        -0x218e16f4 -> :sswitch_6
        -0x15abc2e8 -> :sswitch_5
        0x65e8905 -> :sswitch_4
        0x416a9e0f -> :sswitch_3
        0x6118c591 -> :sswitch_2
        0x7cb9695f -> :sswitch_1
        0x7ff77083 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getResString(I)Ljava/lang/String;
    .locals 2
    .param p1, "resID"    # I

    .line 48
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getResString(II)Ljava/lang/String;
    .locals 5
    .param p1, "stringID"    # I
    .param p2, "intID"    # I

    .line 52
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v1, Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 53
    .local v0, "resInt":I
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mUtilFactory:Lcom/samsung/android/globalactions/util/UtilFactory;

    const-class v2, Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/UtilFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist setFeatureFactory(Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;)V
    .locals 0
    .param p1, "featureFactory"    # Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/DefaultActionViewModelFactory;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 45
    return-void
.end method
