.class public final Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;


# static fields
.field public static final Companion:Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$Companion;

.field public static volatile INSTANCE:Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;


# instance fields
.field public final logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field public final navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field public final pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->Companion:Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/basic/util/LogWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance p2, Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;

    invoke-direct {p2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ForceHideGestureHint;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ForceHideGestureHint;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final addBand(Ljava/lang/String;Ljava/lang/Runnable;ILjava/util/List;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->addBand(Ljava/lang/String;Ljava/lang/Runnable;ILjava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method public final addBand(Ljava/lang/String;Ljava/lang/Runnable;ILjava/util/List;Ljava/lang/Object;)V
    .locals 1

    const-string p3, "NavBarStoreAdapterImpl"

    iget-object p4, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string p5, "addBand() event: "

    :try_start_0
    invoke-virtual {p5, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p3, p5}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->removeBand(Ljava/lang/String;)V

    sget p5, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    new-instance p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/BandAid;->PLUGIN_PACK_RUN_PLUGIN_ACTIONS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v0, p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v0, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    iput-object p1, p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->sPluginTag:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$addBand$1$1;

    invoke-direct {p1, p2}, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$addBand$1$1;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p5, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    invoke-virtual {p5}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;->allBands:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "An error occurred while running the addBand(): "

    invoke-virtual {p4, p3, p1}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public final addPack()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred while running the addPack(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "NavBarStoreAdapterImpl"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final apply(Ljava/lang/String;I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    const-string v0, ""

    invoke-static {p0, p1, v0, p2}, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;->runFakeStoreAction(Lcom/android/systemui/navigationbar/store/NavBarStore;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final apply(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;->runFakeStoreAction(Lcom/android/systemui/navigationbar/store/NavBarStore;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final getNavBarState(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 4

    const-string v0, "NavBarStoreAdapterImpl"

    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v2, "getNavBarState() value: "

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    const-string p2, "disable1"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable1:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p2, "disable2"

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->disable2:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object v3

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "An error occurred while running the getNavBarState(): "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public final getValue(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 5

    const-string v0, "NavBarStoreAdapterImpl"

    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v2, "getValue() value: "

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v2, 0x0

    const/4 v4, 0x1

    sparse-switch p2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p2, "leftRemoteViewExist"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :sswitch_1
    const-string/jumbo p2, "sPayShowing"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->sPayShowing:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo p2, "rightRemoteViewExist"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->navBarRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    invoke-virtual {p0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v4

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0

    :sswitch_3
    const-string p2, "getHomeHandlePort"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->getGestureWidth(Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :sswitch_4
    const-string p2, "getHomeHandleLand"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->getGestureWidth(Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "An error occurred while running the getValue(): "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0xda47368 -> :sswitch_4
        0xda679fe -> :sswitch_3
        0x4c372ff0 -> :sswitch_2
        0x5f7d02d0 -> :sswitch_1
        0x64ad5ea5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final initPack()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;->allBands:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->bandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

    check-cast v1, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->getPacks(Lcom/android/systemui/navigationbar/store/NavBarStore;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred while running the initPack(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "NavBarStoreAdapterImpl"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final removeBand(Ljava/lang/String;)V
    .locals 3

    const-string v0, "NavBarStoreAdapterImpl"

    iget-object v1, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v2, "removeBand() event: "

    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->pluginPack:Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SPluginPack;->allBands:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$removeBand$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl$removeBand$1;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred while running the removeBand(): "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/basic/util/LogWrapper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final removePack()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->bandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

    check-cast v1, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->getPacks(Lcom/android/systemui/navigationbar/store/NavBarStore;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->packs:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred while running the removePack(): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/plugin/NavBarStoreAdapterImpl;->logWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v1, "NavBarStoreAdapterImpl"

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
