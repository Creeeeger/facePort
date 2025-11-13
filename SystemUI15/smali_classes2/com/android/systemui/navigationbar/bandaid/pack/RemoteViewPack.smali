.class public final Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;

.field public final store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->allBands:Ljava/util/List;

    sget v0, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->REMOTE_VIEW_PACK_INIT_REMOTE_VIEW_MANAGER:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnInvalidateRemoteViews;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    aput-object v4, v3, v5

    const-class v4, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    aput-object v4, v3, v6

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    aput-object v4, v3, v5

    const-class v7, Lcom/android/systemui/navigationbar/NavigationBarView;

    aput-object v7, v3, v6

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$1$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$1$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->REMOTE_VIEW_PACK_SET_REMOTEVIEW_CONTAINER:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v4, v3, v5

    const-class v7, Lcom/android/systemui/navigationbar/NavigationBarView;

    aput-object v7, v3, v6

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$3$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$3$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->REMOTE_VIEW_PACK_SET_NAVBAR_SHORTCUT_TO_MANAGER:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v8, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v9, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$5$1;

    invoke-direct {v9, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$5$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V

    iput-object v9, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    iput v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$7$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$7$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->REMOTE_VIEW_PACK_UPDATE_DARK_INTENSITY:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateDarkIntensity;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    new-array v3, v2, [Ljava/lang/Class;

    const-class v7, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    aput-object v7, v3, v5

    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    aput-object v5, v3, v6

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$9$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$9$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->REMOTE_VIEW_PACK_PACKAGE_REMOVED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnPackageRemoved;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    iput v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$11$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$11$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->allBands:Ljava/util/List;

    return-object p0
.end method
