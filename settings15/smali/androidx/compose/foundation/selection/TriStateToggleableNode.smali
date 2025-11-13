.class public final Landroidx/compose/foundation/selection/TriStateToggleableNode;
.super Landroidx/compose/foundation/ClickableNode;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public state:Landroidx/compose/ui/state/ToggleableState;


# virtual methods
.method public final applyAdditionalSemantics(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/selection/TriStateToggleableNode;->state:Landroidx/compose/ui/state/ToggleableState;

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setToggleableState(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/state/ToggleableState;)V

    return-void
.end method
