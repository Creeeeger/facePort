.class final Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper$map$1;
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

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper;

    iput-boolean p2, p0, Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper$map$1;->$data:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper;->resources:Landroid/content/res/Resources;

    const v1, 0x7f030096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper$map$1;->$data:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->ACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    const v0, 0x7f080e16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;->INACTIVE:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    iput-object v1, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->activationState:Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$ActivationState;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->secondaryLabel:Ljava/lang/CharSequence;

    const v0, 0x7f080e15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->iconRes:Ljava/lang/Integer;

    :goto_0
    new-instance v0, Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper$map$1$1;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper$map$1;->this$0:Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper$map$1$1;-><init>(Lcom/android/systemui/qs/tiles/impl/inversion/domain/ColorInversionTileMapper;Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;)V

    iput-object v0, p1, Lcom/android/systemui/qs/tiles/viewmodel/QSTileState$Builder;->icon:Lkotlin/jvm/functions/Function0;

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
