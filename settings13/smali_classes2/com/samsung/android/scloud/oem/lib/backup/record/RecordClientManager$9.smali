.class Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$9;
.super Ljava/lang/Object;
.source "RecordClientManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;-><init>(Lcom/samsung/android/scloud/oem/lib/backup/IBackupClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 367
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$9;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "client",
            "sourceKey",
            "extras"
        }
    .end annotation

    .line 370
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] COMPLETE_FILE"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p2, "is_success"

    const/4 v0, 0x1

    .line 372
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "path"

    .line 373
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 376
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0

    .line 379
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v1, "startKey"

    .line 380
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "nextKey"

    .line 381
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "checksum"

    .line 382
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "complete"

    .line 383
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 384
    new-instance p4, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;

    move-object v1, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 385
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->setSize(J)V

    .line 386
    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;->setOffset(J)V

    .line 387
    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->addReuseFile(Ljava/lang/String;Lcom/samsung/android/scloud/oem/lib/bnr/BNRFile;)J

    move-result-wide p3

    const-wide/16 v1, -0x1

    cmp-long p1, p3, v1

    if-nez p1, :cond_1

    .line 388
    invoke-virtual {p0, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-object p0
.end method
