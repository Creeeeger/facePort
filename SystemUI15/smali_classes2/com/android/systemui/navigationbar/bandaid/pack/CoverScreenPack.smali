.class public final Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;

.field public coverWindowState:I

.field public final gestureSidePadding:I

.field public final sidePadding:I

.field public final store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->allBands:Ljava/util/List;

    const/16 v0, 0x18f

    iput v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->sidePadding:I

    const/16 v0, 0x42

    iput v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->gestureSidePadding:I

    sget v0, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_LARGE_COVER_SCREEN:Z

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_NAVBAR_VISIBILITY_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarLargeCoverScreenVisibilityChanged;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/android/systemui/navigationbar/NavigationBar;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    const-class v6, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    aput-object v6, v3, v4

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$1$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$1$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$3$2;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_NAVBAR_DETACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarDetachedFromWindow;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$5$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$5$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_GET_NAVBAR_PADDING:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetNavBarLargeCoverScreenPadding;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$7$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$7$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_FOLD_STATE_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnFoldStateChanged;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v3, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$9$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$9$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_GET_DEADZONE_SIZE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetDeadZoneSize;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v3, Lcom/android/systemui/navigationbar/buttons/DeadZone;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    iput v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$11$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$11$1;

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_COVER_WINDOW_STATE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarWindowStateShowing;

    aput-object v3, v2, v5

    const-class v3, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarWindowStateHidden;

    aput-object v3, v2, v4

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/NavBarHelper;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COVER_SCREEN_PACK_ROTATION_CHANGED:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnCoverRotationChanged;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$15$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$15$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final access$updateLargeCoverNavBarVisibility(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;Lcom/android/systemui/navigationbar/bandaid/Band$Kit;I)V
    .locals 29

    move-object/from16 v0, p1

    move/from16 v14, p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SetNavBarVisibility;

    new-instance v13, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    move-object v1, v13

    const v25, 0x7fefff

    const/16 v26, 0x0

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

    const/16 v16, 0x0

    move-object/from16 v27, v13

    move/from16 v13, v16

    move-object/from16 v28, v15

    move/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v14, p2

    invoke-direct/range {v1 .. v26}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v27

    move-object/from16 v1, v28

    invoke-direct {v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SetNavBarVisibility;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-class v1, Lcom/android/systemui/navigationbar/NavigationBar;

    iget v0, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mRegionSamplingHelper:Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x1

    move/from16 v5, p2

    if-ne v5, v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    iput-boolean v6, v1, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->mIsWindowGone:Z

    invoke-virtual {v1}, Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper;->updateSamplingListener()V

    if-ne v5, v3, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iget-object v6, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    iput-boolean v1, v6, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->mIsLargeCoverBackGestureEnabled:Z

    invoke-virtual {v6}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateIsEnabled()V

    invoke-virtual {v6}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateCurrentUserResources()V

    if-ne v5, v3, :cond_2

    move v2, v4

    :cond_2
    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarHelper:Lcom/android/systemui/navigationbar/NavBarHelper;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/NavBarHelper;->mAccessibilityGestureHandler:Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;

    xor-int/lit8 v1, v2, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->isCoverNavBarVisible:Z

    iget-object v1, v0, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->tag:Ljava/lang/String;

    const-string v2, "coverNavbarVisibilityChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/gestural/AccessibilityGestureHandler;->updateIsEnabled()V

    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->allBands:Ljava/util/List;

    return-object p0
.end method
