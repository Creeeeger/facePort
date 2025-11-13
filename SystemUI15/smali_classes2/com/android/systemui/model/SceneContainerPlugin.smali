.class public final Lcom/android/systemui/model/SceneContainerPlugin;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/model/SceneContainerPlugin$Companion;

.field public static final EvaluatorByFlag:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/systemui/model/SceneContainerPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/model/SceneContainerPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-wide/32 v0, 0x40000000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$1;->INSTANCE:Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$1;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$2;->INSTANCE:Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$2;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x800

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$3;->INSTANCE:Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$3;

    new-instance v4, Lkotlin/Pair;

    invoke-direct {v4, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$4;->INSTANCE:Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$4;

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x40

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$5;->INSTANCE:Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$5;

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x200

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$6;->INSTANCE:Lcom/android/systemui/model/SceneContainerPlugin$Companion$EvaluatorByFlag$6;

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v2 .. v7}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt__MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
