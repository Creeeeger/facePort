.class public final Lcom/android/wm/shell/freeform/MinimizeContainerItem;
.super Lcom/android/wm/shell/freeform/FreeformContainerItem;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mTaskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/wm/shell/freeform/FreeformContainerItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;I)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mItemType:I

    iput p4, p0, Lcom/android/wm/shell/freeform/MinimizeContainerItem;->mTaskId:I

    iput-boolean p6, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mAnimationCompleted:Z

    return-void
.end method


# virtual methods
.method public final getTaskId()I
    .locals 0

    iget p0, p0, Lcom/android/wm/shell/freeform/MinimizeContainerItem;->mTaskId:I

    return p0
.end method

.method public final launch()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/wm/shell/freeform/FreeformContainerSystemProxy$$ExternalSyntheticLambda2;

    iget v3, p0, Lcom/android/wm/shell/freeform/MinimizeContainerItem;->mTaskId:I

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

    const-string v1, "MinimizeContainerItem {mPackageName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTaskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/freeform/MinimizeContainerItem;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mUserId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
