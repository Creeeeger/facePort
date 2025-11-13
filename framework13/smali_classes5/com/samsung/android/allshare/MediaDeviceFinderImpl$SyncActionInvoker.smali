.class Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;
.super Ljava/lang/Object;
.source "MediaDeviceFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/MediaDeviceFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncActionInvoker"
.end annotation


# instance fields
.field private blacklist mMessage:Lcom/sec/android/allshare/iface/CVMessage;

.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/MediaDeviceFinderImpl;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;)V
    .locals 0

    .line 516
    iput-object p1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    new-instance p1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {p1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    .line 517
    return-void
.end method

.method private constructor blacklist <init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;)V
    .locals 0
    .param p2, "action_id"    # Ljava/lang/String;

    .line 519
    iput-object p1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    new-instance p1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {p1}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    .line 520
    invoke-virtual {p1, p2}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;-><init>(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method blacklist invoke()Landroid/os/Bundle;
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->-$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;)Lcom/samsung/android/allshare/IAllShareConnector;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->-$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;)Lcom/samsung/android/allshare/IAllShareConnector;

    move-result-object v0

    .line 533
    invoke-interface {v0}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->this$0:Lcom/samsung/android/allshare/MediaDeviceFinderImpl;

    invoke-static {v0}, Lcom/samsung/android/allshare/MediaDeviceFinderImpl;->-$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/MediaDeviceFinderImpl;)Lcom/samsung/android/allshare/IAllShareConnector;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    invoke-interface {v0, v2}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v0

    .line 537
    .local v0, "resMessage":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v0, :cond_1

    .line 538
    return-object v1

    .line 540
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 534
    .end local v0    # "resMessage":Lcom/sec/android/allshare/iface/CVMessage;
    :cond_2
    :goto_0
    return-object v1
.end method

.method blacklist putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 524
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method blacklist putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 528
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/MediaDeviceFinderImpl$SyncActionInvoker;->mMessage:Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {v0}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 529
    return-void
.end method
