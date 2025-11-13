.class public final Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;)V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    goto :goto_3

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchables:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->updateTileSearchResults(Ljava/lang/String;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->mTileSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;->getSimpleSearchResult(ILjava/lang/String;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_3
    return-object v0
.end method

.method public final onPreExecute()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;->this$0:Lcom/android/systemui/indexsearch/SystemUIIndexProvider;

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

    return-void
.end method
