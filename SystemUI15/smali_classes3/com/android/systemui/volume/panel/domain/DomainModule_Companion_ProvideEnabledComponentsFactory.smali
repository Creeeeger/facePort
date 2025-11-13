.class public final Lcom/android/systemui/volume/panel/domain/DomainModule_Companion_ProvideEnabledComponentsFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideEnabledComponents()Ljava/util/Collection;
    .locals 7

    sget-object v0, Lcom/android/systemui/volume/panel/domain/DomainModule;->Companion:Lcom/android/systemui/volume/panel/domain/DomainModule$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "media_output"

    const-string v6, "bottom_bar"

    const-string v1, "anc"

    const-string/jumbo v2, "spatial_audio"

    const-string v3, "captioning"

    const-string/jumbo v4, "volume_sliders"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/systemui/volume/panel/domain/DomainModule_Companion_ProvideEnabledComponentsFactory;->provideEnabledComponents()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
