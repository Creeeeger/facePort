.class public final Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$LaunchedEffect:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic $instance:Landroidx/compose/material/ripple/RippleIndicationInstance;


# direct methods
.method public constructor <init>(Landroidx/compose/material/ripple/RippleIndicationInstance;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$1;->$instance:Landroidx/compose/material/ripple/RippleIndicationInstance;

    iput-object p2, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$1;->$$this$LaunchedEffect:Lkotlinx/coroutines/CoroutineScope;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/foundation/interaction/Interaction;

    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    iget-object v0, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$1;->$instance:Landroidx/compose/material/ripple/RippleIndicationInstance;

    if-eqz p2, :cond_1

    move-object v2, p1

    check-cast v2, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    check-cast v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    iget-object p0, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->view:Landroid/view/ViewGroup;

    invoke-static {p0}, Landroidx/compose/material/ripple/Ripple_androidKt;->access$createAndAttachRippleContainerIfNeeded(Landroid/view/ViewGroup;)Landroidx/compose/material/ripple/RippleContainer;

    move-result-object p0

    iput-object p0, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/compose/material/ripple/RippleContainer;->getRippleHostView(Landroidx/compose/material/ripple/RippleHostKey;)Landroidx/compose/material/ripple/RippleHostView;

    move-result-object p0

    iget-wide v4, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleSize:J

    iget v6, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleRadius:I

    iget-object p1, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->color:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/graphics/Color;

    iget-wide v7, p1, Landroidx/compose/ui/graphics/Color;->value:J

    iget-object p1, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleAlpha:Landroidx/compose/runtime/State;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material/ripple/RippleAlpha;

    iget v9, p1, Landroidx/compose/material/ripple/RippleAlpha;->pressedAlpha:F

    iget-object v10, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->onInvalidateRipple:Lkotlin/jvm/functions/Function0;

    iget-boolean v3, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->bounded:Z

    move-object v1, p0

    invoke-virtual/range {v1 .. v10}, Landroidx/compose/material/ripple/RippleHostView;->addRipple-KOepWvA(Landroidx/compose/foundation/interaction/PressInteraction$Press;ZJIJFLkotlin/jvm/functions/Function0;)V

    iget-object p1, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleHostView$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;

    iget-object p0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Release;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    check-cast v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    iget-object p0, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleHostView$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/ripple/RippleHostView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Landroidx/compose/material/ripple/RippleHostView;->setRippleState(Z)V

    goto :goto_1

    :cond_2
    instance-of p2, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    if-eqz p2, :cond_3

    check-cast p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;

    iget-object p0, p1, Landroidx/compose/foundation/interaction/PressInteraction$Cancel;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    check-cast v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;

    iget-object p0, v0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleHostView$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/ripple/RippleHostView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v1}, Landroidx/compose/material/ripple/RippleHostView;->setRippleState(Z)V

    goto :goto_1

    :cond_3
    iget-object p2, v0, Landroidx/compose/material/ripple/RippleIndicationInstance;->stateLayer:Landroidx/compose/material/ripple/StateLayer;

    iget-object p0, p0, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1$1$1;->$$this$LaunchedEffect:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {p2, p1, p0}, Landroidx/compose/material/ripple/StateLayer;->handleInteraction$material_ripple_release(Landroidx/compose/foundation/interaction/Interaction;Lkotlinx/coroutines/CoroutineScope;)V

    :cond_4
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
