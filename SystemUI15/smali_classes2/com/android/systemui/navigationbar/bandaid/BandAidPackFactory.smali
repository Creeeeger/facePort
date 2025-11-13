.class public final Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;


# instance fields
.field public final packs:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getPacks(Lcom/android/systemui/navigationbar/store/NavBarStore;)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/StableLayoutPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ConfigurationPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/RemoteViewPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/VisibilityPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/GesturePack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/MiscPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/TaskBarPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/CoverScreenPack;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactory;->packs:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method
