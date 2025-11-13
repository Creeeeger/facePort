.class public Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;
.super Ljava/lang/Object;
.source "SamsungGlobalActionsPresenter.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;


# static fields
.field private static blacklist NOT_SIDE_KEY_MODELS:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SamsungGlobalActionsPresenter"

.field public static blacklist sViewPositionComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist mActionConfirming:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

.field public blacklist mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mBroadcastManager:Lcom/samsung/android/globalactions/util/BroadcastManager;

.field private final blacklist mContentObserverWrapper:Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

.field blacklist mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field public blacklist mIsDeviceProvisioned:Z

.field public blacklist mIsDisabled:Z

.field blacklist mIsKeyguardShowing:Z

.field blacklist mIsOverrideDefaultActions:Z

.field blacklist mIsRegistered:Z

.field public blacklist mIsShowing:Z

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

.field blacklist mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

.field blacklist mSideKeyType:I

.field blacklist mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field blacklist mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

.field private final blacklist mThemeChecker:Lcom/samsung/android/globalactions/util/ThemeChecker;

.field blacklist mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

.field blacklist mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

.field blacklist mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 36
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->NOT_SIDE_KEY_MODELS:I

    .line 405
    new-instance v0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->sViewPositionComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;Lcom/samsung/android/globalactions/util/BroadcastManager;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/ThemeChecker;Lcom/samsung/android/globalactions/util/ContentObserverWrapper;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V
    .locals 1
    .param p1, "view"    # Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;
    .param p2, "factory"    # Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;
    .param p3, "viewModelFactory"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;
    .param p4, "windowManagerFuncs"    # Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;
    .param p5, "broadcastManager"    # Lcom/samsung/android/globalactions/util/BroadcastManager;
    .param p6, "systemController"    # Lcom/samsung/android/globalactions/util/SystemController;
    .param p7, "conditionChecker"    # Lcom/samsung/android/globalactions/util/ConditionChecker;
    .param p8, "logWrapper"    # Lcom/samsung/android/globalactions/util/LogWrapper;
    .param p9, "themeChecker"    # Lcom/samsung/android/globalactions/util/ThemeChecker;
    .param p10, "contentObserverWrapper"    # Lcom/samsung/android/globalactions/util/ContentObserverWrapper;
    .param p11, "samsungGlobalActionsAnalytics"    # Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    .line 71
    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 72
    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    .line 73
    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActions:Ljava/util/List;

    .line 77
    iput-object p8, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 78
    iput-object p5, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactions/util/BroadcastManager;

    .line 79
    iput-object p6, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    .line 81
    iput-object p7, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 83
    iput-object p9, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mThemeChecker:Lcom/samsung/android/globalactions/util/ThemeChecker;

    .line 85
    iput-object p10, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mContentObserverWrapper:Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    .line 86
    iput-object p11, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    .line 87
    return-void
.end method

