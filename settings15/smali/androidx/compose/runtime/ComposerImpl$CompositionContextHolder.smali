.class public final Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# instance fields
.field public final ref:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->ref:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    return-void
.end method


# virtual methods
.method public final onAbandoned()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->ref:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->dispose()V

    return-void
.end method

.method public final onForgotten()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->ref:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    invoke-virtual {p0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->dispose()V

    return-void
.end method

.method public final onRemembered()V
    .locals 0

    return-void
.end method
