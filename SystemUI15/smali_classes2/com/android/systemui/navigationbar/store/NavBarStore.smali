.class public interface abstract Lcom/android/systemui/navigationbar/store/NavBarStore;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public getNavStateManager()Lcom/android/systemui/navigationbar/store/NavBarStateManager;
    .locals 1

    const/4 v0, 0x0

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p0

    return-object p0
.end method

.method public handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;I)V
    .locals 1

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
