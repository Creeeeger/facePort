.class public Lcom/samsung/android/allshare/extension/SECDownloader;
.super Ljava/lang/Object;
.source "SECDownloader.java"


# static fields
.field private static final blacklist TAG_CLASS:Ljava/lang/String; = "SECDownloader"


# instance fields
.field private blacklist mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/extension/SECDownloader;)Lcom/samsung/android/allshare/IAllShareConnector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/SECDownloader;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/allshare/IAllShareConnector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECDownloader;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    if-nez p1, :cond_0

    const-string v0, "SECDownloader"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECDownloader;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    return-void
.end method

.method private blacklist downloadRemains(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/allshare/extension/SECDownloader$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/allshare/extension/SECDownloader$1;-><init>(Lcom/samsung/android/allshare/extension/SECDownloader;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public whitelist Download(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECDownloader;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v2, 0x0

    const-string v3, "SECDownloader"

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECDownloader;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x32

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/allshare/Item;

    if-eqz v5, :cond_2

    instance-of v7, v5, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v7, :cond_2

    move-object v7, v5

    check-cast v7, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v7}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v6, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    new-instance v4, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v4}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    const-string v5, "com.sec.android.allshare.action.ACTION_DOWNLOAD_REQUEST"

    invoke-virtual {v4, v5}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v7, "BUNDLE_STRING_DEVICE_NAME"

    invoke-virtual {v5, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "BUNDLE_PARCELABLE_ARRAYLIST_CONTENT_URI"

    invoke-virtual {v5, v7, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    iget-object v7, p0, Lcom/samsung/android/allshare/extension/SECDownloader;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v7, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v6, "Download, res_msg is null"

    invoke-static {v3, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    invoke-virtual {v7}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v6, "Download, res_bundle is null"

    invoke-static {v3, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    :try_start_0
    const-string v2, "BUNDLE_BOOLEAN_RESULT"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_2

    :catch_0
    move-exception v2

    const-string v9, "Download Exception"

    invoke-static {v3, v9, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECDownloader;->downloadRemains(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_6
    return v0

    :cond_7
    :goto_3
    const-string v1, "Download, itemList is null or empty"

    invoke-static {v3, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_8
    :goto_4
    const-string v1, "Download, AllShare Service is not available"

    invoke-static {v3, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method
