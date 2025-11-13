.class public final Lcom/android/systemui/recordissue/TraceurMessageSender;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final backgroundLooper:Landroid/os/Looper;

.field public binder:Landroid/os/Messenger;

.field public isBound:Z

.field public final traceurConnection:Lcom/android/systemui/recordissue/TraceurMessageSender$traceurConnection$1;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recordissue/TraceurMessageSender;->backgroundLooper:Landroid/os/Looper;

    new-instance p1, Lcom/android/systemui/recordissue/TraceurMessageSender$traceurConnection$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/recordissue/TraceurMessageSender$traceurConnection$1;-><init>(Lcom/android/systemui/recordissue/TraceurMessageSender;)V

    iput-object p1, p0, Lcom/android/systemui/recordissue/TraceurMessageSender;->traceurConnection:Lcom/android/systemui/recordissue/TraceurMessageSender$traceurConnection$1;

    return-void
.end method

.method public static notifyTraceur$default(Lcom/android/systemui/recordissue/TraceurMessageSender;ILandroid/os/Bundle;Landroid/os/Messenger;I)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/recordissue/TraceurMessageSender;->binder:Landroid/os/Messenger;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p4

    iput p1, p4, Landroid/os/Message;->what:I

    invoke-virtual {p4, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iput-object p3, p4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {p0, p4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "TraceurMessageSender"

    const-string p2, "failed to notify Traceur"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
