.class final Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper$map$1;
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
.field final synthetic $data:Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper;Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper;->resources:Landroid/content/res/Resources;

    const v1, 0x7f1301e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel;->isPowerSaving()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080dde

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f080ddd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper$map$1$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper$map$1$1;-><init>(Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;)V

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel;->isPluggedIn()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->UNAVAILABLE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel;->isPowerSaving()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    sget-object v2, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    filled-new-array {v0, v2}, [Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel;

    instance-of v2, v0, Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel$Extreme;

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/battery/ui/BatterySaverTileMapper;->resources:Landroid/content/res/Resources;

    check-cast v0, Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel$Extreme;

    iget-boolean v0, v0, Lcom/android/systemui/qs/tiles/impl/battery/domain/model/BatterySaverTileModel$Extreme;->isExtremeSaving:Z

    if-eqz v0, :cond_2

    const v0, 0x7f1306b0

    goto :goto_1

    :cond_2
    const v0, 0x7f1312a1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->stateDescription:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_4
    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    filled-new-array {p0, v0}, [Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
