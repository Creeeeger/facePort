.class public final Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$1$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    move-object/from16 v0, p1

    check-cast v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$1$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;

    iget-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnPackageRemoved;

    iget-object v3, v1, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast v3, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-class v4, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    iget v5, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    iget-object v4, v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    invoke-virtual {v4}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v2, v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnPackageRemoved;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isExist(ILjava/lang/String;)Z

    move-result v5

    iget-object v6, v1, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    if-eqz v5, :cond_1

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;

    new-instance v15, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    move-object v7, v15

    invoke-static {v1, v2, v4}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->access$makeRemoteViewEventToRemove(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;Ljava/lang/String;I)Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    move-result-object v26

    const v31, 0x7bffff

    const/16 v32, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v4, 0x0

    move-object/from16 v33, v15

    move v15, v4

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

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v7 .. v32}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v33

    invoke-direct {v5, v4}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    move-object v4, v6

    check-cast v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v4, v0, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isExist(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;

    move-object v7, v5

    invoke-static {v1, v2, v4}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;->access$makeRemoteViewEventToRemove(Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;Ljava/lang/String;I)Lcom/android/systemui/shared/navigationbar/NavBarEvents;

    move-result-object v26

    const v31, 0x7bffff

    const/16 v32, 0x0

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

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v7 .. v32}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;Lcom/android/systemui/navigationbar/store/NavBarStoreAction$NavBarLayoutInfo;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;ZFLcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;ZFIZZIZLcom/android/systemui/navigationbar/store/NavBarStoreAction$GestureHintVIInfo;Ljava/util/List;ZZLcom/android/systemui/shared/navigationbar/NavBarEvents;FFIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v5}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateTaskBarNavBarEvents;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;)V

    check-cast v6, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v6, v0, v3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
