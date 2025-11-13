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
    .param p1, "connector"    # Lcom/samsung/android/allshare/IAllShareConnector;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/SECDownloader;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 42
    if-nez p1, :cond_0

    .line 44
    const-string v0, "SECDownloader"

    const-string v1, "Connection FAIL: AllShare Service Connector does not exist"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECDownloader;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    .line 49
    return-void
.end method

.method private blacklist downloadRemains(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "serverName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;)V"
        }
    .end annotation

    .line 122
    .local p2, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/allshare/extension/SECDownloader$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/allshare/extension/SECDownloader$1;-><init>(Lcom/samsung/android/allshare/extension/SECDownloader;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 172
    return-void
.end method


# virtual methods
.method public whitelist Download(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 10
    .param p1, "serverName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;)Z"
        }
    .end annotation

    .line 64
    .local p2, "itemList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    const/4 v0, 0x0

    .line 66
    .local v0, "result":Z
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/SECDownloader;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    const/4 v2, 0x0

    const-string v3, "SECDownloader"

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lcom/samsung/android/allshare/IAllShareConnector;->isAllShareServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 71
    :cond_0
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    .line 76
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v1, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
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

    .line 79
    .local v5, "item":Lcom/samsung/android/allshare/Item;
    if-eqz v5, :cond_2

    .line 80
    instance-of v7, v5, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v7, :cond_2

    .line 81
    move-object v7, v5

    check-cast v7, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v7}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v7, v6, :cond_2

    .line 83
    goto :goto_1

    .line 86
    .end local v5    # "item":Lcom/samsung/android/allshare/Item;
    :cond_2
    goto :goto_0

    .line 88
    :cond_3
    :goto_1
    new-instance v4, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v4}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 89
    .local v4, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v5, "com.sec.android.allshare.action.ACTION_DOWNLOAD_REQUEST"

    invoke-virtual {v4, v5}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 91
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 92
    .local v5, "req_bundle":Landroid/os/Bundle;
    const-string v7, "BUNDLE_STRING_DEVICE_NAME"

    invoke-virtual {v5, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v7, "BUNDLE_PARCELABLE_ARRAYLIST_CONTENT_URI"

    invoke-virtual {v5, v7, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 95
    invoke-virtual {v4, v5}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 97
    iget-object v7, p0, Lcom/samsung/android/allshare/extension/SECDownloader;->mAllShareConnector:Lcom/samsung/android/allshare/IAllShareConnector;

    invoke-interface {v7, v4}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v7

    .line 98
    .local v7, "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v7, :cond_4

    .line 99
    const-string v6, "Download, res_msg is null"

    invoke-static {v3, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return v2

    .line 103
    :cond_4
    invoke-virtual {v7}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 105
    .local v8, "res_bundle":Landroid/os/Bundle;
    if-nez v8, :cond_5

    .line 106
    const-string v6, "Download, res_bundle is null"

    invoke-static {v3, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return v2

    .line 110
    :cond_5
    :try_start_0
    const-string v2, "BUNDLE_BOOLEAN_RESULT"

    invoke-virtual {v8, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 113
    goto :goto_2

    .line 111
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "Download Exception"

    invoke-static {v3, v9, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_6

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_6

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/extension/SECDownloader;->downloadRemains(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 117
    :cond_6
    return v0

    .line 72
    .end local v1    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v4    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v5    # "req_bundle":Landroid/os/Bundle;
    .end local v7    # "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v8    # "res_bundle":Landroid/os/Bundle;
    :cond_7
    :goto_3
    const-string v1, "Download, itemList is null or empty"

    invoke-static {v3, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return v2

    .line 67
    :cond_8
    :goto_4
    const-string v1, "Download, AllShare Service is not available"

    invoke-static {v3, v1}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return v2
.end method
