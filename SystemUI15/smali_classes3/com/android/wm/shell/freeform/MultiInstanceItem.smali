.class public final Lcom/android/wm/shell/freeform/MultiInstanceItem;
.super Lcom/android/wm/shell/freeform/FreeformContainerItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mChildItemList:Ljava/util/List;

.field public final mParentItem:Lcom/android/wm/shell/freeform/MultiInstanceItem;

.field public mSnapshotBitmap:Landroid/graphics/Bitmap;

.field public final mTaskId:I


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerItem;Lcom/android/wm/shell/freeform/MultiInstanceItem;)V
    .locals 4

    iget-object v0, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mComponentName:Landroid/content/ComponentName;

    iget v3, p1, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mUserId:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/wm/shell/freeform/FreeformContainerItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mItemType:I

    invoke-virtual {p1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getTaskId()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mTaskId:I

    iput-object p2, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mParentItem:Lcom/android/wm/shell/freeform/MultiInstanceItem;

    return-void
.end method


# virtual methods
.method public final addChildItem(Lcom/android/wm/shell/freeform/MultiInstanceItem;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FreeformContainer"

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "[MultiInstanceItem]  addChildItem: failed, duplicated, "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "addChildItem: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", this="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final asMultiInstanceItem()Lcom/android/wm/shell/freeform/MultiInstanceItem;
    .locals 0

    return-object p0
.end method

.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getItemList()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    return-object p0
.end method

.method public final getTaskId()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mTaskId:I

    return p0
.end method

.method public final isParentMultiInstanceItem()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mParentItem:Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final launch()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda2;

    iget v3, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mTaskId:I

    invoke-direct {v2, v0, v3}, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda2;-><init>(Landroid/content/Context;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SA_LOGGING:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_NOT_SUPPORT_FOR_COVER_DISPLAY:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr v1, p0

    :cond_0
    if-eqz v1, :cond_1

    const-string p0, "2201"

    invoke-static {p0}, Lcom/samsung/android/core/CoreSaLogger;->logForAdvanced(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final loadShowingIcon(Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mComponentName:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mUserId:I

    iget-object v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getAppIcon(Landroid/content/Context;Landroid/content/ComponentName;ILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->getShowingIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object p1, p1, Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mShowingIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setIconView(Landroid/widget/ImageView;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    new-instance v1, Lcom/android/wm/shell/freeform/MultiInstanceItem$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/wm/shell/freeform/MultiInstanceItem$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconView:Landroid/widget/ImageView;

    return-void
.end method

.method public final throwAway(Lcom/android/wm/shell/freeform/FreeformContainerItemController;)V
    .locals 1

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->removeItem(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    sget-object p1, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/freeform/FreeformContainerItem;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiInstanceItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/MultiInstanceItem;->isParentMultiInstanceItem()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mSnapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mSnapshotBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " itemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unsetIconLoadCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;->mChildItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->unsetIconLoadCompleted()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mIconLoadCompleted:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPublishCompleted:Z

    return-void
.end method
