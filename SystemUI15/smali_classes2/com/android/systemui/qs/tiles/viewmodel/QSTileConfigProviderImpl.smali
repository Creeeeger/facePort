.class public final Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProviderImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProvider;


# instance fields
.field public final configs:Ljava/util/Map;

.field public final qsEventLogger:Lcom/android/systemui/qs/QsEventLogger;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lcom/android/systemui/qs/QsEventLogger;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;",
            ">;",
            "Lcom/android/systemui/qs/QsEventLogger;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProviderImpl;->configs:Ljava/util/Map;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProviderImpl;->qsEventLogger:Lcom/android/systemui/qs/QsEventLogger;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    invoke-virtual {p2}, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->getSpec()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "A wrong config is injected keySpec="

    const-string v2, " configSpec="

    invoke-static {v1, p1, v2, p2}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getConfig(Ljava/lang/String;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;
    .locals 9

    sget-object v0, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v2

    instance-of v0, v2, Lcom/android/systemui/qs/pipeline/shared/TileSpec$PlatformTileSpec;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProviderImpl;->configs:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "There is no config for spec="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of p1, v2, Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    sget-object v3, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Empty;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Empty;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfigProviderImpl;->qsEventLogger:Lcom/android/systemui/qs/QsEventLogger;

    check-cast p0, Lcom/android/systemui/qs/QsEventLoggerImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/QsEventLoggerImpl;->sequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    const/4 v8, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;-><init>(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;Lcom/android/internal/logging/InstanceId;Ljava/lang/String;Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p0, p1

    :goto_0
    return-object p0

    :cond_2
    instance-of p0, v2, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Invalid;

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "TileSpec.Invalid doesn\'t support configs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
