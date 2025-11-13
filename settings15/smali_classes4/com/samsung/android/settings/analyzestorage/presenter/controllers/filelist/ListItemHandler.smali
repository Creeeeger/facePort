.class public Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppDataList:Ljava/util/List;

.field public final mCheckItemSize:Landroidx/lifecycle/MutableLiveData;

.field public final mCheckableItemList:Ljava/util/Set;

.field public final mCheckedItemCount:Landroidx/lifecycle/MutableLiveData;

.field public final mCheckedItemList:Ljava/util/List;

.field public final mGroupInfo:Landroidx/lifecycle/MutableLiveData;

.field public final mIsAllChecked:Landroidx/lifecycle/MutableLiveData;

.field public final mIsDisplayCheckItemSize:Landroidx/lifecycle/MutableLiveData;

.field public mIsSelectedMousePoint:Z

.field public final mListItems:Landroidx/lifecycle/MutableLiveData;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckItemSize:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mIsDisplayCheckItemSize:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0, v1}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mIsAllChecked:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemCount:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckableItemList:Ljava/util/Set;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mListItems:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mGroupInfo:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mIsSelectedMousePoint:Z

    return-void
.end method


# virtual methods
.method public final getCheckedItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getItemAt(I)Lcom/samsung/android/settings/analyzestorage/domain/entity/DataInfo;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mListItems:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/domain/entity/DataInfo;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getItemAt() ] Exception e : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ListItemHandler"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public final getItemCount()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mListItems:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/domain/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getListItems()Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mListItems:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getListItems() ] listItems count : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListItemHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final resetCheckedItemInfo()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemCount:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mIsAllChecked:Landroidx/lifecycle/MutableLiveData;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setAllItemChecked(Z)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getListItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemCount:Landroidx/lifecycle/MutableLiveData;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mIsAllChecked:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setItemChecked(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckableItemList:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getItemAt(I)Lcom/samsung/android/settings/analyzestorage/domain/entity/DataInfo;

    move-result-object p1

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemCount:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getCheckedItemCount()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->updateCheckedAll(I)V

    :cond_2
    return-void
.end method

.method public final setListItems(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setListItems() ] data size : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ListItemHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mListItems:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final updateCheckedAll(I)V
    .locals 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mIsAllChecked:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getCheckedItemCount()I

    move-result p0

    if-ne p0, p1, :cond_0

    if-lez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eq v0, p0, :cond_1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
