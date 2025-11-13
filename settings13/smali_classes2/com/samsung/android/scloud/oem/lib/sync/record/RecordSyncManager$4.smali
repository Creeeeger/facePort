.class Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$4;
.super Ljava/lang/Object;
.source "RecordSyncManager.java"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
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

    .line 94
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "READY : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordSyncManager"

    invoke-static {p1, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "server_id"

    .line 96
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string p3, "account_name"

    .line 97
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "account_type"

    .line 98
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_cold_start"

    .line 99
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p4

    .line 101
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 102
    check-cast p2, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;

    .line 103
    invoke-interface {p2}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->ready()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    invoke-interface {p2, p1, v0, p3, p4}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->getLocalRecordList([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    .line 108
    new-array p3, p2, [J

    .line 109
    new-array p4, p2, [J

    .line 110
    new-array v0, p2, [Z

    .line 111
    new-array v3, p2, [Ljava/lang/String;

    .line 112
    new-array v4, p2, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, p2, :cond_0

    .line 115
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;

    .line 116
    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getLocalRecordId()J

    move-result-wide v7

    aput-wide v7, p3, v5

    .line 117
    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getServerRecordId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    .line 118
    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getTimestamp()J

    move-result-wide v7

    aput-wide v7, p4, v5

    .line 119
    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->isDeleted()Z

    move-result v7

    aput-boolean v7, v0, v5

    .line 120
    invoke-virtual {v6}, Lcom/samsung/android/scloud/oem/lib/sync/record/RecordItem;->getTableName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "local_id"

    .line 122
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 123
    invoke-virtual {v1, p0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo p0, "timestamp"

    .line 124
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string p0, "deleted"

    .line 125
    invoke-virtual {v1, p0, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    const-string/jumbo p0, "table_name"

    .line 126
    invoke-virtual {v1, p0, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    const-string p0, "is_success"

    .line 129
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v1
.end method
