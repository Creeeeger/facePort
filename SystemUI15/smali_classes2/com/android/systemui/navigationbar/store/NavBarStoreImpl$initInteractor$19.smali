.class public final Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$19;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$19;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$19;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->navStateManager:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    if-eqz v0, :cond_2

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v3, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->lastTaskUserId:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iput v2, v0, Lcom/android/systemui/navigationbar/model/NavBarStates;->lastTaskUserId:I

    if-ne v3, v4, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$19;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->logWrapper:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    check-cast p1, Ljava/lang/Integer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Force update provided inset because Task\'s userId was changed. userId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$19;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-class v0, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBar;->updateNavBarLayoutParams()V

    :cond_1
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_MULTI_MODAL_ICON:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$initInteractor$19;->this$0:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    new-instance p1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnButtonOrderChanged;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v4, v0}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnButtonOrderChanged;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    :cond_2
    return-void
.end method
