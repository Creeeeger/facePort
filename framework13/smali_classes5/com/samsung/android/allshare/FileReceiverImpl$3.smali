.class Lcom/samsung/android/allshare/FileReceiverImpl$3;
.super Lcom/samsung/android/allshare/AllShareEventHandler;
.source "FileReceiverImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/FileReceiverImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyFailed;,
        Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyCompleted;,
        Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyProgress;
    }
.end annotation


# instance fields
.field private blacklist mEventNotiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/allshare/FileReceiverImpl$INotifyProgressEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/FileReceiverImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/FileReceiverImpl;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$0"    # Lcom/samsung/android/allshare/FileReceiverImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 493
    iput-object p1, p0, Lcom/samsung/android/allshare/FileReceiverImpl$3;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    .line 495
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$3;->mEventNotiMap:Ljava/util/HashMap;

    .line 497
    new-instance v1, Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyProgress;

    invoke-direct {v1, p0}, Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyProgress;-><init>(Lcom/samsung/android/allshare/FileReceiverImpl$3;)V

    const-string v2, "com.sec.android.allshare.event.EVENT_FILE_RECEIVER_PROGRESS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$3;->mEventNotiMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyCompleted;

    invoke-direct {v1, p0}, Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyCompleted;-><init>(Lcom/samsung/android/allshare/FileReceiverImpl$3;)V

    const-string v2, "com.sec.android.allshare.event.EVENT_FILE_RECEIVER_COMPLECTED"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$3;->mEventNotiMap:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyFailed;

    invoke-direct {v1, p0}, Lcom/samsung/android/allshare/FileReceiverImpl$3$NotifyFailed;-><init>(Lcom/samsung/android/allshare/FileReceiverImpl$3;)V

    const-string v2, "com.sec.android.allshare.event.EVENT_FILE_RECEIVER_FAILED"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    return-void
.end method


# virtual methods
.method blacklist handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 4
    .param p1, "cvm"    # Lcom/sec/android/allshare/iface/CVMessage;

    .line 507
    iget-object v0, p0, Lcom/samsung/android/allshare/FileReceiverImpl$3;->this$0:Lcom/samsung/android/allshare/FileReceiverImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/FileReceiverImpl;->-$$Nest$fgetmProgressEventListener(Lcom/samsung/android/allshare/FileReceiverImpl;)Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;

    move-result-object v0

    .line 508
    .local v0, "listener":Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;
    if-nez v0, :cond_0

    .line 509
    return-void

    .line 511
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getEventID()Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, "event":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/allshare/FileReceiverImpl$3;->mEventNotiMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/FileReceiverImpl$INotifyProgressEvent;

    .line 514
    .local v2, "notifier":Lcom/samsung/android/allshare/FileReceiverImpl$INotifyProgressEvent;
    if-eqz v2, :cond_1

    .line 515
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/samsung/android/allshare/FileReceiverImpl$INotifyProgressEvent;->onNotifyEvent(Lcom/samsung/android/allshare/file/FileReceiver$IFileReceiverProgressUpdateEventListener;Landroid/os/Bundle;)V

    .line 516
    :cond_1
    return-void
.end method
