.class public final Lcom/samsung/android/settings/analyzestorage/ui/widget/MountPopupMenu;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field public final context:Landroid/content/Context;

.field public final popupMenu:Landroidx/appcompat/widget/PopupMenu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 6

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/MountPopupMenu;->context:Landroid/content/Context;

    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/MountPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    const p1, 0x7f0f0003

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->inflate(I)V

    iget-object p1, v0, Landroidx/appcompat/widget/PopupMenu;->mMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    const-string p2, "getMenu(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->mounted(I)Z

    move-result v0

    const v2, 0x7f0a06a6

    if-eqz v0, :cond_3

    const v0, 0x7f0a09b3

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItem(I)V

    invoke-static {p2}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isUsb(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-class v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;

    monitor-enter v0

    :try_start_0
    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->sStorageMountInfoList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;

    iget v5, v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mDomainType:I

    if-ne p2, v5, :cond_0

    iget-object p2, v4, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager$StorageMountInfo;->mFsType:Ljava/lang/String;

    const-string/jumbo v1, "ntfs"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    monitor-exit v0

    goto :goto_1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItem(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItem(I)V

    const p2, 0x7f0a10b7

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/MenuBuilder;->removeItem(I)V

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/MountPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    iput-object p0, p1, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)V
    .locals 4

    if-eqz p1, :cond_3

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager$StorageOperationManagerHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/MountPopupMenu;->context:Landroid/content/Context;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v2, 0x7f0a06a6

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const v2, 0x7f0a09b3

    if-ne p1, v2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const v2, 0x7f0a10b7

    if-ne p1, v2, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    const/16 p1, 0x3e7

    :goto_0
    invoke-virtual {v0, v1, p1, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageOperationManager;->storageOperation(Landroid/content/Context;II)V

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/widget/MountPopupMenu;->popupMenu:Landroidx/appcompat/widget/PopupMenu;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/appcompat/widget/PopupMenu;->mMenuItemClickListener:Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;

    return-void
.end method
