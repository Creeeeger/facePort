.class public final Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$8;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$8;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$8;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget p1, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$8;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] REQUEST_CANCEL"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupClientManager"

    invoke-static {p2, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$8;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {p0}, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->getResult(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager$8;->this$0:Lcom/samsung/android/scloud/lib/storage/internal/BackupClientManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4, p3}, Lcom/samsung/android/scloud/lib/storage/internal/CommonClientManager;->getFileDescriptor(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
