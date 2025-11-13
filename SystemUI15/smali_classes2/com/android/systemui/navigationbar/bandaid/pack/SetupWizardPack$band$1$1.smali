.class public final Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$band$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$band$1$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$band$1$1;->this$0:Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;

    iget-object v0, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Kit;->manager:Lcom/android/systemui/navigationbar/store/NavBarStateManager;

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/store/NavBarStateManagerImpl;->shouldShowSUWStyle()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarSUWStyle;

    invoke-direct {v0, v2, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarSUWStyle;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarNormalStyle;

    invoke-direct {v0, v2, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$UpdateNavBarNormalStyle;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$Action;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->apply(Lcom/android/systemui/navigationbar/bandaid/Band$Kit;Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    :goto_0
    return-void
.end method
