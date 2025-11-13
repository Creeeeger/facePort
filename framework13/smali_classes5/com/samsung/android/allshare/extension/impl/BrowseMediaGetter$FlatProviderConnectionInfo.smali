.class Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;
.super Ljava/lang/Object;
.source "BrowseMediaGetter.java"

# interfaces
.implements Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlatProviderConnectionInfo"
.end annotation


# instance fields
.field private blacklist mBrowseRetryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/allshare/Item;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

.field private blacklist mCurrentBrowseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/allshare/Item;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFailedBrowseFolderStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/samsung/android/allshare/Item;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFailedBrowseFolderStartIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/samsung/android/allshare/Item;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFutureBrowseFolderStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/samsung/android/allshare/Item;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsCanceled:Z

.field private blacklist mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mProvider:Lcom/samsung/android/allshare/media/Provider;

.field private blacklist mTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$MediaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConn(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentBrowseMap(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mCurrentBrowseMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailedBrowseFolderStack(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mFailedBrowseFolderStack:Ljava/util/Stack;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFailedBrowseFolderStartIndexMap(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mFailedBrowseFolderStartIndexMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFutureBrowseFolderStack(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Ljava/util/Stack;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mFutureBrowseFolderStack:Ljava/util/Stack;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProvider(Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;)Lcom/samsung/android/allshare/media/Provider;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/util/ArrayList;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;Lcom/samsung/android/allshare/media/Provider;)V
    .locals 2
    .param p2, "conn"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .param p3, "provider"    # Lcom/samsung/android/allshare/media/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/allshare/Item$MediaType;",
            ">;",
            "Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;",
            "Lcom/samsung/android/allshare/media/Provider;",
            ")V"
        }
    .end annotation

    .line 67
    .local p1, "types":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item$MediaType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mItems:Ljava/util/HashMap;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mCurrentBrowseMap:Ljava/util/HashMap;

    .line 52
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mBrowseRetryMap:Ljava/util/HashMap;

    .line 54
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mFutureBrowseFolderStack:Ljava/util/Stack;

    .line 56
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mFailedBrowseFolderStack:Ljava/util/Stack;

    .line 58
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mFailedBrowseFolderStartIndexMap:Ljava/util/HashMap;

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mTypes:Ljava/util/ArrayList;

    .line 62
    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mIsCanceled:Z

    .line 68
    iput-object p2, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 69
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mTypes:Ljava/util/ArrayList;

    .line 70
    iput-object p3, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mProvider:Lcom/samsung/android/allshare/media/Provider;

    .line 71
    return-void
.end method


# virtual methods
.method public blacklist isCanceled()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mIsCanceled:Z

    return v0
.end method

.method public blacklist isCurrentBrowseRequest(Lcom/samsung/android/allshare/Item;I)Z
    .locals 3
    .param p1, "folder"    # Lcom/samsung/android/allshare/Item;
    .param p2, "startIndex"    # I

    .line 106
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 107
    return v0

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mCurrentBrowseMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 112
    .local v1, "currentStartIdx":Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 113
    return v0

    .line 115
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne p2, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public blacklist isMathchingItem(Lcom/samsung/android/allshare/Item;)Z
    .locals 3
    .param p1, "i"    # Lcom/samsung/android/allshare/Item;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mTypes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/allshare/Item$MediaType;

    .line 121
    .local v1, "type":Lcom/samsung/android/allshare/Item$MediaType;
    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getType()Lcom/samsung/android/allshare/Item$MediaType;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/allshare/Item$MediaType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    const/4 v0, 0x1

    return v0

    .line 121
    .end local v1    # "type":Lcom/samsung/android/allshare/Item$MediaType;
    :cond_0
    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRetry(Lcom/samsung/android/allshare/Item;)Z
    .locals 2
    .param p1, "folderItem"    # Lcom/samsung/android/allshare/Item;

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "result":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mBrowseRetryMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    .line 147
    if-nez v0, :cond_0

    .line 148
    const/4 v1, 0x0

    return v1

    .line 150
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public whitelist onCancel()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onCancel()V

    .line 94
    return-void
.end method

.method public whitelist onError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p1, "error"    # Lcom/samsung/android/allshare/ERROR;

    .line 98
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 99
    return-void
.end method

.method public whitelist onFinish()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 87
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onFinish()V

    .line 88
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

    .line 81
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onProgress(Ljava/util/ArrayList;)V

    .line 82
    return-void
.end method

.method public whitelist onStart()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onStart()V

    .line 77
    return-void
.end method

.method public blacklist removeRetry(Lcom/samsung/android/allshare/Item;)V
    .locals 1
    .param p1, "folderItem"    # Lcom/samsung/android/allshare/Item;

    .line 140
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mBrowseRetryMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public blacklist setCancel()V
    .locals 1

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mIsCanceled:Z

    .line 129
    return-void
.end method

.method public blacklist setCurrentBrowseRequest(Lcom/samsung/android/allshare/Item;I)V
    .locals 2
    .param p1, "folder"    # Lcom/samsung/android/allshare/Item;
    .param p2, "startIndex"    # I

    .line 102
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mCurrentBrowseMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public blacklist setRetry(Lcom/samsung/android/allshare/Item;)V
    .locals 2
    .param p1, "folderItem"    # Lcom/samsung/android/allshare/Item;

    .line 136
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/BrowseMediaGetter$FlatProviderConnectionInfo;->mBrowseRetryMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    return-void
.end method
