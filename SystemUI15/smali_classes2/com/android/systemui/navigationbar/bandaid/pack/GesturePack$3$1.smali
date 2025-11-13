.class public final Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$3$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$3$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnEdgeBackGestureDisabledByPolicyChanged;

    iget-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v4, v3, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v4, v4, Lcom/android/systemui/navigationbar/model/NavBarStates;->navigationMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "isSideAndBottomGestureMode"

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_1

    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateEdgeBackGestureDisabledPolicy;

    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnEdgeBackGestureDisabledByPolicyChanged;->disabled:Z

    const v28, 0x7fdfff

    const/16 v29, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 p0, v4

    move/from16 v18, v2

    invoke-direct/range {v4 .. v29}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, p0

    invoke-direct {v3, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateEdgeBackGestureDisabledPolicy;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    :cond_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
