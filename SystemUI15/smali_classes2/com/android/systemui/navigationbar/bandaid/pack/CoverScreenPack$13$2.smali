.class public final Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    iget p1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->displayId:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getNavStateManager(I)Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->isCoverDisplayNavBarEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    const-class p1, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getModule(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/NavigationBar;

    if-eqz p0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBar;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2$1$1$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack$13$2$1$1$1;-><init>(Lcom/android/systemui/navigationbar/NavigationBar;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
