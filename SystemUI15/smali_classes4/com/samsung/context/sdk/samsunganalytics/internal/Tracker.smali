.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final application:Landroid/app/Application;

.field public final configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field public final deleteApiCallChecker:Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;

.field public final mContext:Landroid/content/Context;

.field public mStatus:I


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    const-string v0, "Tracker Constructor"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;

    invoke-direct {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->deleteApiCallChecker:Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)V

    iput-object v0, p2, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

    const-string v0, "Tracker Constructor SingleThreadExecutor"

    const v1, -0x2d2207ed

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    move-result-object v2

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Landroid/app/Application;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    const-string p0, "Tracker start:6.05.073"

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogI(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public static access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Z
    .locals 4

    const-string v0, "Tracker is not initialized, status : "

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->init()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->deleteApiCallChecker:Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/DeleteApiCallChecker;->isNotOverLimit()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    move v3, v1

    :cond_1
    monitor-exit p0

    :goto_0
    return v3

    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final init()I
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    const/4 v2, 0x1

    if-nez v0, :cond_14

    iget-object v3, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    sget v4, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getDMAVersion(Landroid/content/Context;)I

    move-result v0

    const v4, 0x202fbf00

    if-lt v0, v4, :cond_2

    const v4, 0x23c34600

    if-lt v0, v4, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v6

    :goto_0
    sput v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    goto :goto_1

    :cond_2
    sput v7, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    :goto_1
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const-string v8, "dom"

    const-string v9, ""

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->setDomain(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v8, "uri"

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->setDirectory(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v8, "bat-uri"

    invoke-interface {v0, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->setDirectory(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->isPolicyExpired(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-static {}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->getInstance()Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    move-result-object v4

    iget-object v8, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getDeviceInfo(Landroid/content/Context;)Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    move-result-object v8

    new-instance v9, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$7;

    invoke-direct {v9, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$7;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)V

    invoke-static {v0, v3, v4, v8, v9}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->updatePolicy(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$7;)V

    :cond_3
    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    const-string v4, "user"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "current user is locked"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    iput v4, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    return v4

    :cond_4
    iget-object v8, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "enable_device"

    invoke-interface {v9, v10, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.samsung.android.feature.SemFloatingFeature"

    const-string v11, "getBoolean"

    const/4 v12, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v13, "getInstance"

    new-array v14, v2, [Ljava/lang/Class;

    aput-object v12, v14, v4

    invoke-virtual {v0, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    invoke-virtual {v13, v12, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    new-array v14, v2, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    aput-object v15, v14, v4

    invoke-virtual {v0, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v11, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v0, v13, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_1
    const-string v11, "content://com.sec.android.log.diagmonagent.sa/check/diagnostic"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v11, v12, v12, v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v2, v11, :cond_5

    move v11, v2

    goto :goto_2

    :cond_5
    move v11, v4

    :goto_2
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_1
    move v11, v4

    goto :goto_3

    :cond_6
    move v0, v4

    goto :goto_5

    :catch_2
    :goto_3
    const-string v8, "DMA is not supported"

    invoke-static {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    const-class v8, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/Validation;

    invoke-static {v8, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_4
    move v0, v11

    :goto_5
    if-nez v0, :cond_7

    const-string v8, "feature is not supported"

    invoke-static {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6

    :cond_7
    const-string v8, "cf feature is supported"

    invoke-static {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v10, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6

    :cond_8
    if-ne v0, v2, :cond_9

    move v0, v2

    goto :goto_6

    :cond_9
    move v0, v4

    :goto_6
    if-nez v0, :cond_a

    const-string v0, "Device is not enabled for logging"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    iput v7, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    return v7

    :cond_a
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    if-ne v7, v0, :cond_b

    const-string v0, "SenderType is None"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    iput v7, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    return v7

    :cond_b
    if-ne v0, v6, :cond_e

    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getServicePkgInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_d

    array-length v6, v0

    move v8, v4

    :goto_7
    if-ge v8, v6, :cond_d

    aget-object v9, v0, v8

    const-string v10, "com.sec.spp.permission.TOKEN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    move v0, v2

    goto :goto_8

    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_d
    move v0, v4

    :goto_8
    if-nez v0, :cond_e

    const-string v0, "SamsungAnalytics2 need to define \'com.sec.spp.permission.TOKEN_XXXX\' permission in AndroidManifest"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->throwException(Ljava/lang/String;)V

    iput v7, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    return v7

    :cond_e
    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isSendingAppCommonSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    const v6, 0x2a51bd80

    invoke-static {v0}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getDMAVersion(Landroid/content/Context;)I

    move-result v0

    if-gt v6, v0, :cond_f

    move v0, v2

    goto :goto_9

    :cond_f
    move v0, v4

    :goto_9
    if-nez v0, :cond_10

    iget-object v0, v3, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->isAgreement()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_10
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    if-ne v0, v5, :cond_14

    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v6, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "None"

    if-eqz v7, :cond_11

    move-object v6, v8

    :cond_11
    const-string v7, "sendCommonSuccess"

    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v7, "appVersion"

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v9, 0x0

    const-string v11, "sendCommonTime"

    invoke-interface {v0, v11, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    const-string v13, "AppVersion = "

    const-string v14, ", prefAppVersion = "

    const-string v15, ", beforeSendCommonTime = "

    invoke-static {v13, v6, v14, v8, v15}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", success = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    if-eqz v4, :cond_12

    const/4 v8, 0x7

    invoke-static {v8, v12}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->compareDays(ILjava/lang/Long;)Z

    move-result v8

    if-nez v8, :cond_13

    :cond_12
    if-nez v4, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const/4 v4, 0x6

    int-to-long v14, v4

    const-wide/32 v16, 0x36ee80

    mul-long v14, v14, v16

    add-long/2addr v14, v9

    cmp-long v4, v12, v14

    if-lez v4, :cond_14

    :cond_13
    const-string v4, "send app common"

    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v0, v11, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-static {v0, v5, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;

    move-result-object v0

    check-cast v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->sendCommon()V

    :cond_14
    iput v2, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mStatus:I

    return v2
.end method
