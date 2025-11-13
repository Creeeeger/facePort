.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $controls:Ljava/util/ArrayList;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Ljava/util/ArrayList;Lcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/ArrayList<",
            "Landroid/service/controls/Control;",
            ">;",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$controls:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$controls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/systemui/controls/controller/Favorites;->addFavorites(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->autoAddList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$controls:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->secUiController:Lcom/android/systemui/controls/ui/SecControlsUiController;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$addFavorites$1;->$componentName:Landroid/content/ComponentName;

    check-cast v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->mainFragment:Lcom/android/systemui/controls/ui/fragment/MainFragment;

    if-eqz v1, :cond_0

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    new-instance v1, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyToUpdateComponent$1;

    invoke-direct {v1, v0, p0}, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl$notifyToUpdateComponent$1;-><init>(Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;Landroid/content/ComponentName;)V

    iget-object p0, v0, Lcom/android/systemui/controls/ui/SecControlsUiControllerImpl;->uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "SecControlsUiControllerImpl"

    const-string v0, "notifyToUpdateComponent - ignore"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
