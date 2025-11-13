.class public Lcom/samsung/android/lock/LsLogUploader;
.super Ljava/lang/Object;
.source "LsLogUploader.java"


# static fields
.field private static final blacklist AUTHORITY:Ljava/lang/String; = "com.sec.android.log.sp4xkeu9ef"

.field private static final blacklist BUILD_ID:Ljava/lang/String;

.field private static final blacklist DEBUG:Z

.field private static final blacklist EVENT_ID:Ljava/lang/String;

.field private static final blacklist REPORT_ERROR_INTENT:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

.field private static final blacklist SERVICE_ID:Ljava/lang/String; = "sp4xkeu9ef"

.field private static final blacklist TAG:Ljava/lang/String; = "LsLogUploader"

.field private static final blacklist UPLOAD_MO:Ljava/lang/String; = "uploadMO"

.field private static blacklist mContext:Landroid/content/Context;

.field private static blacklist mLastUploadType:Lcom/samsung/android/lock/LsLogType;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/lock/LsConstants;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/lock/LsLogUploader;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/lock/LsLogUploader;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/samsung/android/lock/LsLogUploader;->mLastUploadType:Lcom/samsung/android/lock/LsLogType;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/lock/LsLogUploader;->BUILD_ID:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/lock/LsLogUploader;->BUILD_ID:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/lock/LsLogUploader;->EVENT_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist canUpload(Lcom/samsung/android/lock/LsLogType;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/LsLogUploader;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p0, Lcom/samsung/android/lock/LsLogUploader;->mLastUploadType:Lcom/samsung/android/lock/LsLogType;

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist sendToDiagmon(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V
    .locals 14

    const-string v0, "1"

    const-string v1, "IntentOnly"

    const-string v2, "Ext"

    const-string v3, "CFailLogUpload"

    const-string v4, "DiagMon"

    sget-object v5, Lcom/samsung/android/lock/LsLogUploader;->mContext:Landroid/content/Context;

    const-string v6, "LsLogUploader"

    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendToDiagmon failed. context is null. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is reserved!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p0, Lcom/samsung/android/lock/LsLogUploader;->mLastUploadType:Lcom/samsung/android/lock/LsLogType;

    return-void

    :cond_0
    sget-object v5, Lcom/samsung/android/lock/LsLogUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "samsung_errorlog_agree"

    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v5, v7, :cond_1

    const-string v0, "sendToDiagmon failed. errorlog_agree is not true!!"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v8, Lcom/samsung/android/lock/LsLogUploader;->mLastUploadType:Lcom/samsung/android/lock/LsLogType;

    return-void

    :cond_1
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/samsung/android/lock/LsLogType;->containsProperty(I)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendToDiagmon failed. Cannot upload this log : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v8, Lcom/samsung/android/lock/LsLogUploader;->mLastUploadType:Lcom/samsung/android/lock/LsLogType;

    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/lock/LsUtil;->isShipBuild()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {}, Lcom/samsung/android/lock/LsUtil;->isDevBuild()Z

    move-result v7

    if-nez v7, :cond_3

    const-string v0, "sendToDiagmon failed. Can upload only ship or dev!"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-object v8, Lcom/samsung/android/lock/LsLogUploader;->mLastUploadType:Lcom/samsung/android/lock/LsLogType;

    return-void

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "send broadcast intent to diagmon : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const/16 v10, 0x20

    invoke-virtual {v7, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v9, v4, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v11, v3, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "ServiceID"

    const-string v13, "sp4xkeu9ef"

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v11, v2, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "ClientV"

    sget-object v13, Lcom/samsung/android/lock/LsLogUploader;->BUILD_ID:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "UiMode"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "ResultCode"

    invoke-virtual {p0}, Lcom/samsung/android/lock/LsLogType;->getErrorCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "WifiOnlyFeature"

    invoke-virtual {v11, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const-string v12, "EventID"

    sget-object v13, Lcom/samsung/android/lock/LsLogUploader;->EVENT_ID:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v11, "Description"

    invoke-virtual {p0}, Lcom/samsung/android/lock/LsLogType;->getErrorCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v1, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v11, "IntentOnlyMode"

    invoke-virtual {v2, v11, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "Agree"

    const-string v11, "D"

    invoke-virtual {v0, v2, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "LogPath"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uploadMO"

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.sec.android.diagmonagent"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v0, Lcom/samsung/android/lock/LsLogUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sput-object v8, Lcom/samsung/android/lock/LsLogUploader;->mLastUploadType:Lcom/samsung/android/lock/LsLogType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception while sending a bug report."

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static blacklist tryUpload(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/samsung/android/lock/LsLogUploader;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/lock/LsLogUploader;->mLastUploadType:Lcom/samsung/android/lock/LsLogType;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/lock/LsLogUploader;->mLastUploadType:Lcom/samsung/android/lock/LsLogType;

    invoke-static {v0}, Lcom/samsung/android/lock/LsLogFile;->upload(Lcom/samsung/android/lock/LsLogType;)V

    :cond_0
    return-void
.end method
