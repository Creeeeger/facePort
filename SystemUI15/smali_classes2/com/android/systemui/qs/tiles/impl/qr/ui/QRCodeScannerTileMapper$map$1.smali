.class final Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper$map$1;
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
.field final synthetic $data:Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper;Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper;->resources:Landroid/content/res/Resources;

    const v1, 0x7f130e21

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    const v0, 0x7f080a94

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    new-instance v0, Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper$map$1$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper;

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper$map$1$1;-><init>(Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;)V

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Chevron;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$Chevron;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper$map$1;->$data:Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel;

    instance-of v1, v0, Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel$Available;

    if-eqz v1, :cond_0

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    instance-of v0, v0, Lcom/android/systemui/qs/tiles/impl/qr/domain/model/QRCodeScannerTileModel$TemporarilyUnavailable;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->UNAVAILABLE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/qr/ui/QRCodeScannerTileMapper;->resources:Landroid/content/res/Resources;

    const v0, 0x7f130e22

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
