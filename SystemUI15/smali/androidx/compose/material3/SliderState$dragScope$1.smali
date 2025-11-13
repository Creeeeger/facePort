.class public final Landroidx/compose/material3/SliderState$dragScope$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/foundation/gestures/DragScope;


# instance fields
.field public final synthetic this$0:Landroidx/compose/material3/SliderState;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SliderState;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SliderState$dragScope$1;->this$0:Landroidx/compose/material3/SliderState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dragBy(F)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SliderState$dragScope$1;->this$0:Landroidx/compose/material3/SliderState;

    invoke-virtual {p0, p1}, Landroidx/compose/material3/SliderState;->dispatchRawDelta(F)V

    return-void
.end method
