.class public Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;
.super Ljava/lang/Object;
.source "MaintenanceModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;
    }
.end annotation


# static fields
.field private static final blacklist ACTION_LAUNCH_MYFILES_STORAGE_ANALYSIS:Ljava/lang/String; = "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

.field private static final blacklist ACTION_LAUNCH_SMART_SWITCH:Ljava/lang/String; = "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

.field private static final blacklist ACTION_LAUNCH_SMART_SWITCH_AGENT:Ljava/lang/String; = "com.sec.android.easyMover.Agent.action.AUTO_DOWNLOAD"

.field static final blacklist ACTION_NOTIFY_CLOUD_BACKUP_CANCELED:Ljava/lang/String; = "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_CANCELED"

.field static final blacklist ACTION_NOTIFY_CLOUD_BACKUP_COMPLETED:Ljava/lang/String; = "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_COMPLETED"

.field static final blacklist ACTION_NOTIFY_CLOUD_BACKUP_NOT_FINISHED:Ljava/lang/String; = "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_NOT_FINISHED"

.field static final blacklist ACTION_NOTIFY_CLOUD_BACKUP_STARTED:Ljava/lang/String; = "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_STARTED"

.field private static final blacklist ACTION_USE_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field static final blacklist BACKUP_STATUS_CLOUD_BACKED_UP_FAILED:Ljava/lang/String; = "BACKUP_NON_FINISHED"

.field static final blacklist BACKUP_STATUS_CLOUD_BACKED_UP_SUCCEEDED:Ljava/lang/String; = "BACKUP_COMPLETED"

.field static final blacklist BACKUP_STATUS_CLOUD_BACKING_UP:Ljava/lang/String; = "BACKUP_RUNNING"

.field static final blacklist BACKUP_STATUS_CLOUD_NONE:Ljava/lang/String; = "NONE"

.field static final blacklist BACKUP_STATUS_CLOUD_RESTORING:Ljava/lang/String; = "RESTORE_RUNNING"

.field static final blacklist BACKUP_STATUS_NOT_IN_PROGRESS:Ljava/lang/String; = "NOT_IN_PROGRESS"

.field static final blacklist BACKUP_STATUS_SMART_SWITCH_BACKING_UP:Ljava/lang/String; = "TRUE"

.field static final blacklist CLOUD_BACKUP_RETENTION_PERIOD_DEFAULT:I = 0x1e

.field static final blacklist CLOUD_BACKUP_STATUS_CHECK_DELAY:J = 0x7530L

.field private static final blacklist COMPONENT_SMART_SWITCH_AGENT:Landroid/content/ComponentName;

.field static final blacklist EVENT_ID_CLOUD_BACKUP:Ljava/lang/String; = "7083"

.field static final blacklist EVENT_ID_CREATE_LOG:Ljava/lang/String; = "7070"

.field static final blacklist EVENT_ID_EXTERNAL_STORAGE_BACKUP:Ljava/lang/String; = "7074"

.field static final blacklist EVENT_ID_KEEP_BACKUP:Ljava/lang/String; = "7069"

.field static final blacklist EVENT_ID_PAUSE_BACKUP_AND_TURN_ON:Ljava/lang/String; = "7068"

.field static final blacklist EVENT_ID_RESTART:Ljava/lang/String; = "7071"

.field static final blacklist EVENT_ID_TURN_ON_MAINTENANCE_MODE:Ljava/lang/String; = "7066"

.field static final blacklist EVENT_VALUE_ONE:Ljava/lang/String; = "1"

.field static final blacklist EVENT_VALUE_ZERO:Ljava/lang/String; = "0"

.field private static final blacklist EXTRA_SECURE_LOCK_FROM_SEC_NON_BIOMETRICS:Ljava/lang/String; = "from_sec_non_biometrics"

.field private static final blacklist EXTRA_SECURE_LOCK_HIDE_BIOMETRICS_MENU:Ljava/lang/String; = "hide_biometrics_menu"

.field private static final blacklist EXTRA_SMART_SWITCH_EXTERNAL_BNR:Ljava/lang/String; = "EXTERNAL_BNR"

.field public static final blacklist EXTRA_USER_CONSENT_ABOUT_CREATING_LOG:Ljava/lang/String; = "user_consent_about_creating_log"

.field public static final blacklist FEATURE_SUPPORT_MAINTENANCE_MODE:Ljava/lang/String; = "com.samsung.feature.support_repair_mode"

.field public static final blacklist FLAG_MAINTENANCE_MODE:I = 0x80000

.field private static final blacklist LOGGING_TYPE:Ljava/lang/String; = "ev"

.field public static final blacklist MAINTENANCE_MODE_USER_ID:I = 0x4d

.field private static final blacklist MAX_FONT_SCALE:F = 1.3f

