.class public final Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/navigationbar/bandaid/BandAidPack;


# instance fields
.field public final allBands:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack;->allBands:Ljava/util/List;

    sget p0, Lcom/android/systemui/navigationbar/bandaid/Band;->$r8$clinit:I

    new-instance p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;-><init>()V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COLOR_PACK_REEVALUATE_NAVBAR:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v2, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnLightBarControllerCreated;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBar;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    const-class v3, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$band$1$1;

    invoke-direct {v4, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$band$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v4, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-static {p0, v0}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$$ExternalSyntheticOutline0;->m(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Ljava/util/ArrayList;)Lcom/android/systemui/navigationbar/bandaid/Band$Builder;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/BandAid;->COLOR_PACK_ON_UPDATE_REGION_SAMPLING_LISTENER:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    const-class v1, Lcom/android/systemui/navigationbar/store/EventTypeFactory$EventType$OnUpdateRegionSamplingListener;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$1$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack$1$1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;)V

    iput-object v1, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->build()Lcom/android/systemui/navigationbar/bandaid/Band;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getBands()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/bandaid/pack/ColorPack;->allBands:Ljava/util/List;

    return-object p0
.end method
