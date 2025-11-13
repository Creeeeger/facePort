.class Landroid/widget/RemoteViews$RemoteCollectionCache;
.super Ljava/lang/Object;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteCollectionCache"
.end annotation


# instance fields
.field private final blacklist mIdToUriMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mUriToCollectionMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/widget/RemoteViews$RemoteCollectionItems;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method public static synthetic blacklist $r8$lambda$0K3JyZ6BtSC02I0QK9fYDD4Kp3U(Landroid/widget/RemoteViews$RemoteCollectionCache;Ljava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->lambda$connectAllUniqueIntents$0(Ljava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdToUriMapping(Landroid/widget/RemoteViews$RemoteCollectionCache;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Landroid/widget/RemoteViews$HierarchyRootData;

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmBitmapCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;

    move-result-object v2

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmApplicationInfoCache(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$ApplicationInfoCache;

    move-result-object v3

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmClassCookies(Landroid/widget/RemoteViews;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v1, v2, p0, v3, p1}, Landroid/widget/RemoteViews$HierarchyRootData;-><init>(Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$RemoteCollectionCache;Landroid/widget/RemoteViews$ApplicationInfoCache;Ljava/util/Map;)V

    move-object p1, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-direct {v4, p2, p1}, Landroid/widget/RemoteViews$RemoteCollectionItems;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$HierarchyRootData;)V

    iget-object v5, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$RemoteCollectionCache;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    iget-object v2, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    iget-object v2, p2, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mhasSizedRemoteViews(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmSizedRemoteViews(Landroid/widget/RemoteViews;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    invoke-direct {p0, v1, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_0
    goto/16 :goto_4

    :cond_1
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$mhasLandscapeAndPortraitLayouts(Landroid/widget/RemoteViews;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmLandscape(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmPortrait(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    goto/16 :goto_4

    :cond_2
    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-static {p1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$Action;

    instance-of v2, v1, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    if-eqz v2, :cond_8

    move-object v2, v1

    check-cast v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;

    iget v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    iget-boolean v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eq v3, v4, :cond_5

    iget-boolean v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    if-eqz v3, :cond_5

    iput-boolean v6, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIsReplacedIntoAction:Z

    iget v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    iget v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    iget-object v4, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v2, v5}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    goto :goto_1

    :cond_5
    iget-object v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    if-eqz v3, :cond_7

    iget-object v3, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v3, v6}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->indexOfValueByValue(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v4, :cond_6

    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iput v4, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    iget-object v7, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    nop

    iget v4, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    iget-object v7, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {p2, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v2, v5}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    goto :goto_3

    :cond_6
    iget-object v4, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iput v4, v2, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->mIntentId:I

    invoke-static {v2, v5}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fputmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;Landroid/widget/RemoteViews$RemoteCollectionItems;)V

    goto :goto_1

    :cond_7
    invoke-static {v2}, Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;->-$$Nest$fgetmItems(Landroid/widget/RemoteViews$SetRemoteCollectionItemListAdapterAction;)Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v3

    invoke-static {v3}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$fgetmViews(Landroid/widget/RemoteViews$RemoteCollectionItems;)[Landroid/widget/RemoteViews;

    move-result-object v3

    array-length v4, v3

    :goto_2
    if-ge v6, v4, :cond_9

    aget-object v5, v3, v6

    invoke-direct {p0, v5, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    instance-of v2, v1, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    if-eqz v2, :cond_9

    move-object v2, v1

    check-cast v2, Landroid/widget/RemoteViews$ViewGroupActionAdd;

    invoke-static {v2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {v2}, Landroid/widget/RemoteViews$ViewGroupActionAdd;->-$$Nest$fgetmNestedViews(Landroid/widget/RemoteViews$ViewGroupActionAdd;)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    :cond_9
    :goto_3
    goto/16 :goto_1

    :cond_a
    :goto_4
    return-void
.end method

.method private blacklist connectAllUniqueIntents(ILandroid/util/SparseArray;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    invoke-static {v3, p1}, Landroid/widget/RemoteViews$RemoteCollectionCache;->getItemsFutureFromIntentWithTimeout(Landroid/content/Intent;I)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    new-instance v5, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v2}, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda0;-><init>(Landroid/widget/RemoteViews$RemoteCollectionCache;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CompletableFuture;->thenAccept(Ljava/util/function/Consumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/widget/RemoteViews$RemoteCollectionCache$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist getItemsFutureFromIntentWithTimeout(Landroid/content/Intent;I)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/widget/RemoteViews$RemoteCollectionItems;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string v0, "RemoteViews"

    const-string v1, "Null intent received when generating adapter future"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Landroid/content/Context$BindServiceFlags;->of(J)Landroid/content/Context$BindServiceFlags;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/concurrent/CompletableFuture;->defaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Landroid/widget/RemoteViews$RemoteCollectionCache$1;

    invoke-direct {v4, p1, v0, v1}, Landroid/widget/RemoteViews$RemoteCollectionCache$1;-><init>(ILandroid/content/Context;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {v0, p0, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/Context$BindServiceFlags;Ljava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    new-instance v2, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;

    invoke-direct {v2}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/RemoteViews$RemoteCollectionItems$Builder;->build()Landroid/widget/RemoteViews$RemoteCollectionItems;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5, v3}, Ljava/util/concurrent/CompletableFuture;->completeOnTimeout(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/CompletableFuture;

    return-object v1
.end method

.method private synthetic blacklist lambda$connectAllUniqueIntents$0(Ljava/lang/String;Landroid/widget/RemoteViews$RemoteCollectionItems;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    invoke-static {v0}, Landroid/widget/RemoteViews;->-$$Nest$mgetHierarchyRootData(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$HierarchyRootData;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic blacklist lambda$connectAllUniqueIntents$1(I)[Ljava/util/concurrent/CompletableFuture;
    .locals 1

    new-array v0, p0, [Ljava/util/concurrent/CompletableFuture;

    return-object v0
.end method


# virtual methods
.method public blacklist collectAllIntentsNoComplete(Landroid/widget/RemoteViews;)Ljava/util/concurrent/CompletableFuture;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            ")",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews$RemoteCollectionCache;->collectAllIntentsInternal(Landroid/widget/RemoteViews;Landroid/util/SparseArray;)V

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v2, "RemoteViews"

    const-string v3, "Possibly notifying updates for nonexistent view Id"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/concurrent/CompletableFuture;->completedFuture(Ljava/lang/Object;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->this$0:Landroid/widget/RemoteViews;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v0}, Landroid/widget/RemoteViews;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews;Landroid/os/Parcel;ILandroid/util/SparseArray;)V

    const v3, 0xc3500

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    if-gez v3, :cond_1

    goto :goto_0

    :cond_1
    div-int v4, v3, v1

    :goto_0
    nop

    invoke-direct {p0, v4, v0}, Landroid/widget/RemoteViews$RemoteCollectionCache;->connectAllUniqueIntents(ILandroid/util/SparseArray;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v5

    return-object v5
.end method

.method blacklist getItemsForId(I)Landroid/widget/RemoteViews$RemoteCollectionItems;
    .locals 2

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$RemoteCollectionItems;

    return-object v1
.end method

.method blacklist setHierarchyDataForId(ILandroid/widget/RemoteViews$HierarchyRootData;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting hierarchy data for id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViews"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews$RemoteCollectionItems;

    invoke-virtual {v1, p2}, Landroid/widget/RemoteViews$RemoteCollectionItems;->setHierarchyRootData(Landroid/widget/RemoteViews$HierarchyRootData;)V

    return-void
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;ILandroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "I",
            "Landroid/util/SparseArray<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    if-eqz p3, :cond_0

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mIdToUriMapping:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/widget/RemoteViews$RemoteCollectionCache;->mUriToCollectionMapping:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews$RemoteCollectionItems;

    const/4 v4, 0x1

    invoke-static {v3, p1, p2, v4}, Landroid/widget/RemoteViews$RemoteCollectionItems;->-$$Nest$mwriteToParcel(Landroid/widget/RemoteViews$RemoteCollectionItems;Landroid/os/Parcel;IZ)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
