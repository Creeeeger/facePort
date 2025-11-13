.class public Lcom/android/systemui/indexsearch/SystemUIIndexProvider;
.super Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIndexMediator:Lcom/android/systemui/indexsearch/SystemUIIndexMediator;

.field public mSearchAsyncTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/lib/galaxyfinder/search/api/SamsungSearchProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSearchResult(Ljava/lang/String;ILandroid/os/CancellationSignal;)Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    .locals 1

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/DesktopManager;

    invoke-virtual {p2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/util/DesktopManager;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    new-instance p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mSearchAsyncTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p3}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_2

    :cond_2
    new-instance p2, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;I)V

    iput-object p2, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mSearchAsyncTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    :try_start_0
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SearchResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    :goto_2
    new-instance p0, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/galaxyfinder/search/api/search/SimpleSearchResult;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final makeAppLaunchIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.indexsearch.OPEN_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Lcom/android/systemui/indexsearch/DetailPanelLaunchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final makeInAppSearchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 2

    new-instance v0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;-><init>(Lcom/android/systemui/indexsearch/SystemUIIndexProvider;I)V

    iput-object v0, p0, Lcom/android/systemui/indexsearch/SystemUIIndexProvider;->mSearchAsyncTask:Lcom/android/systemui/indexsearch/SystemUIIndexProvider$SearchAsyncTask;

    const/4 p0, 0x1

    return p0
.end method
