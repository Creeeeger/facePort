.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;

.field public final mExtraKeyList:Ljava/util/List;

.field public final mMainKeyList:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->allBands:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftGestureHint:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->centerGestureHint:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightGestureHint:Ljava/lang/String;

    const-string v2, "home"

    const-string v3, "back"

    const-string v4, "recent"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mMainKeyList:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->pin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftRemoteView:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightRemoteView:Ljava/lang/String;

    const-string v11, "left"

    const-string/jumbo v12, "right"

    const-string v3, "menu_ime"

    const-string/jumbo v4, "space"

    const-string v5, "ime_switcher"

    const-string v6, "clipboard"

    const-string v7, "contextual"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mExtraKeyList:Ljava/util/List;

    sget v1, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_STABLE_LAYOUT:Z

    iput-boolean v3, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_NAVBAR_CONFIG_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v4, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarConfigChanged;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    const-class v7, Lcom/android/systemui/navigationbar/NavigationBar;

    aput-object v7, v4, v5

    invoke-static {v4}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$1;

    invoke-direct {v4, v2}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$2;

    invoke-direct {v4, v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$1$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v4, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v1

    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_KNOX_MONITOR:Z

    iput-boolean v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    iput v6, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$3$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_GET_INFLATE_LAYOUT_ID:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateLayoutID;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$5$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$5$1;

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_GET_DEFAULT_LAYOUT:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDefaultLayout;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$7$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$7$1;

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_INFLATE_NAVBAR:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$9$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$9$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;)V

    iput-object v2, v1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v1, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_GET_BAR_LAYOUT_PARAMS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetBarLayoutParams;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$11$1;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_INFLATE_NAVBAR_SIDE_PADDING:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarSidePadding;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v1, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$13$1;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_BAR_LAYOUT_PARAMS_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnBarLayoutParamsProviderChanged;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$15$1;

    invoke-direct {v2, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$15$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_BUTTON_TO_HIDE_KEYBOARD_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnButtonToHideKeyboardChanged;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$17$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$17$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object p1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_GET_NAVBAR_INSETS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarInsets;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    sget-object p1, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$19$1;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object p1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_GET_IME_INSETS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetImeInsets;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    sget-object p1, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$21$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$21$1;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object p1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->STABLE_LAYOUT_PACK_GET_MANDATORY_INSETS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetMandatoryInsets;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    sget-object p1, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$23$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$23$1;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->allBands:Ljava/util/List;

    return-object p0
.end method
