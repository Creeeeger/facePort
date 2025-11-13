.class public final Lcom/android/systemui/navigationbar/bandaid/Band$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public afterAction:Ljava/util/function/Consumer;

.field public bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

.field public moduleDependencies:Ljava/util/List;

.field public patchAction:Ljava/util/function/Function;

.field public priority:I

.field public runeDependency:Z

.field public sPluginTag:Ljava/lang/String;

.field public final targetDisplayId:I

.field public targetEvents:Ljava/util/List;

.field public targetModules:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetDisplayId:I

    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder$patchAction$1;->INSTANCE:Lcom/android/systemui/navigationbar/bandaid/Band$Builder$patchAction$1;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->sPluginTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/systemui/navigationbar/bandaid/Band;
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band;-><init>(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
