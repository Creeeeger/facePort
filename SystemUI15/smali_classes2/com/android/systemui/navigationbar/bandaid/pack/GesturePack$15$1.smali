.class public final Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$15$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$15$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 30

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack$15$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isGestureMode()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    move-object v4, v3

    const v28, 0x7fffff

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

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v4 .. v29}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v4, v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-boolean v2, v2, Lcom/android/systemui/navigationbar/model/NavBarStates;->hardKeyIntentPolicy:Z

    const-wide v6, 0x4000000000L

    invoke-direct {v5, v6, v7, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;-><init>(JZ)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;

    invoke-direct {v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    :cond_0
    return-void
.end method
