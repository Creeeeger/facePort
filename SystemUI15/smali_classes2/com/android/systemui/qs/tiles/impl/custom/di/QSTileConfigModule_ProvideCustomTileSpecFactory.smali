.class public final Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule_ProvideCustomTileSpecFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final module:Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule_ProvideCustomTileSpecFactory;->module:Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;

    return-void
.end method

.method public static provideCustomTileSpec(Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;)Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;->config:Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->tileSpec:Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    check-cast p0, Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule_ProvideCustomTileSpecFactory;->module:Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule_ProvideCustomTileSpecFactory;->provideCustomTileSpec(Lcom/android/systemui/qs/tiles/impl/custom/di/QSTileConfigModule;)Lcom/android/systemui/qs/pipeline/shared/TileSpec$CustomTileSpec;

    move-result-object p0

    return-object p0
.end method
