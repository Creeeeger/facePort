.class public final synthetic Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

.field public final synthetic f$1:Lcom/android/wm/shell/freeform/FreeformContainerItem;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/freeform/FreeformContainerItemController;Lcom/android/wm/shell/freeform/FreeformContainerItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iput-object p2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/freeform/FreeformContainerItemController;

    iget-object p0, p0, Lcom/android/wm/shell/freeform/FreeformContainerItemController$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/freeform/FreeformContainerItem;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    iget v3, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mUserId:I

    const/16 v4, 0x400

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/wm/shell/freeform/FreeformContainerItem;->mDescription:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load info failed! use system icon, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FreeformContainer"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_CONTAINER_MULTIINSTANCE_PREVIEW:Z

    if-eqz v1, :cond_1

    instance-of v1, p0, Lcom/android/wm/shell/freeform/MultiInstanceItem;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-virtual {p0}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->getItemList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/freeform/FreeformContainerItem;

    iget-object v4, v0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mFreeformContainerIconLoader:Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->loadShowingIcon(Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_3
    iget-object v1, v0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mFreeformContainerIconLoader:Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/freeform/FreeformContainerItem;->loadShowingIcon(Lcom/android/wm/shell/freeform/FreeformContainerIconLoader;)V

    iget-object v0, v0, Lcom/android/wm/shell/freeform/FreeformContainerItemController;->mH:Lcom/android/wm/shell/freeform/FreeformContainerManager$H;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/freeform/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    const-string v0, "FreeformContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ItemController] IconInfo is Loaded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
