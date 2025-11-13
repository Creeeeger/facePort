.class public final Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;

.field public final store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->allBands:Ljava/util/List;

    sget v0, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_TASKBAR:Z

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_PACKAGE_REMOVED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnPackageRemoved;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    aput-object v6, v4, v5

    const-class v7, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    const/4 v8, 0x1

    aput-object v7, v4, v8

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    iput v5, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$1$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$1$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_OPEN_THEME_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v4, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Class;

    const-class v9, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUseThemeDefaultChanged;

    aput-object v9, v7, v5

    const-class v9, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnConfigChanged;

    aput-object v9, v7, v8

    const-class v10, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnOpenThemeChanged;

    aput-object v10, v7, v3

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v2, v7, v5

    const-class v10, Lcom/android/systemui/navigationbar/NavigationBar;

    aput-object v10, v7, v8

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$3$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$3$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_ROTATION_LOCKED_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnRotationLockedChanged;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$5$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$5$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_SET_REMOTEVIEW:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v7, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$7$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$7$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_UPDATE_VISIBILITY_BY_KNOX:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarKnoxPolicyChanged;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$9$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$9$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_ATTACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnTaskbarAttachedToWindow;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v5

    const-class v10, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;

    aput-object v10, v7, v8

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$11$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$11$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_DETACHED_FROM_WINDOW:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnTaskbarDetachedFromWindow;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v5

    aput-object v10, v7, v8

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$13$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$13$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_CONFIG_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    invoke-static {v9}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object v6, v7, v5

    aput-object v10, v7, v8

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v6, v7, v5

    const-class v9, Lcom/android/systemui/statusbar/phone/LightBarController;

    aput-object v9, v7, v8

    const-class v9, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    aput-object v9, v7, v3

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$15$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$15$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_UPDATE_SIDE_BACK_INSETS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSideBackGestureInsets;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    new-array v7, v4, [Ljava/lang/Class;

    const-class v9, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    aput-object v9, v7, v5

    aput-object v6, v7, v8

    aput-object v10, v7, v3

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$17$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$17$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_UPDATE_TASKBAR_AVAILABLE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateTaskbarAvailable;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v2, v4, v5

    const-class v2, Lcom/android/systemui/navigationbar/NavBarHelper;

    aput-object v2, v4, v8

    const-class v2, Lcom/android/systemui/navigationbar/NavigationModeController;

    aput-object v2, v4, v3

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->TASKBAR_PACK_UPDATE_A11Y_STATE_ON_USER_SWITCHED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUserSwitched;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$21$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$21$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final access$makeRemoteViewEventToRemove(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;Ljava/lang/String;I)Lcom/android/systemui/shared/navigationbar/NavBarEvents;
    .locals 16

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    const/16 v13, 0xfff

    const/4 v14, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v15

    invoke-direct/range {v0 .. v14}, Lcom/android/systemui/shared/navigationbar/NavBarEvents;-><init>(Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;Lcom/android/systemui/shared/navigationbar/NavBarEvents$IconType;Landroid/os/Bundle;Landroid/os/Bundle;ZIZZILandroid/os/Bundle;ZLandroid/os/Bundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "requestClass"

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "remoteViews"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "position"

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "priority"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;->ON_UPDATE_NAVBAR_REMOTEVIEWS:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iput-object v1, v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->eventType:Lcom/android/systemui/shared/navigationbar/NavBarEvents$EventType;

    iput-object v0, v15, Lcom/android/systemui/shared/navigationbar/NavBarEvents;->remoteViewBundle:Landroid/os/Bundle;

    return-object v15
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->allBands:Ljava/util/List;

    return-object p0
.end method
