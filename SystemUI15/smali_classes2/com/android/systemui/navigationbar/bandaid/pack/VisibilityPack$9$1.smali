.class public final Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$9$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic $store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$9$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack$9$1;->$store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v15, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    move-object v2, v15

    const v26, 0x7fffff

    const/16 v27, 0x0

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

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v28, v15

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v2 .. v27}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v3, v28

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object v4, v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;->sysUiFlagInfoList:Ljava/util/List;

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;

    const-wide v6, 0x2000000000L

    invoke-direct {v5, v6, v7, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$SysUiFlagInfo;-><init>(JZ)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;

    invoke-direct {v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateSysUiFlags;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    return-object v1
.end method
