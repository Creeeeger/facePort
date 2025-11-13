.class public final Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$2:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;B)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final complete(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$sourceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] restore: complete: isSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QBNRClientHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->this$1:Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z

    iput-boolean p1, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z

    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$observingUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->this$1:Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    iget-boolean v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "is_success"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$pfd:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$sourceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] backup: complete: isSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QBNRClientHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->this$1:Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z

    iput-boolean p1, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z

    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$observingUri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$pfd:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_2

    :try_start_1
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onProgress(JJ)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$sourceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] restore: onProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QBNRClientHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->this$1:Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    check-cast p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    iput-wide p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J

    iput-wide p3, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J

    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1$1;->this$2:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    iget-object v1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$sourceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] backup: onProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QBNRClientHelper"

    invoke-static {v1, v0}, Lcom/samsung/android/scloud/oem/lib/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->this$1:Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;

    check-cast v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    iput-wide p1, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J

    iput-wide p3, v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J

    iget-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;->val$observingUri:Landroid/net/Uri;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
