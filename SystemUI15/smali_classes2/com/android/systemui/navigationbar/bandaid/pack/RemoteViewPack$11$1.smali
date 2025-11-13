.class public final Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$11$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$11$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack$11$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnPackageRemoved;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-class v1, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    iget v2, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnPackageRemoved;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftViewList:Ljava/util/PriorityQueue;

    new-instance v3, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$removeIf$1;

    invoke-direct {v3, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$removeIf$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/PriorityQueue;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightViewList:Ljava/util/PriorityQueue;

    new-instance v4, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$removeIf$2;

    invoke-direct {v4, v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager$removeIf$2;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/PriorityQueue;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    or-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget p1, p1, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    iget-object v0, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->leftContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->rightContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->updateRemoteViewContainer(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;I)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
