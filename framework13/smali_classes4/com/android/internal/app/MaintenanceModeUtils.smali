.class public Lcom/android/internal/app/MaintenanceModeUtils;
.super Ljava/lang/Object;
.source "MaintenanceModeUtils.java"


# static fields
.field static final blacklist ACTION_LAUNCH_SCLOUD:Ljava/lang/String; = "com.samsung.android.scloud.app.activity.LAUNCH_TEMPORARY_BACKUP"

.field static final blacklist ACTION_LAUNCH_SCLOUD_EXCEPTIONAL_RESULT_PAGE:Ljava/lang/String; = "com.samsung.android.scloud.app.activity.LAUNCH_TEMPORARY_BACKUP_EXCEPTIONAL_RESULT"

.field static final blacklist ACTION_LAUNCH_SCLOUD_RESULT_PAGE:Ljava/lang/String; = "com.samsung.android.scloud.app.activity.LAUNCH_TEMPORARY_BACKUP_RESULT"

.field static final blacklist ACTION_LAUNCH_SMART_SWITCH:Ljava/lang/String; = "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

.field static final blacklist ACTION_LAUNCH_SMART_SWITCH_AGENT:Ljava/lang/String; = "com.sec.android.easyMover.Agent.action.AUTO_DOWNLOAD"

.field static final blacklist ACTION_NOTIFY_CLOUD_BACKUP_CANCELED:Ljava/lang/String; = "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_CANCELED"

.field static final blacklist ACTION_NOTIFY_CLOUD_BACKUP_COMPLETED:Ljava/lang/String; = "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_COMPLETED"

.field static final blacklist ACTION_NOTIFY_CLOUD_BACKUP_NOT_FINISHED:Ljava/lang/String; = "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_NOT_FINISHED"

.field static final blacklist ACTION_NOTIFY_CLOUD_BACKUP_STARTED:Ljava/lang/String; = "com.samsung.android.scloud.temporarybackup.NOTIFY_BACKUP_STARTED"

.field private static final blacklist ACTION_USE_APP_FEATURE_SURVEY:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field static final blacklist BACKUP_STATUS_CHECK_DELAY:J = 0x7530L

.field static final blacklist BACKUP_STATUS_CLOUD_BACKED_UP_FAILED:Ljava/lang/String; = "BACKUP_NON_FINISHED"

.field static final blacklist BACKUP_STATUS_CLOUD_BACKED_UP_SUCCEEDED:Ljava/lang/String; = "BACKUP_COMPLETED"

.field static final blacklist BACKUP_STATUS_CLOUD_BACKING_UP:Ljava/lang/String; = "BACKUP_RUNNING"

.field static final blacklist BACKUP_STATUS_CLOUD_NONE:Ljava/lang/String; = "NONE"

.field static final blacklist BACKUP_STATUS_CLOUD_RESTORING:Ljava/lang/String; = "RESTORE_RUNNING"

.field static final blacklist BACKUP_STATUS_NOT_IN_PROGRESS:Ljava/lang/String; = "NOT_IN_PROGRESS"

.field static final blacklist BACKUP_STATUS_SMART_SWITCH_BACKING_UP:Ljava/lang/String; = "TRUE"

.field static final blacklist CLOUD_BACKUP_EXPIRY_DATE_DEFAULT:I = 0x1e

.field static final blacklist COMPONENT_SMART_SWITCH_AGENT:Landroid/content/ComponentName;

.field static final blacklist EVENT_ID_CLOUD_BACKUP:Ljava/lang/String; = "7083"

.field static final blacklist EVENT_ID_CREATE_LOG:Ljava/lang/String; = "7070"

.field static final blacklist EVENT_ID_EXTERNAL_STORAGE_BACKUP:Ljava/lang/String; = "7074"

.field static final blacklist EVENT_ID_KEEP_BACKUP:Ljava/lang/String; = "7069"

.field static final blacklist EVENT_ID_PAUSE_BACKUP_AND_TURN_ON:Ljava/lang/String; = "7068"

.field static final blacklist EVENT_ID_RESTART:Ljava/lang/String; = "7071"

.field static final blacklist EVENT_ID_SELECT_BACKUP:Ljava/lang/String; = "7067"

.field static final blacklist EVENT_ID_TURN_ON_MAINTENANCE_MODE:Ljava/lang/String; = "7066"

.field static final blacklist EVENT_VALUE_ONE:Ljava/lang/String; = "1"

.field static final blacklist EVENT_VALUE_ZERO:Ljava/lang/String; = "0"

