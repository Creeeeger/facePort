.class public final Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;->allBands:Ljava/util/List;

    sget p0, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_SET_HINT_GROUP:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-class v6, Lcom/android/systemui/navigationbar/gestural/GestureHintAnimator;

    aput-object v6, v3, v4

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$1$1;

    invoke-direct {v3, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_EDGE_BACK_GESTURE_DISABLE_BY_POLICY:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnEdgeBackGestureDisabledByPolicyChanged;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$3$1;

    invoke-direct {v7, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$3$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    if-eqz v1, :cond_0

    sget-boolean v7, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v7, :cond_0

    move v7, v4

    goto :goto_0

    :cond_0
    move v7, v5

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_SHOW_FLOATING_GAMETOOLS_ICON:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarTransitionModeChanged;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Lcom/android/systemui/navigationbar/NavigationBar;

    aput-object v8, v7, v5

    const-class v9, Lcom/android/systemui/navigationbar/TaskbarDelegate;

    aput-object v9, v7, v4

    const-class v9, Lcom/android/systemui/navigationbar/SecTaskBarManagerImpl;

    aput-object v9, v7, v2

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$5$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$5$1;

    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_SET_HINT_VISIBILITY:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    new-array v7, v2, [Ljava/lang/Class;

    const-class v9, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSpayVisibility;

    aput-object v9, v7, v5

    const-class v9, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetGestureHintVisibility;

    aput-object v9, v7, v4

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    new-array v7, v2, [Ljava/lang/Class;

    aput-object v8, v7, v5

    const-class v8, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    aput-object v8, v7, v4

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v7, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$7$1;

    invoke-direct {v7, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$7$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v7, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_RESET_HINT_VI:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v7, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$ResetBottomGestureHintVI;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v7, Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v8, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$9$1;

    invoke-direct {v8, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$9$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v8, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v8, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_START_HINT_VI:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v8, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v8, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$StartBottomGestureHintVI;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v8, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$11$1;

    invoke-direct {v8, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$11$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v8, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v8, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_MOVE_HINT_VI:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v8, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v8, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$MoveBottomGestureHintDistance;

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$13$1;

    invoke-direct {v6, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$13$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_KNOX_HARD_KEY_INTENT_POLICY:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v6, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnHardKeyIntentPolicyChanged;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v6, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$15$1;

    invoke-direct {v6, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$15$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_UPDATE_SYSTEMUI_STATE_FLAG:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v6, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateSysUiStateFlag;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v7, v2, v5

    const-class v6, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    aput-object v6, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$17$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$17$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_UPDATE_ONEHAND_MODE_INFO:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnOneHandModeChanged;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-instance v6, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$19$1;

    invoke-direct {v6, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$19$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_UPDATE_REGION_SAMPLING_RECT:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v6, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$21$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$21$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_RECALCULATE_INSET_SCALE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnFoldStateChanged;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$23$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$23$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    move v5, v4

    :cond_2
    iput-boolean v5, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_UPDATE_GAMETOOLS_VISIBILITY:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetRemoteView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$25$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$25$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_BOTTOM_SENSITIVITY_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBottomSensitivityChanged;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$27$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$27$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->GESTURE_PACK_UPDATE_ACTIVE_INDICATOR_SPRING_PARAMS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateBackGestureActiveIndicatorParams;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$29$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$29$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;->allBands:Ljava/util/List;

    return-object p0
.end method
