.class Lcom/samsung/android/scloud/oem/lib/sync/record/RecordSyncManager$7;
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

    .line 370
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
            "name",
            "extras"
        }
    .end annotation

    .line 373
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "COMPLETE : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecordSyncManager"

    invoke-static {p1, p0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "local_id"

    .line 375
    invoke-virtual {p4, p0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object p0

    const-string/jumbo p3, "table_name"

    .line 376
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "rcode"

    .line 377
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p4

    const/4 v0, 0x0

    const/16 v1, 0x12d

    if-eq p4, v1, :cond_0

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upload not success, rCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p1, p4}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 385
    :goto_0
    check-cast p2, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;

    if-eqz p0, :cond_1

    .line 387
    :goto_1
    array-length p4, p0

    if-ge v0, p4, :cond_1

    .line 388
    aget-object p4, p3, v0

    aget-wide v1, p0, v0

    invoke-interface {p2, p4, v1, v2, p1}, Lcom/samsung/android/scloud/oem/lib/sync/record/IRecordSyncClient;->complete(Ljava/lang/String;JZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
