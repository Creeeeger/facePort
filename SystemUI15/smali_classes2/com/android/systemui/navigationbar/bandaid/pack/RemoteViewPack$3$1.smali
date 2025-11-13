.class public final Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$3$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 31

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$3$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewContainer;

    iget v8, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->rotation:I

    iget-object v7, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->leftContainer:Landroid/widget/LinearLayout;

    iget-object v15, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->rightContainer:Landroid/widget/LinearLayout;

    new-instance v14, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    move-object v4, v14

    const v28, 0x1fffe3

    const/16 v29, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-boolean v9, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->contextualButtonVisible:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v30, v14

    move/from16 v14, v16

    move-object/from16 v27, v15

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

    iget v5, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->displayId:I

    move/from16 v26, v5

    move v5, v8

    move-object/from16 v8, v27

    move/from16 v27, v5

    const/4 v5, 0x0

    invoke-direct/range {v4 .. v29}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v30

    invoke-direct {v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewContainer;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewDarkIntensity;

    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    const v28, 0x7fffdf

    const/16 v29, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRemoteViewContainer;->darkIntensity:F

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

    move-object v2, v4

    invoke-direct/range {v4 .. v29}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateRemoteViewDarkIntensity;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    invoke-virtual {v1, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    return-object v1
.end method
