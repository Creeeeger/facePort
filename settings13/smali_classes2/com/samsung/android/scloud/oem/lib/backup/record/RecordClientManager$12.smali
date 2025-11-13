.class Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$12;
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

    .line 488
    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$12;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
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

    .line 491
    invoke-static {}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] CLEAR_REUSE_FILE_DB"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 493
    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->getReusePathList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p4

    .line 494
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 495
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager$12;->this$0:Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;

    invoke-static {v2, p1}, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;->access$300(Lcom/samsung/android/scloud/oem/lib/backup/record/RecordClientManager;Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 498
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/samsung/android/scloud/oem/lib/backup/ReuseDBHelper;->clearReuseFile(Ljava/lang/String;)V

    const/4 p0, 0x1

    const-string p1, "is_success"

    .line 499
    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2
.end method
