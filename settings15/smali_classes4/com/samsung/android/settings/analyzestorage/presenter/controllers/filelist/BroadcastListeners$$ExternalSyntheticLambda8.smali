.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_CACHED_FILES:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    invoke-interface {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;->refresh$1(Z)V

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    const/4 p0, 0x0

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setAllItemChecked(Z)V

    :cond_0
    return-void
.end method
