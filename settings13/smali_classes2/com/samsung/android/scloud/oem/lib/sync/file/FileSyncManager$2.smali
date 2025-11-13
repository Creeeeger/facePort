.class Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager$2;
.super Ljava/lang/Object;
.source "FileSyncManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/file/FileSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 81
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
            "name",
            "extras"
        }
    .end annotation

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "PREPARE To Sync : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "FileSyncManager"

    invoke-static {p3, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "sync_key"

    .line 86
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo p0, "timestamp"

    .line 87
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    const-string/jumbo p0, "tag"

    .line 88
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string p0, "account_name"

    .line 89
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p0, "account_type"

    .line 90
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "is_cold_start"

    const/4 p3, 0x0

    .line 91
    invoke-virtual {p4, p0, p3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 93
    move-object v0, p2

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;

    invoke-interface {v0, p1}, Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;->prepareToSync(Landroid/content/Context;)Z

    move-object v1, p1

    .line 95
    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/scloud/oem/lib/sync/file/IFileSyncClient;->getLocalItems(Landroid/content/Context;[Ljava/lang/String;[J[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/samsung/android/scloud/oem/lib/sync/file/SyncItem;

    .line 98
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const/4 p0, 0x0

    .line 99
    throw p0
.end method