.field private static final blacklist MAX_PAGE_WIDTH_PERCENT:F = 0.86f

.field private static final blacklist MAX_POWER_SAVING_MODE_ENABLED:I = 0x1

.field private static final blacklist NEW_DEX_MODE_ENABLED:Ljava/lang/String; = "1"

.field private static final blacklist NEW_DEX_MODE_KEY:Ljava/lang/String; = "new_dex"

.field private static final blacklist PACKAGE_CLOUD:Ljava/lang/String; = "com.samsung.android.scloud"

.field private static final blacklist PACKAGE_DEVICE_CARE:Ljava/lang/String; = "com.samsung.android.lool"

.field private static final blacklist PACKAGE_DIAGMON_AGENT:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field public static final blacklist PACKAGE_MOBILE_DOCTOR:Ljava/lang/String; = "com.samsung.android.app.mobiledoctor"

.field private static final blacklist PACKAGE_SMART_SWITCH:Ljava/lang/String; = "com.sec.android.easyMover"

.field public static final blacklist PERMISSION_ACCESS_MAINTENANCE_MODE:Ljava/lang/String; = "com.samsung.android.permission.ACCESS_MAINTENANCE_MODE"

.field public static final blacklist PROPERTY_DISALLOW_MAINTENANCE_MODE:Ljava/lang/String; = "persist.sys.disallow_maintenance_mode"

.field public static final blacklist PROPERTY_DISALLOW_MAINTENANCE_MODE_LAST_CALLER:Ljava/lang/String; = "persist.sys.disallow_maintenance_mode_last_caller"

.field public static final blacklist PROPERTY_IS_IN_MAINTENANCE_MODE:Ljava/lang/String; = "persist.sys.is_in_maintenance_mode"

.field private static final blacklist PROVIDER_CALL_FAILED:Ljava/lang/String; = "PROVIDER_CALL_FAILED"

.field private static final blacklist PROVIDER_CLOUD_ARGUMENT_MAINTENANCE:Ljava/lang/String; = "maintenance"

.field private static final blacklist PROVIDER_CLOUD_AUTHORITY_STATUS_PROVIDER:Ljava/lang/String; = "content://com.samsung.android.scloud.statusprovider"

.field private static final blacklist PROVIDER_CLOUD_EXTRA_IS_SKIP_CHECK_SUPPORT:Ljava/lang/String; = "isSkipCheckSupport"

.field private static final blacklist PROVIDER_CLOUD_METHOD_CTB_SUPPORT:Ljava/lang/String; = "ctb_support"

.field private static final blacklist PROVIDER_CLOUD_RESPONSE_KEY_FAIL_REASON:Ljava/lang/String; = "failReason"

.field private static final blacklist PROVIDER_CLOUD_RESPONSE_KEY_INTRO_DESCRIPTION:Ljava/lang/String; = "intro_description"

.field private static final blacklist PROVIDER_CLOUD_RESPONSE_KEY_RETENTION_PERIOD:Ljava/lang/String; = "retentionPeriod"

.field private static final blacklist PROVIDER_CLOUD_RESPONSE_KEY_STATUS:Ljava/lang/String; = "status"

.field private static final blacklist PROVIDER_CLOUD_RESPONSE_KEY_SUPPORT:Ljava/lang/String; = "support"

.field private static final blacklist PROVIDER_CLOUD_RESPONSE_KEY_TARGET_INTENT:Ljava/lang/String; = "targetIntent"

.field private static final blacklist PROVIDER_SMART_SWITCH_URI_IS_RUNNING:Ljava/lang/String; = "content://com.sec.android.easyMover.statusProvider/isRunning"

.field public static final blacklist TAG:Ljava/lang/String; = "MaintenanceMode"

.field private static final blacklist TRACKING_ID_DEVICE_CARE:Ljava/lang/String; = "431-399-4853100"

.field static final blacklist UNSUPPORTED_REASON_DEX_MODE:I = 0x4

.field static final blacklist UNSUPPORTED_REASON_INTERNAL_ALREADY_EXISTS:I = -0x1

.field static final blacklist UNSUPPORTED_REASON_MAX_POWER_SAVING_MODE:I = 0x5

.field static final blacklist UNSUPPORTED_REASON_NONE:I = 0x0

.field static final blacklist UNSUPPORTED_REASON_NOT_IN_OWNER_USER:I = 0x2

.field static final blacklist UNSUPPORTED_REASON_NOT_SUPPORTED_ON_DEVICE:I = 0x1

.field static final blacklist UNSUPPORTED_REASON_NO_ADD_USER:I = 0x3

.field public static final blacklist USER_TYPE_FULL_MAINTENANCE_MODE:Ljava/lang/String; = "com.samsung.android.os.usertype.full.MAINTENANCE_MODE"

