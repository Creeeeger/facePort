.class public Lcom/samsung/android/globalactions/features/SafetyCareStrategy;
.super Ljava/lang/Object;
.source "SafetyCareStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "SafetyCareStrategy"


# instance fields
.field private final blacklist mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final blacklist mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

.field blacklist mIsFirstEmergencyActionCheck:Z

.field blacklist mLastEmergencyActionResult:Z

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 1
    .param p1, "globalActions"    # Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;
    .param p2, "conditionChecker"    # Lcom/samsung/android/globalactions/util/ConditionChecker;
    .param p3, "logWrapper"    # Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    .line 23
    iput-object p2, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    .line 24
    iput-object p3, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mIsFirstEmergencyActionCheck:Z

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLastEmergencyActionResult:Z

    .line 28
    return-void
.end method


# virtual methods
.method public blacklist onCreateEmergencyAction()Z
    .locals 4

    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mIsFirstEmergencyActionCheck:Z

    if-eqz v0, :cond_2

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mIsFirstEmergencyActionCheck:Z

    .line 60
    iget-object v1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_DOMESTIC_OTA_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v2, "SafetyCareStrategy"

    const-string v3, "EmergenceyMode is disable on OTA mode."

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLastEmergencyActionResult:Z

    .line 63
    return v0

    .line 65
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_MISSING_PHONE_LOCK:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->CAN_SET_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 66
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_UPSM_ENABLED:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 67
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_KIDS_HOME_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    .line 68
    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLastEmergencyActionResult:Z

    goto :goto_0

    .line 71
    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLastEmergencyActionResult:Z

    .line 74
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLastEmergencyActionResult:Z

    return v0
.end method

.method public blacklist onInitialize(Z)V
    .locals 3
    .param p1, "isKeyguardShowing"    # Z

    .line 40
    iget-object v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_MODIFYING:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SafetyCareStrategy"

    const-string v2, "Cannot use Global Action because Emergency mode entering.."

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->elog(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActions;->setDisabled()V

    .line 44
    :cond_0
    return-void
.end method