.field static final blacklist EXTRA_SMART_SWITCH_EXTERNAL_BNR:Ljava/lang/String; = "EXTERNAL_BNR"

.field public static final blacklist FEATURE_SUPPORT_MAINTENANCE_MODE:Ljava/lang/String; = "com.samsung.feature.support_repair_mode"

.field static final blacklist INTERNAL_EXTRA_CLOUD_BACKUP_EXPIRY_DATE:Ljava/lang/String; = "CLOUD_BACKUP_EXPIRY_DATE"

.field static final blacklist INTERNAL_EXTRA_IS_CLOUD_BACKUP_SUPPORTED:Ljava/lang/String; = "IS_CLOUD_BACKUP_SUPPORTED"

.field private static final blacklist LOGGING_TYPE:Ljava/lang/String; = "ev"

.field private static final blacklist MAX_FONT_SCALE:F = 1.3f

.field private static final blacklist PACKAGE_DEVICE_CARE:Ljava/lang/String; = "com.samsung.android.lool"

.field private static final blacklist PACKAGE_DIAGMON_AGENT:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field static final blacklist PACKAGE_SCLOUD:Ljava/lang/String; = "com.samsung.android.scloud"

.field static final blacklist PACKAGE_SMART_SWITCH:Ljava/lang/String; = "com.sec.android.easyMover"

.field static final blacklist PERMISSION_ACCESS_MAINTENANCE_MODE:Ljava/lang/String; = "com.samsung.android.permission.ACCESS_MAINTENANCE_MODE"

.field public static final blacklist PROPERTY_DISALLOW_MAINTENANCE_MODE:Ljava/lang/String; = "persist.sys.disallow_maintenance_mode"

.field public static final blacklist PROPERTY_DISALLOW_MAINTENANCE_MODE_LAST_CALLER:Ljava/lang/String; = "persist.sys.disallow_maintenance_mode_last_caller"

.field static final blacklist PROVIDER_CALL_FAILED:Ljava/lang/String; = "PROVIDER_CALL_FAILED"

.field static final blacklist TAG:Ljava/lang/String; = "MaintenanceMode"

.field private static final blacklist TRACKING_ID_DEVICE_CARE:Ljava/lang/String; = "431-399-4853100"

.field static final blacklist URI_CLOUD_GET_TEMPORARY_BACKUP_RETENTION_PERIOD:Ljava/lang/String; = "content://com.samsung.android.scloud.statusprovider/getTemporaryBackupRetentionPeriod"

.field static final blacklist URI_CLOUD_GET_TEMPORARY_BACKUP_STATUS:Ljava/lang/String; = "content://com.samsung.android.scloud.statusprovider/getTemporaryBackupStatus"

.field static final blacklist URI_CLOUD_IS_ENABLED_TEMPORARY_BACKUP:Ljava/lang/String; = "content://com.samsung.android.scloud.statusprovider/isEnabledTemporaryBackup"

