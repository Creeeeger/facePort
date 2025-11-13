.class public final Lcom/android/systemui/qs/tiles/impl/location/domain/LocationTileMapper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/tiles/base/interactor/QSTileDataToStateMapper;


# instance fields
.field public final resources:Landroid/content/res/Resources;

.field public final theme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/LocationTileMapper;->resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/LocationTileMapper;->theme:Landroid/content/res/Resources$Theme;

    return-void
.end method


# virtual methods
.method public final map(Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;Ljava/lang/Object;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;
    .locals 4

    check-cast p2, Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;

    iget-boolean p2, p2, Lcom/android/systemui/qs/tiles/impl/location/domain/model/LocationTileModel;->isEnabled:Z

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->Companion:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/LocationTileMapper;->resources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/location/domain/LocationTileMapper;->theme:Landroid/content/res/Resources$Theme;

    new-instance v3, Lcom/android/systemui/qs/tiles/impl/location/domain/LocationTileMapper$map$1;

    invoke-direct {v3, p2, p0}, Lcom/android/systemui/qs/tiles/impl/location/domain/LocationTileMapper$map$1;-><init>(ZLcom/android/systemui/qs/tiles/impl/location/domain/LocationTileMapper;)V

    iget-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->uiConfig:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, p0, v3}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;->build(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    move-result-object p0

    return-object p0
.end method
