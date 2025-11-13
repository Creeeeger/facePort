.class final Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $data:Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;

.field final synthetic $iconResult:Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$IconResult;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$IconResult;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;->$iconResult:Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$IconResult;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->tile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;

    iget-boolean v1, v1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->hasPendingBind:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;->$iconResult:Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$IconResult;

    iget-object v2, v1, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$IconResult;->iconProvider:Lkotlin/jvm/functions/Function0;

    iput-object v2, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    iget-boolean v1, v1, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$IconResult;->failedToLoad:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->Companion:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->UNAVAILABLE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    :goto_0
    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->tile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->tile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->tile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->tile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->getStateDescription()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->stateDescription:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;

    iget-boolean v1, v1, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->isToggleable:Z

    if-nez v1, :cond_6

    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Chevron;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Chevron;

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    :cond_6
    if-nez v0, :cond_7

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    filled-new-array {v0, v1}, [Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    :goto_2
    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/CustomTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/custom/domain/entity/CustomTileDataModel;->isToggleable:Z

    if-eqz p0, :cond_8

    const-class p0, Landroid/widget/Switch;

    :goto_3
    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object p0

    goto :goto_4

    :cond_8
    const-class p0, Landroid/widget/Button;

    goto :goto_3

    :goto_4
    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->expandedAccessibilityClass:Lkotlin/reflect/KClass;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
