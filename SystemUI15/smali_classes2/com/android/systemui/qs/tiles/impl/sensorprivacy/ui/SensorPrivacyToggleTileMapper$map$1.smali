.class final Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper$map$1;
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
.field final synthetic $data:Z

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper$map$1;->$data:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;

    iget-object v1, v0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;->resources:Landroid/content/res/Resources;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;->sensorPrivacyTileResources:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyTileResources;

    invoke-interface {v0}, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyTileResources;->getTileLabelRes()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    filled-new-array {v0, v1}, [Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;->sensorPrivacyTileResources:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyTileResources;

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper$map$1;->$data:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyTileResources;->getIconRes(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper$map$1$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper$map$1$1;-><init>(Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;)V

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper$map$1;->$data:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;->resources:Landroid/content/res/Resources;

    const v0, 0x7f130ebe

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/sensorprivacy/ui/SensorPrivacyToggleTileMapper;->resources:Landroid/content/res/Resources;

    const v0, 0x7f130ebd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
