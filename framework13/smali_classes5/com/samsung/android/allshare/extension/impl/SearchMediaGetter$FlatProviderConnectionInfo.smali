.class Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;
.super Ljava/lang/Object;
.source "SearchMediaGetter.java"

# interfaces
.implements Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlatProviderConnectionInfo"
.end annotation


# instance fields
.field private blacklist mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

.field private blacklist mCurrentSearchCriteria:Lcom/samsung/android/allshare/media/SearchCriteria;

.field private blacklist mIsCancel:Z

.field private blacklist mStartIndex:I

.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConn(Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;)Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;Lcom/samsung/android/allshare/media/Provider;)V
    .locals 2
    .param p2, "conn"    # Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;
    .param p3, "provider"    # Lcom/samsung/android/allshare/media/Provider;

    .line 42
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->this$0:Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 40
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mIsCancel:Z

    .line 80
    iput-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mCurrentSearchCriteria:Lcom/samsung/android/allshare/media/SearchCriteria;

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mStartIndex:I

    .line 43
    iput-object p2, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    .line 44
    invoke-static {p1, p3}, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;->-$$Nest$fputmProvider(Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter;Lcom/samsung/android/allshare/media/Provider;)V

    .line 45
    return-void
.end method


# virtual methods
.method public blacklist isCanceled()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mIsCancel:Z

    return v0
.end method

.method public blacklist isCurrentSearchRequest(Lcom/samsung/android/allshare/media/SearchCriteria;I)Z
    .locals 2
    .param p1, "criteria"    # Lcom/samsung/android/allshare/media/SearchCriteria;
    .param p2, "startIndex"    # I

    .line 90
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 91
    return v0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mCurrentSearchCriteria:Lcom/samsung/android/allshare/media/SearchCriteria;

    invoke-virtual {p1, v1}, Lcom/samsung/android/allshare/media/SearchCriteria;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    return v0

    .line 95
    :cond_1
    iget v1, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mStartIndex:I

    if-ne v1, p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public whitelist onCancel()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onCancel()V

    .line 65
    return-void
.end method

.method public whitelist onError(Lcom/samsung/android/allshare/ERROR;)V
    .locals 1
    .param p1, "error"    # Lcom/samsung/android/allshare/ERROR;

    .line 69
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onError(Lcom/samsung/android/allshare/ERROR;)V

    .line 70
    return-void
.end method

.method public whitelist onFinish()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onFinish()V

    .line 60
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

    .line 54
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/allshare/Item;>;"
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0, p1}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onProgress(Ljava/util/ArrayList;)V

    .line 55
    return-void
.end method

.method public whitelist onStart()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mConn:Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;

    invoke-interface {v0}, Lcom/samsung/android/allshare/extension/FlatProvider$IFlatProviderConnection;->onStart()V

    .line 50
    return-void
.end method

.method public blacklist setCancel()V
    .locals 1

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mIsCancel:Z

    .line 74
    return-void
.end method

.method public blacklist setCurrentSearchRequest(Lcom/samsung/android/allshare/media/SearchCriteria;I)V
    .locals 0
    .param p1, "criteria"    # Lcom/samsung/android/allshare/media/SearchCriteria;
    .param p2, "startIndex"    # I

    .line 85
    iput-object p1, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mCurrentSearchCriteria:Lcom/samsung/android/allshare/media/SearchCriteria;

    .line 86
    iput p2, p0, Lcom/samsung/android/allshare/extension/impl/SearchMediaGetter$FlatProviderConnectionInfo;->mStartIndex:I

    .line 87
    return-void
.end method
