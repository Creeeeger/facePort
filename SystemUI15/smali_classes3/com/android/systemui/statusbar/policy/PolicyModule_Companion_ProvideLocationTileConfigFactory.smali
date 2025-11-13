.class public final Lcom/android/systemui/statusbar/policy/PolicyModule_Companion_ProvideLocationTileConfigFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# instance fields
.field public final uiEventLoggerProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/PolicyModule_Companion_ProvideLocationTileConfigFactory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static provideLocationTileConfig(Lcom/android/systemui/qs/QsEventLogger;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;
    .locals 9

    sget-object v0, Lcom/android/systemui/statusbar/policy/PolicyModule;->Companion:Lcom/android/systemui/statusbar/policy/PolicyModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    sget-object v1, Lcom/android/systemui/qs/pipeline/shared/TileSpec;->Companion:Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "location"

    invoke-static {v1}, Lcom/android/systemui/qs/pipeline/shared/TileSpec$Companion;->create(Ljava/lang/String;)Lcom/android/systemui/qs/pipeline/shared/TileSpec;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;

    const v1, 0x7f080e19

    const v4, 0x7f130f0c

    invoke-direct {v3, v1, v4}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig$Resource;-><init>(II)V

    check-cast p0, Lcom/android/systemui/qs/QsEventLoggerImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/QsEventLoggerImpl;->sequence:Lcom/android/internal/logging/InstanceIdSequence;

    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy$Restricted;

    const-string p0, "no_share_location"

    const-string v1, "no_config_location"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy$Restricted;-><init>(Ljava/util/List;)V

    const/4 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;-><init>(Lcom/android/systemui/qs/pipeline/shared/TileSpec;Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;Lcom/android/internal/logging/InstanceId;Ljava/lang/String;Lcom/android/systemui/qs/tiles/viewmodel/QSTilePolicy;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/PolicyModule_Companion_ProvideLocationTileConfigFactory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QsEventLogger;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/PolicyModule_Companion_ProvideLocationTileConfigFactory;->provideLocationTileConfig(Lcom/android/systemui/qs/QsEventLogger;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;

    move-result-object p0

    return-object p0
.end method
