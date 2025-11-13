.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Landroid/os/Bundle;)V
    .locals 5

    iget p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    const-string v0, "Listener"

    if-eqz p2, :cond_0

    const-string/jumbo v1, "path"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p1, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda5;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mNeedRefreshListener - onReceive() ] scannedPath : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , currentPath : "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->getEncodedMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , needRefresh : "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , controller : "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda7;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p1, p0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string p0, "NeedRefreshListener - refresh"

    invoke-static {v0, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda7;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mControllerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda7;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object p1

    const-string v0, "domainType"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "mStorageChangeListener - onReceive() ] USB mounted. domainType : "

    const-string v2, " , pageType : "

    invoke-static {p2, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Listener"

    invoke-static {v2, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isUsb(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isSd(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/StoragePathUtils;->getDomainType(Ljava/lang/String;)I

    move-result v0

    if-eq p2, v0, :cond_3

    const-string v0, "/storage/extSdCard"

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$StorageOperationManagerHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;->mContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p1, p0, p2, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->showToast(Landroid/content/Context;II)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
