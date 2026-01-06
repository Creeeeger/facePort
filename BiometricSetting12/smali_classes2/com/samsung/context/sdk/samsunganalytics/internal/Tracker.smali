.class public Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;
.super Ljava/lang/Object;
.source "Tracker.java"


# static fields
.field public static final AUID_TYPE_DMA:I = 0x4

.field public static final AUID_TYPE_FROM_CF:I = 0x0

.field public static final AUID_TYPE_INAPP:I = 0x2

.field public static final AUID_TYPE_MAKE_SDK:I = 0x1

.field public static final AUID_TYPE_UNKNOWN:I = -0x1

.field public static final DEVICE_ID_BIT_NUM:I = 0x80


# instance fields
.field private activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private application:Landroid/app/Application;

.field private configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field private isEnableAutoActivityTracking:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->isEnableAutoActivityTracking:Z

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setAuidType(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->loadDeviceId()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableAutoDeviceId()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->generateRandomDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->setDeviceId(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->getPolicy()V

    :cond_3
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setUserAgreement(Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    :cond_4
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->isUserAgreement()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableFastReady()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v2

    invoke-static {p1, v2, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    :cond_5
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, ""

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    :goto_1
    const-string v5, "sendCommonSuccess"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v5, "appVersion"

    const-string v6, "None"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    const-string v9, "sendCommonTime"

    invoke-interface {v2, v9, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppVersion = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", prefAppVerison = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", beforeSendCommonTime = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", success = "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v0, :cond_6

    const/4 v8, 0x7

    invoke-static {v8, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->compareDays(ILjava/lang/Long;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    if-nez v0, :cond_8

    const/4 v8, 0x6

    invoke-static {v8, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->compareHours(ILjava/lang/Long;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    const-string v8, "send Common!!"

    invoke-static {v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v5, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p1, v3, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    move-result-object v3

    check-cast v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->sendCommon()V

    :cond_8
    invoke-static {v1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->sendSettings(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->sendPreviousUserAgreementState()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tracker start:6.05.015 , senderType : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Tracker"

    invoke-static {v2, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)Landroid/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    return-object v0
.end method

.method private checkDeviceId()Z
    .locals 3

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "did is empty"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method private generateRandomDeviceId()Ljava/lang/String;
    .locals 14

    const-string v0, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    const/16 v1, 0x10

    const/16 v2, 0x20

    const-string v3, "0123456789abcdefghijklmjopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    const/16 v5, 0x10

    new-array v5, v5, [B

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    invoke-virtual {v4, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    new-instance v9, Ljava/math/BigInteger;

    invoke-direct {v9, v5}, Ljava/math/BigInteger;-><init>([B)V

    nop

    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    int-to-long v12, v12

    rem-long/2addr v10, v12

    long-to-int v10, v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    const/4 v7, 0x0

    return-object v7

    :cond_0
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPolicy()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const-string v2, "dom"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->setDomain(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v2, "uri"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->setDirectory(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v2, "bat-uri"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->setDirectory(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->isPolicyExpired(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    move-result-object v3

    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-direct {v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;

    invoke-direct {v5, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)V

    invoke-static {v1, v2, v3, v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getPolicy(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V

    :cond_0
    return-void
.end method

.method private isSendProperty()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "property_sent_date"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->compareDays(ILjava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "do not send property < 1day"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v2
.end method

.method private isUserAgreement()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getUserAgreement()Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/context/sdk/samsunganalytics/UserAgreement;->isAgreement()Z

    move-result v0

    return v0
.end method

.method private loadDeviceId()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "deviceId"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auidType"

    const/4 v3, -0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setAuidType(I)V

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setDeviceId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    const/4 v3, 0x1

    return v3

    :cond_1
    :goto_0
    const/4 v3, 0x0

    return v3
.end method

.method private makeActivityLifecycleCallbacks()Landroid/app/Application$ActivityLifecycleCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$3;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$3;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    return-object v0

    :cond_0
    return-object v0
.end method

.method private sendPreviousUserAgreementState()V
    .locals 15

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    const-string v1, "SATerms"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    move-result-object v13

    new-instance v14, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$4;

    invoke-direct {v10, p0, v0, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$4;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    move-object v5, v14

    move-object v7, v4

    move-wide v8, v11

    invoke-direct/range {v5 .. v10}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V

    invoke-interface {v13, v14}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendUserAgreementState()V
    .locals 11

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->sendPreviousUserAgreementState()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    move-result-object v9

    new-instance v10, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$5;

    invoke-direct {v5, p0, v8, v6, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$5;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;Ljava/lang/String;J)V

    move-object v0, v10

    move-object v2, v8

    move-wide v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/terms/RegisterTask;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V

    invoke-interface {v9, v10}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    return-void
.end method

.method private setDeviceId(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auidType"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setAuidType(I)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->setDeviceId(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-void
.end method


# virtual methods
.method public changeUserAgreementState(Z)V
    .locals 4

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.sec.android.diagmonagent.sa.terms.DELETE_APP_DATA"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "agree"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-virtual {v2, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v2, v1, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->reset()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->sendUserAgreementState()V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getAuidType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->generateRandomDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->setDeviceId(Ljava/lang/String;I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public disableAutoActivityTracking()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->activityLifecycleCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public enableAutoActivityTracking()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->makeActivityLifecycleCallbacks()Landroid/app/Application$ActivityLifecycleCallbacks;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method public getConfiguration()Lcom/samsung/context/sdk/samsunganalytics/Configuration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-object v0
.end method

.method public isEnableAutoActivityTracking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->isEnableAutoActivityTracking:Z

    return v0
.end method

.method public registerSettingPref(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/SingleThreadExecutor;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    move-result-object v1

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/RegisterClient;

    invoke-direct {v2, v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/setting/RegisterClient;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->sendSettings(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    return-void
.end method

.method public sendLog(Ljava/util/Map;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->isUserAgreement()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "user do not agree"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    const/4 v0, -0x2

    return v0

    :cond_0
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->checkDeviceId()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x5

    return v0

    :cond_2
    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "pp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->isSendProperty()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, -0x9

    return v0

    :cond_3
    if-eqz p2, :cond_4

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;->sendSync(Ljava/util/Map;)I

    move-result v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->application:Landroid/app/Application;

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-static {v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;->get(Landroid/content/Context;ILcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogSender;->send(Ljava/util/Map;)I

    move-result v0

    return v0

    :cond_5
    :goto_0
    const-string v0, "Failure to send Logs : No data"

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;)V

    const/4 v0, -0x3

    return v0
.end method
