.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;Landroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    throw p0

    :pswitch_1
    const-string v0, "domainType"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isUsb(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isSd(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$StorageOperationManagerHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_MOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_EJECTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    if-ne v1, p1, :cond_2

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->connected(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->mOperationList:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;->MEDIA_UNMOUNTED:Lcom/samsung/android/settings/analyzestorage/presenter/managers/broadcast/BroadcastType;

    if-ne v1, p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->showToast(Landroid/content/Context;II)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->checkSupportedStorageList()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
