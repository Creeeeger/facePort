.class Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;
.super Ljava/lang/Object;
.source "WM7SearchMediaGetter.java"

# interfaces
.implements Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlatProviderConnectionInfo"
.end annotation


# instance fields
.field private blacklist mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

.field private blacklist mIsCancel:Z

.field private blacklist mSearchRequestList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConn(Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;)Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;Lcom/samsung/android/allshare/media/Provider;)V
    .locals 1
    .param p2, "conn"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .param p3, "provider"    # Lcom/samsung/android/allshare/media/Provider;

    .line 65
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->this$0:Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mIsCancel:Z

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mSearchRequestList:Ljava/util/ArrayList;

    .line 66
    iput-object p2, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 67
    invoke-static {p1, p3}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;->-$$Nest$fputmProvider(Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter;Lcom/samsung/android/allshare/media/Provider;)V

    .line 68
    return-void
.end method


# virtual methods
.method public blacklist addCurrentSearchRequest(Ljava/util/ArrayList;I)V
    .locals 5
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$MediaType;",
            ">;I)V"
        }
    .end annotation

    .line 106
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$MediaType;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/Item$MediaType;

    .line 107
    .local v1, "type":Lcom/samsung/android/allshare/Item$MediaType;
    new-instance v2, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;

    invoke-direct {v2}, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;-><init>()V

    .line 108
    .local v2, "builder":Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    invoke-virtual {v2, v1}, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->addItemType(Lcom/samsung/android/allshare/Item$MediaType;)Lcom/samsung/android/allshare/media/SearchCriteria$Builder;

    .line 109
    new-instance v3, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/media/SearchCriteria$Builder;->build()Lcom/samsung/android/allshare/media/SearchCriteria;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;-><init>(Lcom/samsung/android/allshare/media/SearchCriteria;I)V

    .line 110
    .local v3, "request":Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    iget-object v4, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mSearchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v1    # "type":Lcom/samsung/android/allshare/Item$MediaType;
    .end local v2    # "builder":Lcom/samsung/android/allshare/media/SearchCriteria$Builder;
    .end local v3    # "request":Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method

.method public blacklist getCurrentSearchRequest(Lcom/samsung/android/allshare/media/SearchCriteria;I)Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    .locals 4
    .param p1, "criteria"    # Lcom/samsung/android/allshare/media/SearchCriteria;
    .param p2, "startIndex"    # I

    .line 115
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 116
    return-object v0

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mSearchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;

    .line 119
    .local v2, "request":Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;->isSame(Lcom/samsung/android/allshare/media/SearchCriteria;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 120
    return-object v2

    .line 121
    .end local v2    # "request":Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;
    :cond_1
    goto :goto_0

    .line 123
    :cond_2
    return-object v0
.end method

.method public blacklist isCanceled()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mIsCancel:Z

    return v0
.end method

.method public blacklist isrequestFinished()Z
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mSearchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist onCancel()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onCancel()V

    .line 88
    return-void
.end method

.method public whitelist onError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p1, "error"    # Lcom/samsung/android/allshare/ERROR;

    .line 92
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 93
    return-void
.end method

.method public whitelist onFinish()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onFinish()V

    .line 83
    return-void
.end method

.method public whitelist onProgress(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item;",
            ">;)V"
        }
    .end annotation

    .line 77
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onProgress(Ljava/util/ArrayList;)V

    .line 78
    return-void
.end method

.method public whitelist onStart()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onStart()V

    .line 73
    return-void
.end method

.method public blacklist removeSearchRequest(Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$SearchRequest;

    .line 127
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mSearchRequestList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 128
    return-void
.end method

.method public blacklist setCancel()V
    .locals 1

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/impl/WM7SearchMediaGetter$FlatProviderConnectionInfo;->mIsCancel:Z

    .line 97
    return-void
.end method
