.class Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$1;
.super Ljava/lang/Object;
.source "WM7SearchMediaGetter.java"

# interfaces
.implements Lcom/samsung/android/allshare/media/Provider$IProviderSearchResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;->startFlatSearching(Lcom/samsung/android/allshare/media/Provider;Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;

    .line 195
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$1;->this$0:Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSearchResponseReceived(Ljava/util/ArrayList;IILcom/samsung/android/allshare/media/SearchCriteria;ZLcom/samsung/android/allshare/ERROR;)V
    .locals 8
    .param p2, "requestedStartIndex"    # I
    .param p3, "requestedCount"    # I
    .param p4, "searchCriteria"    # Lcom/samsung/android/allshare/media/SearchCriteria;
    .param p5, "endOfItems"    # Z
    .param p6, "err"    # Lcom/samsung/android/allshare/ERROR;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;II",
            "Lcom/samsung/android/allshare/media/SearchCriteria;",
            "Z",
            "Lcom/samsung/android/allshare/ERROR;",
            ")V"
        }
    .end annotation

    .line 200
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 202
    .local v0, "returnedCount":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 203
    .local v1, "itemIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/Item;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/Item;

    .line 205
    .local v2, "obj":Lcom/samsung/android/allshare/Item;
    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/allshare/Item$MediaType;->ITEM_UNKNOWN:Lcom/samsung/android/allshare/Item$MediaType;

    if-ne v3, v4, :cond_0

    .line 206
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 208
    .end local v2    # "obj":Lcom/samsung/android/allshare/Item;
    :cond_0
    goto :goto_0

    .line 211
    :cond_1
    sget-object v2, Lcom/samsung/android/allshare/ERROR;->FEATURE_NOT_SUPPORTED:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p6, v2}, Lcom/samsung/android/allshare/ERROR;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-nez v2, :cond_2

    .line 212
    const-class v2, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Feature Not Supported"

    invoke-static {v2, v3}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$1;->this$0:Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;

    invoke-static {v2}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;->-$$Nest$fgetmConns(Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 215
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 216
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;

    .line 218
    .local v3, "conn":Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;
    if-nez p4, :cond_3

    .line 219
    invoke-virtual {v3, p6}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 220
    goto :goto_1

    .line 223
    :cond_3
    invoke-virtual {v3, p4, p2}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->getCurrentSearchRequest(Lcom/samsung/android/allshare/media/SearchCriteria;I)Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;

    move-result-object v4

    .line 226
    .local v4, "request":Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    if-eqz v4, :cond_9

    .line 229
    sget-object v5, Lcom/samsung/android/allshare/ERROR;->SUCCESS:Lcom/samsung/android/allshare/ERROR;

    invoke-virtual {p6, v5}, Lcom/samsung/android/allshare/ERROR;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 230
    invoke-virtual {v3, p6}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 231
    goto :goto_1

    .line 234
    :cond_4
    invoke-virtual {v3}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->isCanceled()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 235
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 236
    goto :goto_1

    .line 239
    :cond_5
    invoke-virtual {p6}, Lcom/samsung/android/allshare/ERROR;->ordinal()I

    move-result v5

    if-eqz v5, :cond_6

    .line 240
    invoke-virtual {v3, p6}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 241
    return-void

    .line 244
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_7

    .line 245
    invoke-virtual {v3, p1}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->onProgress(Ljava/util/ArrayList;)V

    .line 247
    :cond_7
    if-ne p5, v6, :cond_8

    .line 248
    invoke-virtual {v3, v4}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->removeSearchRequest(Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;)V

    .line 249
    invoke-virtual {v3}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->isrequestFinished()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 250
    invoke-virtual {v3}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->onFinish()V

    goto :goto_2

    .line 252
    :cond_8
    add-int v5, p2, v0

    invoke-virtual {v4, p4, v5}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->updateSearchRequest(Lcom/samsung/android/allshare/media/SearchCriteria;I)V

    .line 254
    iget-object v5, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$1;->this$0:Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;

    invoke-static {v5}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;->-$$Nest$fgetmProvider(Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;)Lcom/samsung/android/allshare/media/Provider;

    move-result-object v5

    add-int v6, p2, v0

    const/16 v7, 0x32

    invoke-virtual {v5, p4, v6, v7}, Lcom/samsung/android/allshare/media/Provider;->search(Lcom/samsung/android/allshare/media/SearchCriteria;II)V

    .line 258
    .end local v3    # "conn":Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;
    .end local v4    # "request":Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    :cond_9
    :goto_2
    goto :goto_1

    .line 259
    :cond_a
    return-void
.end method
