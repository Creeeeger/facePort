.class public final Lcom/android/systemui/indexsearch/SystemUIIndexMediator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mTileSearchResults:Ljava/util/ArrayList;

.field public final mTileSearchables:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/keyguard/ScreenLifecycle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$BroadcastReceiverHelper;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;Landroid/content/Context;)V

    new-instance p1, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexMediator;Lcom/android/systemui/keyguard/ScreenLifecycle;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final getSimpleSearchResult(ILjava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;
    .locals 10

    new-instance v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;

    invoke-direct {v0, p2}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getIconUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSearchTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mTileSpec:Ljava/lang/String;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui.indexsearch.OPEN_DETAIL"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v2, "tileSpec"

    invoke-virtual {v9, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "requestFrom"

    const-string/jumbo v2, "search"

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;

    new-instance v8, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;

    invoke-direct {v8, v9}, Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;-><init>(Landroid/content/Intent;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, "content://com.android.systemui.indexsearch"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/lib/galaxyfinder/search/api/payload/IntentResultItemPayload;)V

    iget-object v2, v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->baseType:Ljava/lang/Class;

    const-class v3, Lcom/samsung/android/lib/galaxyfinder/search/api/search/item/SimpleSearchResultItem;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->mItems:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Landroid/content/Intent;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/ClassCastException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Class \'SimpleSearchResultItem\' cannot be converted to \'"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->baseType:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iput p1, v0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;->totalCount:I

    return-object v0
.end method

.method public final updateTileSearchResults(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSearchTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getIconUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSearchWords()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getSearchWords()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method
