.class final Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/foundation/MarqueeModifierNode;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/MarqueeModifierNode;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    iget-object v0, v0, Landroidx/compose/foundation/MarqueeModifierNode;->contentWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v0

    iget-object v1, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    iget-object v1, v1, Landroidx/compose/foundation/MarqueeModifierNode;->containerWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    iget-object v0, v0, Landroidx/compose/foundation/MarqueeModifierNode;->animationMode$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/foundation/MarqueeAnimationMode;

    iget v0, v0, Landroidx/compose/foundation/MarqueeAnimationMode;->value:I

    sget-object v1, Landroidx/compose/foundation/MarqueeAnimationMode;->Companion:Landroidx/compose/foundation/MarqueeAnimationMode$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/foundation/MarqueeAnimationMode;->WhileFocused:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    iget-object v0, v0, Landroidx/compose/foundation/MarqueeModifierNode;->hasFocus$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    iget-object v0, v0, Landroidx/compose/foundation/MarqueeModifierNode;->contentWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableIntStateImpl;->getIntValue()I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/MarqueeModifierNode$runAnimation$2$1;->this$0:Landroidx/compose/foundation/MarqueeModifierNode;

    invoke-virtual {p0}, Landroidx/compose/foundation/MarqueeModifierNode;->getSpacingPx()I

    move-result p0

    add-int/2addr p0, v0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    :goto_0
    return-object v2
.end method
