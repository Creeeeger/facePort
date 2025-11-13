.class public final Lcom/android/systemui/globalactions/features/SideKeyStrategy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/ActionUpdateStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;


# instance fields
.field public final TYPE_COMBINATION:I

.field public final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field public final mContext:Landroid/content/Context;

.field public final mPopupController:Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

.field public final mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

.field public sSideKeyType:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;Landroid/content/Context;Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->sSideKeyType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->TYPE_COMBINATION:I

    iput-object p1, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iput-object p2, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p3, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mPopupController:Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    return-void
.end method


# virtual methods
.method public final onCreateActions(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_CLEAR_SIDE_VIEW_COVER_CLOSED:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_RBM_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_USER_UNLOCKED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FMM_LOCKED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_KNOXGUARD_LOCKED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_EMERGENCY_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_IN_LOCK_TASK_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_REPAIR_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->GET_PROKIOSK_STATE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_KIOSK_MODE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemUIConditions;->IS_FUNCTION_KEY_SETTING_HIDE:Lcom/android/systemui/globalactions/util/SystemUIConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->FRONT_LARGE_COVER_DISPLAY:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FOLDED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v1, "side_key_settings"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->getSideKeyType()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->sSideKeyType:I

    iget v1, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->TYPE_COMBINATION:I

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string/jumbo v0, "screen_capture_popup"

    invoke-interface {p0, p1, v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    :cond_1
    return-void
.end method

.method public final onDispose()V
    .locals 6

    iget v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->sSideKeyType:I

    iget v1, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->TYPE_COMBINATION:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mPopupController:Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;->mPrefrerences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "dismissTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "saveTime : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;->mPrefrerences:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {p0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ScreenCapturePopupController"

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/globalactions/util/LogWrapper;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onUpdateAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 3

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "force_restart_message"

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e01cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-interface {p1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/globalactions/features/SideKeyStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f110005

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
