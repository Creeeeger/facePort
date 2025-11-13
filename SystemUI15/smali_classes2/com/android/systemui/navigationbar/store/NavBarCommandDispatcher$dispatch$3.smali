.class public final Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $displayId:I

.field public final synthetic this$0:Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->this$0:Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;

    iput p2, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->$displayId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->this$0:Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->$displayId:I

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBar;

    iget-object v1, v0, Lcom/android/systemui/navigationbar/NavigationBar;->mNavBarStateManager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object v1, v1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    iget v1, v1, Lcom/android/systemui/navigationbar/model/NavBarStates;->rotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBar;->repositionNavigationBar(I)V

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->this$0:Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;

    iget-object v0, v0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->$displayId:I

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIconsAndHints()V

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher$dispatch$3;->this$0:Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarCommandDispatcher;->navBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v0, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-class v1, Lcom/android/systemui/navigationbar/util/NavBarReflectUtil;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType;)V

    return-void
.end method
