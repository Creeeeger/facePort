.class public final Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;

.field public final store:Lcom/android/systemui/navigationbar/store/NavBarStore;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;->store:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;->allBands:Ljava/util/List;

    sget v0, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_SETUP_WIZARD:Z

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->SETUPWIZARD_PACK_SET_NAVBAR_STYLE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarStyleChanged;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarAttachedToWindow;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnKeyguardStateChanged;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;

    aput-object v4, v3, v5

    const-class v4, Lcom/android/systemui/navigationbar/NavigationBar;

    aput-object v4, v3, v6

    const-class v5, Lcom/android/systemui/navigationbar/NavigationModeController;

    aput-object v5, v3, v7

    const-class v5, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;

    aput-object v5, v3, v2

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$band$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$band$1$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->SETUPWIZARD_PACK_UPDATE_DISABLE_FLAGS:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnSetDisableFlags;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$1$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$1$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->SETUPWIZARD_PACK_UPDATE_DARK_INTENSITY:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateDarkIntensity;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$2$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {v0, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object v0

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->SETUPWIZARD_PACK_SET_NAVBAR_ICON_HINT:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarIconHintChanged;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$3$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$3$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;)V

    iput-object v2, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    iput-boolean v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->SETUPWIZARD_PACK_UPDATE_A11Y_SERVICE:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnNavBarUpdateA11YService;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$4$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack$4$1;-><init>(Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;)V

    iput-object v1, v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/SetupWizardPack;->allBands:Ljava/util/List;

    return-object p0
.end method
