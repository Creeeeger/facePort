.class Lcom/samsung/android/allshare/extension/SECDownloader$1;
.super Ljava/lang/Object;
.source "SECDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/extension/SECDownloader;->downloadRemains(Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/extension/SECDownloader;

.field final synthetic blacklist val$itemList:Ljava/util/ArrayList;

.field final synthetic blacklist val$serverName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/extension/SECDownloader;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/extension/SECDownloader;

    .line 122
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/SECDownloader$1;->this$0:Lcom/samsung/android/allshare/extension/SECDownloader;

    iput-object p2, p0, Lcom/samsung/android/allshare/extension/SECDownloader$1;->val$itemList:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/samsung/android/allshare/extension/SECDownloader$1;->val$serverName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 9

    .line 125
    const-string v0, "SECDownloader"

    const-string v1, "downloadRemains, Thread Start!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const/16 v1, 0x32

    .line 129
    .local v1, "i":I
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v2, "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECDownloader$1;->val$itemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 132
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_0

    .line 133
    goto :goto_2

    .line 134
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/allshare/extension/SECDownloader$1;->val$itemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/allshare/Item;

    .line 135
    .local v3, "item":Lcom/samsung/android/allshare/Item;
    if-eqz v3, :cond_1

    .line 136
    instance-of v4, v3, Lcom/sec/android/allshare/iface/IBundleHolder;

    if-eqz v4, :cond_1

    .line 137
    move-object v4, v3

    check-cast v4, Lcom/sec/android/allshare/iface/IBundleHolder;

    invoke-interface {v4}, Lcom/sec/android/allshare/iface/IBundleHolder;->getBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v3    # "item":Lcom/samsung/android/allshare/Item;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_2
    :goto_2
    new-instance v3, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-direct {v3}, Lcom/sec/android/allshare/iface/CVMessage;-><init>()V

    .line 143
    .local v3, "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    const-string v4, "com.sec.android.allshare.action.ACTION_DOWNLOAD_REQUEST"

    invoke-virtual {v3, v4}, Lcom/sec/android/allshare/iface/CVMessage;->setActionID(Ljava/lang/String;)V

    .line 145
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 146
    .local v4, "req_bundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/samsung/android/allshare/extension/SECDownloader$1;->val$serverName:Ljava/lang/String;

    const-string v6, "BUNDLE_STRING_DEVICE_NAME"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v5, "BUNDLE_PARCELABLE_ARRAYLIST_CONTENT_URI"

    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 149
    invoke-virtual {v3, v4}, Lcom/sec/android/allshare/iface/CVMessage;->setBundle(Landroid/os/Bundle;)V

    .line 151
    iget-object v5, p0, Lcom/samsung/android/allshare/extension/SECDownloader$1;->this$0:Lcom/samsung/android/allshare/extension/SECDownloader;

    invoke-static {v5}, Lcom/samsung/android/allshare/extension/SECDownloader;->-$$Nest$fgetmAllShareConnector(Lcom/samsung/android/allshare/extension/SECDownloader;)Lcom/samsung/android/allshare/IAllShareConnector;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/samsung/android/allshare/IAllShareConnector;->requestCVMSync(Lcom/sec/android/allshare/iface/CVMessage;)Lcom/sec/android/allshare/iface/CVMessage;

    move-result-object v5

    .line 152
    .local v5, "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    if-nez v5, :cond_3

    .line 153
    const-string v6, "downloadRemains, res_msg is null"

    invoke-static {v0, v6}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    goto :goto_3

    .line 157
    :cond_3
    invoke-virtual {v5}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 159
    .local v6, "res_bundle":Landroid/os/Bundle;
    if-nez v6, :cond_4

    .line 160
    const-string v7, "downloadRemains, res_bundle is null"

    invoke-static {v0, v7}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    goto :goto_3

    .line 164
    :cond_4
    iget-object v7, p0, Lcom/samsung/android/allshare/extension/SECDownloader$1;->val$itemList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v1, v7, :cond_5

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downloadRemains, finish size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    nop

    .line 169
    .end local v2    # "bundleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v3    # "req_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v4    # "req_bundle":Landroid/os/Bundle;
    .end local v5    # "res_msg":Lcom/sec/android/allshare/iface/CVMessage;
    .end local v6    # "res_bundle":Landroid/os/Bundle;
    :goto_3
    const-string v2, "downloadRemains, Thread End!!!"

    invoke-static {v0, v2}, Lcom/samsung/android/allshare/DLog;->i_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 168
    :cond_5
    goto/16 :goto_0
.end method
