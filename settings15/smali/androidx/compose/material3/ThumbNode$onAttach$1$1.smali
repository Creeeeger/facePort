.class public final Landroidx/compose/material3/ThumbNode$onAttach$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $pressCount:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic this$0:Landroidx/compose/material3/ThumbNode;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/material3/ThumbNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->$pressCount:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p2, p0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->this$0:Landroidx/compose/material3/ThumbNode;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->$pressCount:Lkotlin/jvm/internal/Ref$IntRef;

    if-eqz p2, :cond_0

    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p1, v0

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    :cond_0
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    if-eqz p2, :cond_1

    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_0

    :cond_1
    instance-of p1, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    if-eqz p1, :cond_2

    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_2
    :goto_0
    iget p1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object p0, p0, Landroidx/compose/material3/ThumbNode$onAttach$1$1;->this$0:Landroidx/compose/material3/ThumbNode;

    iget-boolean p1, p0, Landroidx/compose/material3/ThumbNode;->isPressed:Z

    if-eq p1, v0, :cond_4

    iput-boolean v0, p0, Landroidx/compose/material3/ThumbNode;->isPressed:Z

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutModifierNodeKt;->invalidateMeasurement(Landroidx/compose/ui/node/LayoutModifierNode;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
