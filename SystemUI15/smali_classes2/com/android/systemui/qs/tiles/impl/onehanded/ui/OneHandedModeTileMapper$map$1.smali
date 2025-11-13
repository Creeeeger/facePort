.class final Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper$map$1;
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

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper$map$1;->$data:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper;->resources:Landroid/content/res/Resources;

    const v1, 0x7f03009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper;

    iget-object v1, v1, Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper;->resources:Landroid/content/res/Resources;

    const v2, 0x7f130f23

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    const v1, 0x10805b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    new-instance v1, Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper$map$1$1;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper;

    invoke-direct {v1, v2, p1}, Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper$map$1$1;-><init>(Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;)V

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

    iget-boolean p0, p0, Lcom/android/systemui/qs/tiles/impl/onehanded/ui/OneHandedModeTileMapper$map$1;->$data:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const/4 p0, 0x2

    aget-object p0, v0, p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const/4 p0, 0x1

    aget-object p0, v0, p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    :goto_0
    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;->INSTANCE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon$None;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->sideViewIcon:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$SideViewIcon;

    iget-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->contentDescription:Ljava/lang/CharSequence;

    sget-object p0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    sget-object v0, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;->LONG_CLICK:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    filled-new-array {p0, v0}, [Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$UserAction;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->supportedActions:Ljava/util/Set;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
