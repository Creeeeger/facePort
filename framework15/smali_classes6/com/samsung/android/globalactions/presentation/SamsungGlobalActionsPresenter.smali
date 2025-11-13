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
.method public static synthetic blacklist $r8$lambda$g2WA0c5AaWGdJWXODPN_lM36sUs(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->lambda$onShowDialog$2()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$kcjJD9gqhItJuRvvGeclsx0ezVc(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->lambda$onShowDialog$1()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->NOT_SIDE_KEY_MODELS:I

    new-instance v0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->sViewPositionComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;Lcom/samsung/android/globalactions/util/BroadcastManager;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;Lcom/samsung/android/globalactions/util/ThemeChecker;Lcom/samsung/android/globalactions/util/ContentObserverWrapper;Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActions:Ljava/util/List;

    iput-object p8, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    iput-object p5, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactions/util/BroadcastManager;

    iput-object p6, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    iput-object p7, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p9, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mThemeChecker:Lcom/samsung/android/globalactions/util/ThemeChecker;

    iput-object p10, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mContentObserverWrapper:Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    iput-object p11, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    return-void
.end method

.method static synthetic blacklist lambda$clearActions$0(Ljava/lang/String;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)Z
    .locals 1

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private synthetic blacklist lambda$onShowDialog$1()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    return-void
.end method

.method private synthetic blacklist lambda$onShowDialog$2()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismissWithAnimation()V

    return-void
.end method

.method static synthetic blacklist lambda$registerSecureConfirmAction$3(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onPressSecureConfirm()V

    return-void
.end method

.method static synthetic blacklist lambda$static$4(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)I
    .locals 2

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

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    :cond_0
    return-void
.end method

.method public blacklist clearActions(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public blacklist clearCoverStateChange()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsPresenter"

    const-string v2, "clearCoverStateChange()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SystemController;->clearCoverStateChange()V

    return-void
.end method

.method public blacklist confirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0, p1}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->showActionConfirming(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActionConfirming:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    const-string v0, "GlobalActions$ConfirmDialog"

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->hideQuickPanel(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist confirmSafeMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v1, "safe_mode"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setViewIndex(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->confirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_0
    return-void
.end method

.method public blacklist createActions()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createActionsCreationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;

    invoke-interface {v2, p0}, Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;->onCreateActions(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsOverrideDefaultActions:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->createDefaultActions()V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v1}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createActionUpdateStrategies()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/presentation/strategies/ActionUpdateStrategy;

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

    invoke-interface {v3, v5}, Lcom/samsung/android/globalactions/presentation/strategies/ActionUpdateStrategy;->onUpdateAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    goto :goto_2

    :cond_2
    goto :goto_1

    :cond_3
    return-void
.end method

.method public blacklist createDefaultActions()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsPresenter"

    const-string v2, "createDefaultActions()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v1, "power"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v1, "restart"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    const-string v1, "bug_report"

    invoke-interface {v0, p0, v1}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v3, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_BUG_REPORT_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;->onCreateBugReportAction()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    invoke-interface {v3, p0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_LOGOUT_ENABLED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_DEVICE_OWNER:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v2, "logout"

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_EMERGENCY_CALL:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    const-string v2, "emergency_call"

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;->onCreateEmergencyCallAction()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    goto :goto_2

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    invoke-interface {v3, p0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_MEDICAL_INFO:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_EMERGENCY_CALL:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    const-string v2, "medical_info"

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;->onCreateMedicalInfoAction()Z

    move-result v5

    if-nez v5, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    goto :goto_4

    :cond_8
    :goto_5
    if-nez v1, :cond_9

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    invoke-interface {v3, p0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SUPPORT_EMERGENCY_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    const-string v2, "emergency"

    invoke-interface {v1, p0, v2}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createDefaultActionsCreationStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;

    invoke-interface {v4}, Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;->onCreateEmergencyAction()Z

    move-result v5

    if-nez v5, :cond_a

    const/4 v1, 0x1

    goto :goto_7

    :cond_a
    goto :goto_6

    :cond_b
    :goto_7
    if-nez v1, :cond_c

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    invoke-interface {v3, p0, v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_c
    return-void
.end method

.method public blacklist createOnKeyListenerActions(Landroid/view/KeyEvent;I)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createOnKeyListenerStrategy(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    invoke-interface {v3, v4, p2}, Lcom/samsung/android/globalactions/presentation/strategies/OnKeyListenerStrategy;->onKeyListenerAction(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    return v1
.end method

.method public blacklist dismissDialog(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismissWithAnimation()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsRegistered:Z

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    :goto_0
    return-void
.end method

.method public blacklist dispose()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createDisposingStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;

    invoke-interface {v2}, Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;->onDispose()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist getGlobalActionsView()Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    return-object v0
.end method

.method public blacklist getSideKeyType()I
    .locals 1

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    iget-boolean v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsDeviceProvisioned:Z

    if-nez v3, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->showBeforeProvisioning()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->sViewPositionComparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public blacklist hideDialogOnSecureConfirm()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->hideDialogOnSecureConfirm()V

    return-void
.end method

.method public blacklist hideQuickPanel()V
    .locals 1

    const-string v0, "GlobalActions"

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->hideQuickPanel(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist hideQuickPanel(Ljava/lang/String;)V
    .locals 3

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

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/globalactions/util/SystemController;->hideQuickPanel(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist initialize()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsShowing:Z

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsOverrideDefaultActions:Z

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsRegistered:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActionConfirming:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createInitializationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;

    iget-boolean v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsKeyguardShowing:Z

    invoke-interface {v2, v3}, Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;->onInitialize(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist isActionConfirming()Z
    .locals 1

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

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsDeviceProvisioned:Z

    return v0
.end method

.method public blacklist isDisabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsDisabled:Z

    return v0
.end method

.method public blacklist isKeyguardShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsKeyguardShowing:Z

    return v0
.end method

.method public blacklist onCancelDialog()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsPresenter"

    const-string v2, "onCancelDialog()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->isActionConfirming()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mActionConfirming:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->cancelConfirming()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactions/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/BroadcastManager;->unregisterSecureConfirmBroadcastReceiver()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsRegistered:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->dismissDialog(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->clearCoverStateChange()V

    :goto_0
    return-void
.end method

.method public blacklist onDismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->dispose()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->onGlobalActionsHidden()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsShowing:Z

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactions/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/BroadcastManager;->unregisterDismissBroadcastReceiver()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactions/util/BroadcastManager;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/BroadcastManager;->unregisterSecureConfirmBroadcastReceiver()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mThemeChecker:Lcom/samsung/android/globalactions/util/ThemeChecker;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/ThemeChecker;->reset()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mContentObserverWrapper:Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;->unregisterObservers()V

    return-void
.end method

.method public blacklist onPrepareWindow()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createWindowDecorationStrategies(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v3, v2}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->addWindowDecorator(Lcom/samsung/android/globalactions/presentation/strategies/WindowDecorationStrategy;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onShowDialog()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsPresenter"

    const-string v2, "onShowDialog()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSideKeyType:I

    sget v1, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->NOT_SIDE_KEY_MODELS:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->SUPPORT_SECONDARY_DISPLAY_AS_COVER:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSystemCondition:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FOLDED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    const-string v1, "503"

    const-string v2, "5021"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSamsungGlobalActionsAnalytics:Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;

    iget v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSideKeyType:I

    int-to-long v7, v0

    const-string v4, "611"

    const-string v5, "6133"

    const-string v6, "Side key type"

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/globalactions/util/SamsungGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->onGlobalActionsShown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsShowing:Z

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactions/util/BroadcastManager;

    new-instance v1, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V

    new-instance v2, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/BroadcastManager;->registerDismissActions(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->hideQuickPanel()V

    return-void
.end method

.method public blacklist onStart(ZZZI)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SamsungGlobalActionsPresenter"

    const-string v2, "onStart()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p4, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mSideKeyType:I

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->onGlobalActionsHidden()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->onGlobalActionsShown()V

    if-eqz p3, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->dismissDialog(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->dismissDialog(Z)V

    :goto_0
    return v2

    :cond_1
    iput-boolean p1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsDeviceProvisioned:Z

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->initialize()V

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsDisabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->dispose()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->onGlobalActionsShown()V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;->onGlobalActionsHidden()V

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->createActions()V

    return v1
.end method

.method public blacklist registerContentObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mContentObserverWrapper:Lcom/samsung/android/globalactions/util/ContentObserverWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/globalactions/util/ContentObserverWrapper;->registerObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist registerSecureConfirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsRegistered:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsRegistered:Z

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mBroadcastManager:Lcom/samsung/android/globalactions/util/BroadcastManager;

    new-instance v1, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/BroadcastManager;->registerSecureConfirmAction(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public blacklist setDisabled()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsDisabled:Z

    return-void
.end method

.method public blacklist setKeyguardShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsKeyguardShowing:Z

    return-void
.end method

.method public blacklist setOverrideDefaultActions(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->mIsOverrideDefaultActions:Z

    return-void
.end method
