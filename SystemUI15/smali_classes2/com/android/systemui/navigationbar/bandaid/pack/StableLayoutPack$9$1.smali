.class public final Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$9$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$9$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack$9$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->event:Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;

    check-cast v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;

    const-string v1, ")"

    const/4 v2, 0x1

    iget v3, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    iget-object p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    if-ne v3, v2, :cond_0

    iget-object v4, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->buttonSpec:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->buttonSpace:Ljava/lang/String;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    iget-boolean v0, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->landscape:Z

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v3}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceWidth(Landroid/graphics/Point;ZZ)I

    move-result p0

    iget-object v2, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v2, v2, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v3, v3, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    invoke-interface {v2, v3, v0}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonWidth(Landroid/graphics/Point;Z)I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v3, v3, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v4, v4, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    invoke-interface {v3, v4, v0}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonDistanceSize(Landroid/graphics/Point;Z)I

    move-result v3

    add-int/2addr p0, v2

    add-int/2addr p0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getButtonSpaceSize(land: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_2

    :cond_0
    if-ne v3, v2, :cond_2

    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->buttonSpec:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->leftRemoteView:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->rightRemoteView:Ljava/lang/String;

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-boolean p0, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->landscape:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->getButtonWidth(Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_2

    :cond_2
    iget-object v2, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->buttonSpec:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mMainKeyList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    iget-boolean v4, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->landscape:Z

    if-nez v3, :cond_8

    sget-object v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->Companion:Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->navkey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;->mExtraKeyList:Ljava/util/List;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$GetInflateButtonWidth;->buttonSpec:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    const-string p0, "key"

    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const-string p0, "home_handle"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1, v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->getGestureWidth(Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_5
    sget-object p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarInflaterView;->keymargin:Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->displaySize:Landroid/graphics/Point;

    invoke-interface {p0, v0, v4}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonDistanceSize(Landroid/graphics/Point;Z)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getButtonDistanceSize(land: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->logNavBarStates(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_6
    const/4 p0, 0x0

    goto :goto_2

    :cond_7
    :goto_0
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1, v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->getSpaceWidth(Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2

    :cond_8
    :goto_1
    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1, v4}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->getButtonWidth(Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_2
    return-object p0
.end method