.field static final blacklist URI_SMART_SWITCH_IS_RUNNING:Ljava/lang/String; = "content://com.sec.android.easyMover.statusProvider/isRunning"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.easyMover.Agent"

    const-string v2, "com.sec.android.easyMover.Agent.ServiceActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/app/MaintenanceModeUtils;->COMPONENT_SMART_SWITCH_AGENT:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist checkWhetherCloudBackupIsSupported(Landroid/content/Context;)Landroid/util/Pair;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 261
    invoke-static {p0}, Lcom/android/internal/app/MaintenanceModeUtils;->isCloudBackupSupported(Landroid/content/Context;)Z

    move-result v0

    .line 262
    .local v0, "isSupported":Z
    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/app/MaintenanceModeUtils;->getCloudBackupExpiryDate(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    .line 263
    .local v1, "expiryDate":I
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method static blacklist doesMaintenanceModeUserIdExist(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 232
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 233
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Landroid/os/UserManager;->getUsers(ZZZ)Ljava/util/List;

    move-result-object v2

    .line 235
    .local v2, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 236
    .local v4, "userInfo":Landroid/content/pm/UserInfo;
    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v6, 0x4d

    if-ne v5, v6, :cond_0

    .line 237
    const/4 v1, 0x1

    return v1

    .line 239
    .end local v4    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_0
    goto :goto_0

    .line 240
    :cond_1
    return v1
.end method

.method private static blacklist getCloudBackupExpiryDate(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 280
    const-string v0, "content://com.samsung.android.scloud.statusprovider/getTemporaryBackupRetentionPeriod"

    invoke-static {p0, v0}, Lcom/android/internal/app/MaintenanceModeUtils;->query(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cloud backup expiry date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    if-eqz v0, :cond_0

    .line 284
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    nop

    .line 289
    :goto_0
    const/16 v1, 0x1e

    return v1
.end method

.method static blacklist getCloudBackupStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 310
    const-string v0, "content://com.samsung.android.scloud.statusprovider/getTemporaryBackupStatus"

    invoke-static {p0, v0}, Lcom/android/internal/app/MaintenanceModeUtils;->query(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "status":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cloud backup status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    if-nez v0, :cond_0

    const-string v1, "PROVIDER_CALL_FAILED"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method static blacklist getFontSize(Landroid/content/Context;I)F
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dimenResId"    # I

    .line 244
    const v0, 0x3fa66666    # 1.3f

    invoke-static {p0, p1, v0}, Lcom/android/internal/app/MaintenanceModeUtils;->getFontSize(Landroid/content/Context;IF)F

    move-result v0

    return v0
.end method

.method static blacklist getFontSize(Landroid/content/Context;IF)F
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dimenResId"    # I
    .param p2, "maxFontScale"    # F

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 252
    .local v0, "baseSize":F
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 253
    .local v1, "currentFontScale":F
    cmpl-float v2, v1, p2

    if-lez v2, :cond_0

    .line 254
    div-float v2, v0, v1

    .line 255
    .local v2, "scaleBase":F
    mul-float v3, v2, p2

    return v3

    .line 257
    .end local v2    # "scaleBase":F
    :cond_0
    return v0
.end method

.method static blacklist getSmartSwitchBackupStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 316
    const-string v0, "content://com.sec.android.easyMover.statusProvider/isRunning"

    invoke-static {p0, v0}, Lcom/android/internal/app/MaintenanceModeUtils;->getType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "status":Ljava/lang/String;
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

    .line 318
    if-nez v0, :cond_0

    const-string v1, "PROVIDER_CALL_FAILED"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method static blacklist getStatusOfBackupInProgress(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 293
    invoke-static {p0}, Lcom/android/internal/app/MaintenanceModeUtils;->getCloudBackupStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "cloudBackupStatus":Ljava/lang/String;
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

    .line 301
    invoke-static {p0}, Lcom/android/internal/app/MaintenanceModeUtils;->getSmartSwitchBackupStatus(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "smartSwitchBackupStatus":Ljava/lang/String;
    const-string v2, "TRUE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 303
    return-object v2

    .line 298
    .end local v1    # "smartSwitchBackupStatus":Ljava/lang/String;
    :pswitch_0
    return-object v0

    .line 306
    .restart local v1    # "smartSwitchBackupStatus":Ljava/lang/String;
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
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriString"    # Ljava/lang/String;

    .line 347
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

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MaintenanceMode"

    const-string v2, "Failed to getType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    .end local v0    # "e":Ljava/lang/Exception;
    const-string v0, "PROVIDER_CALL_FAILED"

    return-object v0
.end method

.method public static blacklist hasSystemFeature(I)Z
    .locals 3
    .param p0, "version"    # I

    .line 132
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.support_repair_mode"

    invoke-interface {v0, v1, p0}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to check feature: "

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

    .line 137
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist isCloudBackupSupported(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 267
    const-string v0, "com.samsung.android.scloud"

    invoke-static {p0, v0}, Lcom/android/internal/app/MaintenanceModeUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MaintenanceMode"

    if-nez v0, :cond_0

    .line 268
    const-string v0, "SCloud is not installed."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const/4 v0, 0x0

    return v0

    .line 272
    :cond_0
    const-string v0, "content://com.samsung.android.scloud.statusprovider/isEnabledTemporaryBackup"

    invoke-static {p0, v0}, Lcom/android/internal/app/MaintenanceModeUtils;->query(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "TRUE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 273
    .local v0, "isSupported":Z
    if-nez v0, :cond_1

    .line 274
    const-string v2, "Cloud backup is not supported."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_1
    return v0
.end method

.method static blacklist isFold()Z
    .locals 1

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist isMaintenanceModeFeature(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 126
    const-string v0, "com.samsung.feature.support_repair_mode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static blacklist isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 323
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 324
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 325
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MaintenanceMode"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method static blacklist isSecureLockSet(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 172
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 173
    .local v0, "km":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v1

    return v1

    .line 176
    :cond_0
    const-string v1, "MaintenanceMode"

    const-string v2, "KEYGUARD_SERVICE is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v1, 0x0

    return v1
.end method

.method static blacklist isTablet()Z
    .locals 2

    .line 163
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

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

.method static blacklist query(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uriString"    # Ljava/lang/String;

    .line 333
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 334
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 333
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 336
    :cond_0
    return-object v1

    .line 333
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "uriString":Ljava/lang/String;
    :cond_1
    :goto_0
    throw v1

    .line 338
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "uriString":Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 340
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MaintenanceMode"

    const-string v2, "Failed to query"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v0, "PROVIDER_CALL_FAILED"

    return-object v0
.end method

.method static blacklist sendLoggingDataToSA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "eventValue"    # Ljava/lang/String;

    .line 356
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 357
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "tracking_id"

    const-string v2, "431-399-4853100"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "feature"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v1, "pkg_name"

    const-string v2, "com.samsung.android.lool"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v1, "type"

    const-string v2, "ev"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    if-eqz p2, :cond_0

    .line 362
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 366
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 368
    const-string v2, "MaintenanceMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "E-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 369
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

    .line 368
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    goto :goto_1

    .line 371
    :catch_0
    move-exception v0

    .line 374
    :goto_1
    return-void
.end method

.method public static blacklist setDisallowedSetting(Z)V
    .locals 6
    .param p0, "disallow"    # Z

    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.disallow_maintenance_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "stackTrace":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisallowedSetting: "

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

    .line 146
    if-eqz v0, :cond_1

    .line 147
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v1, v1

    const/16 v3, 0x5b

    if-le v1, v3, :cond_0

    .line 149
    new-instance v1, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x5a

    invoke-direct {v1, v3, v4, v5}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v1

    .line 153
    :cond_0
    :try_start_0
    const-string/jumbo v1, "persist.sys.disallow_maintenance_mode_last_caller"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/IllegalArgumentException;
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

    .line 160
    .end local v0    # "stackTrace":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return-void
.end method

.method static blacklist startActivityToBackup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .line 193
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "com.samsung.android.scloud.app.activity.LAUNCH_TEMPORARY_BACKUP_RESULT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v3

    goto :goto_0

    :sswitch_1
    const-string v2, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_2
    const-string v2, "com.samsung.android.scloud.app.activity.LAUNCH_TEMPORARY_BACKUP"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string v2, "com.samsung.android.scloud.app.activity.LAUNCH_TEMPORARY_BACKUP_EXCEPTIONAL_RESULT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_4
    const-string v2, "com.sec.android.easyMover.Agent.action.AUTO_DOWNLOAD"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    :goto_0
    const-string v2, "EXTERNAL_BNR"

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 205
    :pswitch_0
    :try_start_1
    sget-object v1, Lcom/android/internal/app/MaintenanceModeUtils;->COMPONENT_SMART_SWITCH_AGENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 206
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 202
    :pswitch_1
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    goto :goto_1

    .line 198
    :pswitch_2
    const-string v1, "com.samsung.android.scloud"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    nop

    .line 209
    :goto_1
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_2

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3ca7ea5f -> :sswitch_4
        -0x2a108195 -> :sswitch_3
        0x41b63bd6 -> :sswitch_2
        0x5629cbbe -> :sswitch_1
        0x726da0a6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static blacklist startActivityToSetSecureLock(Landroid/content/Context;)V
    .locals 3
    .param p0, "activityContext"    # Landroid/content/Context;

    .line 182
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hide_biometrics_menu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 184
    const-string v1, "from_sec_non_biometrics"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static blacklist startCloudActivityAsBackupStatus(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "backupStatus"    # Ljava/lang/String;

    .line 217
    const-string v0, "com.samsung.android.scloud.app.activity.LAUNCH_TEMPORARY_BACKUP"

    .line 218
    .local v0, "action":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 219
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "BACKUP_COMPLETED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "BACKUP_NON_FINISHED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 224
    :pswitch_0
    const-string v0, "com.samsung.android.scloud.app.activity.LAUNCH_TEMPORARY_BACKUP_EXCEPTIONAL_RESULT"

    goto :goto_1

    .line 221
    :pswitch_1
    const-string v0, "com.samsung.android.scloud.app.activity.LAUNCH_TEMPORARY_BACKUP_RESULT"

    .line 228
    :cond_1
    :goto_1
    invoke-static {p0, v0}, Lcom/android/internal/app/MaintenanceModeUtils;->startActivityToBackup(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2c16aedf -> :sswitch_1
        0x4ed9fee -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