.method static synthetic blacklist lambda$clearActions$0(Ljava/lang/String;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)Z
    .locals 1
    .param p0, "actionName"    # Ljava/lang/String;
    .param p1, "action"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 313
    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$registerSecureConfirmAction$3(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0
    .param p0, "viewModel"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 351
    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onPressSecureConfirm()V

    return-void
.end method

.method static synthetic blacklist lambda$static$4(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)I
    .locals 2
    .param p0, "p1"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    .param p1, "p2"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 405
    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->getValue()I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getViewType()Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ViewType;->getValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 3
    .param p1, "action"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 299
    if-eqz p1, :cond_0

    .line 300
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAction ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungGlobalActionsPresenter"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_0
    return-void
.end method

.method public blacklist clearActions(Ljava/lang/String;)V
    .locals 2
    .param p1, "actionName"    # Ljava/lang/String;

    .line 312
    new-instance v0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "actionPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;>;"
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 315
    return-void
.end method

.method public blacklist clearCoverStateChange()V
    .locals 3

    .line 432
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsPresenter"

    const-string v2, "clearCoverStateChange()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SystemController;->clearCoverStateChange()V

    .line 434
    return-void
.end method

.method public blacklist confirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 1
    .param p1, "viewModel"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 357
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0, p1}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->showActionConfirming(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 358
    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActionConfirming:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 359
    const-string v0, "GlobalActions$ConfirmDialog"

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->hideQuickPanel(Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public blacklist confirmSafeMode(I)V
    .locals 2
    .param p1, "index"    # I

    .line 387
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "safe_mode"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    .line 389
    .local v0, "safeModeViewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    if-eqz v0, :cond_0

    .line 390
    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewIndex(I)V

    .line 391
    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->confirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 393
    :cond_0
    return-void
.end method

.method public blacklist createActions()V
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createActionsCreationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;

    move-result-object v0

    .line 108
    .local v0, "actionsCreationStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;

    .line 109
    .local v2, "decorator":Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;
    invoke-interface {v2, p0}, Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;->onCreateActions(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V

    .line 110
    .end local v2    # "decorator":Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;
    goto :goto_0

    .line 112
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsOverrideDefaultActions:Z

    if-nez v1, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->createDefaultActions()V

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createActionUpdateStrategies()Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, "actionUpdateStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/globalactions/presentation/strategies/ActionUpdateStrategy;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/presentation/strategies/ActionUpdateStrategy;

    .line 118
    .local v3, "strategy":Lcom/samsung/android/globalactions/presentation/strategies/ActionUpdateStrategy;
    iget-object v4, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 119
    .local v5, "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    invoke-interface {v3, v5}, Lcom/samsung/android/globalactions/presentation/strategies/ActionUpdateStrategy;->onUpdateAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 120
    .end local v5    # "viewModel":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    goto :goto_2

    .line 121
    .end local v3    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/ActionUpdateStrategy;
    :cond_2
    goto :goto_1

    .line 122
    :cond_3
    return-void
.end method

.method public blacklist createDefaultActions()V
    .locals 6

    .line 125
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsPresenter"

    const-string v2, "createDefaultActions()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "power"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "restart"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    .line 131
    const-string v1, "bug_report"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 134
    .local v0, "creationStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;>;"
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_BUG_REPORT_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 135
    const/4 v2, 0x0

    .line 137
    .local v2, "skipBugReport":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;

    .line 138
    .local v4, "strategy":Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;
    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;->onCreateBugReportAction()Z

    move-result v5

    if-nez v5, :cond_0

    .line 139
    const/4 v2, 0x1

    .line 140
    goto :goto_1

    .line 142
    .end local v4    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;
    :cond_0
    goto :goto_0

    .line 144
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 145
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    invoke-interface {v3, p0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 149
    .end local v2    # "skipBugReport":Z
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_LOGOUT_ENABLED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_DEVICE_OWNER:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 150
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v2, "logout"

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 154
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_EMERGENCY_CALL:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 155
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    const-string v2, "emergency_call"

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, "skipEmergencyCall":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;

    .line 159
    .restart local v4    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;
    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;->onCreateEmergencyCallAction()Z

    move-result v5

    if-nez v5, :cond_4

    .line 160
    const/4 v1, 0x1

    .line 161
    goto :goto_3

    .line 163
    .end local v4    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;
    :cond_4
    goto :goto_2

    .line 165
    :cond_5
    :goto_3
    if-nez v1, :cond_6

    .line 166
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    invoke-interface {v3, p0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 170
    .end local v1    # "skipEmergencyCall":Z
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_EMERGENCY_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 171
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    const-string v2, "emergency"

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 172
    const/4 v1, 0x0

    .line 174
    .local v1, "skipEmergencyMode":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;

    .line 175
    .restart local v4    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;
    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;->onCreateEmergencyAction()Z

    move-result v5

    if-nez v5, :cond_7

    .line 176
    const/4 v1, 0x1

    .line 177
    goto :goto_5

    .line 179
    .end local v4    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;
    :cond_7
    goto :goto_4

    .line 181
    :cond_8
    :goto_5
    if-nez v1, :cond_9

    .line 182
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    invoke-interface {v3, p0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    .line 185
    .end local v1    # "skipEmergencyMode":Z
    :cond_9
    return-void
.end method

.method public blacklist createOnKeyListenerActions(Landroid/view/KeyEvent;I)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "keyCode"    # I

    .line 188
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createOnKeyListenerStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;

    move-result-object v0

    .line 190
    .local v0, "strategies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;>;"
    const/4 v1, 0x0

    .line 192
    .local v1, "doAtLestOneAction":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;

    .line 193
    .local v3, "strategy":Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-interface {v3, v4, p2}, Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;->onKeyListenerAction(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 194
    const/4 v1, 0x1

    .line 196
    .end local v3    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;
    :cond_0
    goto :goto_0

    .line 197
    :cond_1
    return v1
.end method

.method public blacklist dismissDialog(Z)V
    .locals 1
    .param p1, "withAnimation"    # Z

    .line 378
    if-eqz p1, :cond_0

    .line 379
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismissWithAnimation()V

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    .line 383
    :goto_0
    return-void
.end method

.method public blacklist dispose()V
    .locals 3

    .line 290
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createDisposingStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;

    move-result-object v0

    .line 292
    .local v0, "strategies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;

    .line 293
    .local v2, "strategy":Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;
    invoke-interface {v2}, Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;->onDispose()V

    .line 294
    .end local v2    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;
    goto :goto_0

    .line 295
    :cond_0
    return-void
.end method

.method public blacklist getGlobalActionsView()Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    return-object v0
.end method

.method public blacklist getSideKeyType()I
    .locals 1

    .line 438
    iget v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSideKeyType:I

    return v0
.end method

.method public blacklist getValidActions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;>;"
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 411
    .local v2, "vm":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    iget-boolean v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsDeviceProvisioned:Z

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->showBeforeProvisioning()Z

    move-result v3

    if-nez v3, :cond_0

    .line 412
    goto :goto_0

    .line 415
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    .end local v2    # "vm":Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;
    goto :goto_0

    .line 418
    :cond_1
    sget-object v1, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->sViewPositionComparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 419
    return-object v0
.end method

.method public blacklist hideDialogOnSecureConfirm()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->hideDialogOnSecureConfirm()V

    .line 398
    return-void
.end method

.method public blacklist hideQuickPanel()V
    .locals 1

    .line 423
    const-string v0, "GlobalActions"

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->hideQuickPanel(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public blacklist hideQuickPanel(Ljava/lang/String;)V
    .locals 3
    .param p1, "sender"    # Ljava/lang/String;

    .line 427
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideQuickPanelBackground("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SamsungGlobalActionsPresenter"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/globalactions/util/SystemController;->hideQuickPanel(Ljava/lang/String;)V

    .line 429
    return-void
.end method

.method public blacklist initialize()V
    .locals 4

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsShowing:Z

    .line 92
    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsOverrideDefaultActions:Z

    .line 93
    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsRegistered:Z

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActionConfirming:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createInitializationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;

    move-result-object v0

    .line 99
    .local v0, "initStrategies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;

    .line 100
    .local v2, "decorator":Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;
    iget-boolean v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsKeyguardShowing:Z

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;->onInitialize(Z)V

    .line 101
    .end local v2    # "decorator":Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public blacklist isActionConfirming()Z
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActionConfirming:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isDeviceProvisioned()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsDeviceProvisioned:Z

    return v0
.end method

.method public blacklist isDisabled()Z
    .locals 1

    .line 211
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsDisabled:Z

    return v0
.end method

.method public blacklist isKeyguardShowing()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsKeyguardShowing:Z

    return v0
.end method

.method synthetic blacklist lambda$onShowDialog$1$com-samsung-android-globalactions-presentation-SamsungGlobalActionsPresenter()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    return-void
.end method

.method synthetic blacklist lambda$onShowDialog$2$com-samsung-android-globalactions-presentation-SamsungGlobalActionsPresenter()V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismissWithAnimation()V

    return-void
.end method

.method public blacklist onCancelDialog()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsPresenter"

    const-string v2, "onCancelDialog()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->isActionConfirming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActionConfirming:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 367
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->cancelConfirming()V

    .line 368
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactions/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/BroadcastManager;->unregisterSecureConfirmBroadcastReceiver()V

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsRegistered:Z

    goto :goto_0

    .line 371
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->dismissDialog(Z)V

    .line 372
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->clearCoverStateChange()V

    .line 374
    :goto_0
    return-void
.end method

.method public blacklist onDismiss()V
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->dispose()V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->onGlobalActionsHidden()V

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsShowing:Z

    .line 282
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactions/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/BroadcastManager;->unregisterDismissBroadcastReceiver()V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactions/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/BroadcastManager;->unregisterSecureConfirmBroadcastReceiver()V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mThemeChecker:Lcom/samsung/android/globalactions/util/ThemeChecker;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/ThemeChecker;->reset()V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mContentObserverWrapper:Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;->unregisterObservers()V

    .line 286
    return-void
.end method

.method public blacklist onPrepareWindow()V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createWindowDecorationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;

    move-result-object v0

    .line 271
    .local v0, "strategies":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;

    .line 272
    .local v2, "strategy":Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v3, v2}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->addWindowDecorator(Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;)V

    .line 273
    .end local v2    # "strategy":Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;
    goto :goto_0

    .line 274
    :cond_0
    return-void
.end method

.method public blacklist onShowDialog()V
    .locals 9

    .line 324
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsPresenter"

    const-string v2, "onShowDialog()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSideKeyType:I

    sget v1, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->NOT_SIDE_KEY_MODELS:I

    if-eq v0, v1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->SUPPORT_SECONDARY_DISPLAY_AS_COVER:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FOLDED:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 328
    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    const-string v1, "503"

    const-string v2, "5021"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 331
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    iget v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSideKeyType:I

    int-to-long v7, v0

    const-string v4, "611"

    const-string v5, "6133"

    const-string v6, "Side key type"

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 337
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->onGlobalActionsShown()V

    .line 338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsShowing:Z

    .line 339
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactions/util/BroadcastManager;

    new-instance v1, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V

    new-instance v2, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/BroadcastManager;->registerDismissActions(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method public blacklist onStart(ZZZI)Z
    .locals 3
    .param p1, "keyguardShowing"    # Z
    .param p2, "deviceProvisioned"    # Z
    .param p3, "fromSystemServer"    # Z
    .param p4, "sideKeyType"    # I

    .line 230
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsPresenter"

    const-string v2, "onStart()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iput p4, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSideKeyType:I

    .line 233
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->onGlobalActionsHidden()V

    .line 235
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->onGlobalActionsShown()V

    .line 239
    if-eqz p3, :cond_0

    .line 240
    invoke-virtual {p0, v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->dismissDialog(Z)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->dismissDialog(Z)V

    .line 245
    :goto_0
    return v2

    .line 248
    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsKeyguardShowing:Z

    .line 249
    iput-boolean p2, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsDeviceProvisioned:Z

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->initialize()V

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    iput-boolean v2, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsDisabled:Z

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->dispose()V

    .line 258
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->onGlobalActionsShown()V

    .line 259
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->onGlobalActionsHidden()V

    .line 260
    return v2

    .line 263
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->createActions()V

    .line 265
    return v1
.end method

.method public blacklist registerContentObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .line 402
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mContentObserverWrapper:Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;->registerObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method public blacklist registerSecureConfirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 2
    .param p1, "viewModel"    # Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    .line 349
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsRegistered:Z

    if-nez v0, :cond_0

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsRegistered:Z

    .line 351
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactions/util/BroadcastManager;

    new-instance v1, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/BroadcastManager;->registerSecureConfirmAction(Ljava/lang/Runnable;)V

    .line 353
    :cond_0
    return-void
.end method

.method public blacklist setDisabled()V
    .locals 1

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsDisabled:Z

    .line 217
    return-void
.end method

.method public blacklist setKeyguardShowing(Z)V
    .locals 0
    .param p1, "keyguardShowing"    # Z

    .line 225
    iput-boolean p1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsKeyguardShowing:Z

    .line 226
    return-void
.end method

.method public blacklist setOverrideDefaultActions(Z)V
    .locals 0
    .param p1, "overrideDefault"    # Z

    .line 307
    iput-boolean p1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsOverrideDefaultActions:Z

    .line 308
    return-void
.end method
