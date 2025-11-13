.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

.field public final synthetic $isUpdateFlag:Z

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ComponentInfo;ZLcom/android/systemui/controls/controller/ControlsControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->$componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    iput-boolean p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->$isUpdateFlag:Z

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->$componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    iget-boolean v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->$isUpdateFlag:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iget-object v0, v1, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/systemui/controls/controller/ComponentInfo;->structureInfos:Ljava/util/List;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v3, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v0, v1, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/systemui/controls/controller/Favorites;->getControlsForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/controls/controller/Favorites;->setActiveFlag(Landroid/content/ComponentName;Z)V

    :cond_0
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v1, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    const-string v3, "replaceControls isUpdateFlag = "

    const-string v4, ", favMap.size = "

    const-string v5, ", favMap = "

    invoke-static {v3, v0, v4, v2, v5}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Favorites"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->autoAddList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->$componentInfo:Lcom/android/systemui/controls/controller/ComponentInfo;

    iget-object v0, v0, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->autoAddList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/android/systemui/controls/controller/Favorites;->addFavorites(Landroid/content/ComponentName;Ljava/util/ArrayList;)Z

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$replaceFavoritesForComponent$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    return-void
.end method
