.class public final Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/FontScalingTileMapper;
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/FontScalingTileMapper;->resources:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/FontScalingTileMapper;->theme:Landroid/content/res/Resources$Theme;

    return-void
.end method


# virtual methods
.method public final map(Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;Ljava/lang/Object;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;
    .locals 3

    check-cast p2, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/model/FontScalingTileModel;

    sget-object p2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;->Companion:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/FontScalingTileMapper;->resources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/FontScalingTileMapper;->theme:Landroid/content/res/Resources$Theme;

    new-instance v2, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/FontScalingTileMapper$map$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/FontScalingTileMapper$map$1;-><init>(Lcom/android/systemui/qs/tiles/impl/fontscaling/domain/FontScalingTileMapper;)V

    iget-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileConfig;->uiConfig:Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p0, v2}, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Companion;->build(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/android/systemui/qs/tiles/viewmodel/QSTileUIConfig;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/qs/tiles/viewmodel/QSTileState;

    move-result-object p0

    return-object p0
.end method
