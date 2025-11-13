.class public final Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    iget v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const-string p1, "["

    const-string p2, "] GET_STATUS: is_finished: "

    invoke-static {p1, p3, p2}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    iget-boolean p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", is_success: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", proc: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", total: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QBNRClientHelper"

    invoke-static {p2, p1}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-boolean p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z

    const-string p3, "is_finished"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z

    const-string p3, "is_success"

    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z

    if-nez p2, :cond_1

    iget-wide p2, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J

    const-wide/16 v0, 0x0

    cmp-long p4, p2, v0

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    div-long/2addr v0, p2

    :goto_0
    long-to-int p0, v0

    const-string/jumbo p2, "progress"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-object p1

    :pswitch_0
    const-string/jumbo v0, "observing_uri"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v0, "file"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    iget-object p4, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    const-wide/16 v0, 0x0

    iput-wide v0, p4, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J

    iput-wide v0, p4, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J

    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z

    iput-boolean v0, p4, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z

    new-instance p4, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    const/4 v8, 0x1

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;-><init>(Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;Ljava/lang/Object;Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V

    const-string p0, "RESTORE_"

    invoke-static {p0, p3}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const-string/jumbo v0, "observing_uri"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v0, "file"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    move-object v5, p4

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    iget-object p4, p0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2;->this$0:Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;

    const-wide/16 v0, 0x0

    iput-wide v0, p4, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcNow:J

    iput-wide v0, p4, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mProcTotal:J

    const/4 v0, 0x0

    iput-boolean v0, p4, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsFinished:Z

    iput-boolean v0, p4, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper;->mIsSuccess:Z

    new-instance p4, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/scloud/oem/lib/qbnr/QBNRClientHelper$2$1;-><init>(Lcom/samsung/android/scloud/oem/lib/common/IServiceHandler;Ljava/lang/Object;Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V

    const-string p0, "BACKUP_"

    invoke-static {p0, p3}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
