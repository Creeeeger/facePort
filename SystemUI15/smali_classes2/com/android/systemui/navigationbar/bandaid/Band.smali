.class public final Lcom/android/systemui/navigationbar/bandaid/Band;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final afterAction:Ljava/util/function/Consumer;

.field public final bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

.field public final moduleDependencies:Ljava/util/List;

.field public final patchAction:Ljava/util/function/Function;

.field public final priority:I

.field public final runeDependency:Z

.field public final sPluginTag:Ljava/lang/String;

.field public final targetDisplayId:I

.field public final targetEvents:Ljava/util/List;

.field public final targetModules:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/navigationbar/bandaid/Band$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;)V
    .locals 11

    iget-object v1, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iget-boolean v2, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->runeDependency:Z

    iget-object v4, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetEvents:Ljava/util/List;

    iget-object v5, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetModules:Ljava/util/List;

    iget-object v6, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->moduleDependencies:Ljava/util/List;

    iget v7, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->priority:I

    iget-object v8, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->patchAction:Ljava/util/function/Function;

    iget-object v9, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->afterAction:Ljava/util/function/Consumer;

    iget-object v10, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->sPluginTag:Ljava/lang/String;

    iget v3, p1, Lcom/android/systemui/navigationbar/bandaid/Band$Builder;->targetDisplayId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/navigationbar/bandaid/Band;-><init>(Lcom/android/systemui/navigationbar/bandaid/BandAid;ZILjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/bandaid/Band;-><init>(Lcom/android/systemui/navigationbar/bandaid/Band$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/navigationbar/bandaid/BandAid;ZILjava/util/List;Ljava/util/List;Ljava/util/List;ILjava/util/function/Function;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/bandaid/BandAid;",
            "ZI",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/reflect/Type;",
            ">;I",
            "Ljava/util/function/Function<",
            "Lcom/android/systemui/navigationbar/bandaid/Band$Kit;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/navigationbar/bandaid/Band$Kit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->bandAidDependency:Lcom/android/systemui/navigationbar/bandaid/BandAid;

    iput-boolean p2, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->runeDependency:Z

    iput p3, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->targetDisplayId:I

    iput-object p4, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->targetEvents:Ljava/util/List;

    iput-object p5, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->targetModules:Ljava/util/List;

    iput-object p6, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->moduleDependencies:Ljava/util/List;

    iput p7, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->priority:I

    iput-object p8, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->patchAction:Ljava/util/function/Function;

    iput-object p9, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->afterAction:Ljava/util/function/Consumer;

    iput-object p10, p0, Lcom/android/systemui/navigationbar/bandaid/Band;->sPluginTag:Ljava/lang/String;

    return-void
.end method
