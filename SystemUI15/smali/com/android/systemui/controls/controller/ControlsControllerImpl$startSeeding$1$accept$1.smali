.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Ljava/util/function/Consumer;

.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $controls:Ljava/util/List;

.field public final synthetic $didAnyFail:Z

.field public final synthetic $remaining:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/function/Consumer;Landroid/content/ComponentName;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/controls/Control;",
            ">;",
            "Lcom/android/systemui/controls/controller/ControlsControllerImpl;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/controls/controller/SeedResponse;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;Z)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$controls:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$callback:Ljava/util/function/Consumer;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$componentName:Landroid/content/ComponentName;

    iput-object p5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$remaining:Ljava/util/List;

    iput-boolean p6, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$didAnyFail:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$controls:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/controls/Control;

    invoke-virtual {v3}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_0

    new-instance v6, Lcom/android/systemui/controls/controller/ControlInfo;

    invoke-virtual {v3}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v3}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v3}, Landroid/service/controls/Control;->getDeviceType()I

    move-result v12

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x10

    move-object v8, v6

    invoke-direct/range {v8 .. v15}, Lcom/android/systemui/controls/controller/ControlInfo;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Ljava/util/List;

    sget-object v3, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    new-instance v4, Lcom/android/systemui/controls/controller/StructureInfo;

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {v19 .. v19}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v22, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x8

    move-object/from16 v16, v4

    move-object/from16 v17, v2

    invoke-direct/range {v16 .. v22}, Lcom/android/systemui/controls/controller/StructureInfo;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/util/List;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/systemui/controls/controller/Favorites;->replaceControls(Lcom/android/systemui/controls/controller/StructureInfo;)V

    goto :goto_1

    :cond_4
    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v1, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    sget-object v2, Lcom/android/systemui/controls/controller/Favorites;->INSTANCE:Lcom/android/systemui/controls/controller/Favorites;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$callback:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/systemui/controls/controller/SeedResponse;

    iget-object v3, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/controls/controller/SeedResponse;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iget-object v2, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$remaining:Ljava/util/List;

    iget-object v3, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$callback:Ljava/util/function/Consumer;

    iget-boolean v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$accept$1;->$didAnyFail:Z

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->startSeeding(Ljava/util/List;Ljava/util/function/Consumer;Z)V

    return-void
.end method
