.class Lcom/samsung/android/lock/LsLogFile$2;
.super Ljava/lang/Thread;
.source "LsLogFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/lock/LsLogFile;->upload(Lcom/samsung/android/lock/LsLogType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$type:Lcom/samsung/android/lock/LsLogType;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/lock/LsLogType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lock/LsLogFile$2;->val$type:Lcom/samsung/android/lock/LsLogType;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 4

    const-string v0, "LsLogFile"

    const-wide/16 v1, 0xbb8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sleep error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/lock/LsLogFile$2;->val$type:Lcom/samsung/android/lock/LsLogType;

    invoke-static {v1}, Lcom/samsung/android/lock/LsLogUploader;->canUpload(Lcom/samsung/android/lock/LsLogType;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/lock/LsLogFile;->-$$Nest$smgetZipFile()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "getZipFile() failed"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/lock/LsLogFile$2;->val$type:Lcom/samsung/android/lock/LsLogType;

    invoke-static {v0, v1}, Lcom/samsung/android/lock/LsLogUploader;->sendToDiagmon(Lcom/samsung/android/lock/LsLogType;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