.field public static blacklist sUserConsentAboutCreatingLog:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.easyMover.Agent"

    const-string v2, "com.sec.android.easyMover.Agent.ServiceActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->COMPONENT_SMART_SWITCH_AGENT:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->sUserConsentAboutCreatingLog:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist call(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static blacklist callCloudProvider(Landroid/content/Context;Z)Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isSkipCheckSupport"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "ctb_support"

    const-string v2, "maintenance"

    const-string v3, "content://com.samsung.android.scloud.statusprovider"

    invoke-static {p0, v3, v1, v2, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->call(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "MaintenanceMode"

    if-nez v1, :cond_0

    const-string v4, "Failed to call: Response is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string v4, "failReason"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to call, failReason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    return-object v1
.end method

.method static blacklist checkCloudBackupSupport(Landroid/content/Context;)Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;
    .locals 5

    const-string v0, "com.samsung.android.scloud"

    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "MaintenanceMode"

    const-string v2, "SCloud is not installed"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;-><init>(ZILjava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {p0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->callCloudProvider(Landroid/content/Context;Z)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isCloudBackupSupported(Landroid/os/Bundle;)Z

    move-result v2

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getCloudBackupRetentionPeriod(Landroid/os/Bundle;)I

    move-result v3

    invoke-static {v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getCloudBackupIntroDescription(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$CloudInfo;-><init>(ZILjava/lang/String;)V

    return-object v1
.end method

.method static blacklist checkRequiredConditions(Landroid/content/Context;Z)I
    .locals 1

    invoke-static {}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->hasSystemFeature()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->hasNoAddUserRestriction(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    return v0

    :cond_3
    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isMaxPowerSavingMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->doesMaintenanceModeUserIdExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    return v0

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method static blacklist configureLayout(Landroid/app/Activity;Landroid/content/res/Resources;Landroid/content/res/Configuration;ZZIII)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    iget v5, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    const/4 v6, 0x0

    if-eqz p3, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_3

    iget v8, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    invoke-static {v0, v5, v3, v4}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->configureLayoutConsideringFullScreen(Landroid/app/Activity;ZII)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    invoke-static {v0, v7, v3, v4}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->configureLayoutConsideringFullScreen(Landroid/app/Activity;ZII)V

    goto :goto_1

    :cond_3
    invoke-static {v0, v5, v3, v4}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->configureLayoutConsideringFullScreen(Landroid/app/Activity;ZII)V

    :goto_1
    if-nez v6, :cond_4

    return-void

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    const v9, 0x1050280

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const v10, 0x1050281

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v11, 0x105027f

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    if-lt v7, v9, :cond_5

    const v13, 0x10502a3

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto :goto_2

    :cond_5
    if-lt v7, v10, :cond_6

    if-le v8, v11, :cond_6

    int-to-float v13, v7

    const v14, 0x3f5c28f6    # 0.86f

    mul-float/2addr v13, v14

    float-to-int v12, v13

    :cond_6
    :goto_2
    if-lez v12, :cond_7

    move/from16 v13, p7

    invoke-virtual {v0, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    nop

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    iput v12, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v14, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_7
    move/from16 v13, p7

    :goto_3
    return-void
.end method

.method private static blacklist configureLayoutConsideringFullScreen(Landroid/app/Activity;ZII)V
    .locals 2

    const/16 v0, 0x400

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method static blacklist confirmSecureLock(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 6

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setUseDefaultTitle()Landroid/hardware/biometrics/BiometricPrompt$Builder;

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setAllowedAuthenticators(I)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    move-result-object v1

    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$1;

    invoke-direct {v4, p1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils$1;-><init>(Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/biometrics/BiometricPrompt;->authenticateUser(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;I)V

    return-void
.end method

.method public static blacklist doesMaintenanceModeUserIdExist(Landroid/content/Context;)Z
    .locals 7

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0x4d

    if-ne v5, v6, :cond_0

    const-string v1, "MaintenanceMode"

    const-string v3, "Maintenance mode ID already exists"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    return v1
.end method

.method private static blacklist getCloudBackupIntroDescription(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "intro_description"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cloud backup intro description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static blacklist getCloudBackupRetentionPeriod(Landroid/os/Bundle;)I
    .locals 4

    const/16 v0, 0x1e

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "retentionPeriod"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cloud backup retention period: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MaintenanceMode"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method static blacklist getCloudBackupStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->callCloudProvider(Landroid/content/Context;Z)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PROVIDER_CALL_FAILED"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cloud backup status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MaintenanceMode"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    move-object v1, v2

    :cond_1
    return-object v1
.end method

.method static blacklist getFontSize(Landroid/content/Context;I)F
    .locals 1

    const v0, 0x3fa66666    # 1.3f

    invoke-static {p0, p1, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;IF)F

    move-result v0

    return v0
.end method

.method static blacklist getFontSize(Landroid/content/Context;IF)F
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v1, p2

    if-lez v2, :cond_0

    div-float v2, v0, v1

    mul-float v3, v2, p2

    return v3

    :cond_0
    return v0
.end method

.method static blacklist getSmartSwitchBackupStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "content://com.sec.android.easyMover.statusProvider/isRunning"

    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SmartSwitch backup status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "PROVIDER_CALL_FAILED"

    :goto_0
    return-object v1
.end method

.method static blacklist getStatusOfBackupInProgress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getCloudBackupStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "BACKUP_RUNNING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "BACKUP_NON_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "RESTORE_RUNNING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    invoke-static {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->getSmartSwitchBackupStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TRUE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :pswitch_0
    return-object v0

    :cond_1
    const-string v2, "NOT_IN_PROGRESS"

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3fd5a732 -> :sswitch_2
        -0x2c16aedf -> :sswitch_1
        -0xd7f2fde -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist getType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to getType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PROVIDER_CALL_FAILED"

    return-object v0
.end method

.method public static blacklist getUserConsentAboutCreatingLog()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->sUserConsentAboutCreatingLog:Z

    return v0
.end method

.method private static blacklist hasAccessPermission()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "com.samsung.android.permission.ACCESS_MAINTENANCE_MODE"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check access permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MaintenanceMode"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static blacklist hasNoAddUserRestriction(Landroid/content/Context;)Z
    .locals 3

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const-string v1, "no_add_user"

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    return v1
.end method

.method public static blacklist hasSystemFeature()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-string v2, "com.samsung.feature.support_repair_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check feature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MaintenanceMode"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static blacklist isCloudBackupSupported(Landroid/os/Bundle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "support"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cloud backup support: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private static blacklist isDexMode(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "1"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "new_dex"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const-string v1, "desktopmode"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v3

    if-eqz v3, :cond_3

    iget v4, v3, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    iget v4, v3, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    :cond_1
    move v0, v2

    :cond_2
    return v0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check Dex mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MaintenanceMode"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method static blacklist isFold()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isLowOnStorage(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v1

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check storage capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MaintenanceMode"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static blacklist isMaintenanceModeFeature(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.feature.support_repair_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isMaintenanceModeUser(Landroid/content/pm/UserInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/content/pm/UserInfo;->flags:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isUserTypeMaintenanceMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Landroid/content/pm/UserInfo;->id:I

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private static blacklist isMaxPowerSavingMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "minimal_battery_use"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check MPSM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MaintenanceMode"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private static blacklist isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "MaintenanceMode"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method static blacklist isSecureLockSet(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    return v1

    :cond_0
    const-string v1, "MaintenanceMode"

    const-string v2, "KeyguardManager is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method static blacklist isTablet()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static blacklist isUserTypeMaintenanceMode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.samsung.android.os.usertype.full.MAINTENANCE_MODE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static blacklist sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "tracking_id"

    const-string v2, "431-399-4853100"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pkg_name"

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    const-string v2, "ev"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v2, "MaintenanceMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method public static blacklist setDisallowedSetting(Z)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->hasAccessPermission()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "persist.sys.disallow_maintenance_mode"

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDisallowedSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    const/16 v3, 0x5b

    if-le v1, v3, :cond_1

    new-instance v1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x5a

    invoke-direct {v1, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v1

    :cond_1
    :try_start_0
    const-string v1, "persist.sys.disallow_maintenance_mode_last_caller"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static blacklist setUserConsentAboutCreatingLog(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->sUserConsentAboutCreatingLog:Z

    return-void
.end method

.method private static blacklist startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static blacklist startActivityToSetSecureLock(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "hide_biometrics_menu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "from_sec_non_biometrics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static blacklist startCloudActivity(Landroid/content/Context;)V
    .locals 5

    const-string v0, "MaintenanceMode"

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->callCloudProvider(Landroid/content/Context;Z)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v2, "targetIntent"

    const-class v3, Landroid/content/Intent;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-nez v2, :cond_1

    const-string v3, "Failed to start SCloud: targetIntent is null"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    nop

    invoke-static {p0, v2}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getParcelable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static blacklist startMyFilesActivity(Landroid/app/Activity;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.myfiles.RUN_STORAGE_ANALYSIS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static blacklist startSmartSwitchActivity(Landroid/content/Context;)V
    .locals 3

    const-string v0, "com.sec.android.easyMover"

    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.easyMover.Agent.action.AUTO_DOWNLOAD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->COMPONENT_SMART_SWITCH_AGENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    const-string v1, "EXTERNAL_BNR"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
