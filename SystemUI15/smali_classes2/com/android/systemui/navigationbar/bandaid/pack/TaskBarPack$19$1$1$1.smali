.class public final Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $this_run:Lcom/android/systemui/navigationbar/bandaid/Band$Kit;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1$1$1;->$this_run:Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarController;

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarControllerImpl;->updateNavbarForTaskbar()Z

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack$19$1$1$1;->$this_run:Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->states:Lcom/android/systemui/navigationbar/model/NavBarStates;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/model/NavBarStates;->layoutChangedBeforeAttached:Z

    return-void
.end method
