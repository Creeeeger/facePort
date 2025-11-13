.class public final Landroidx/compose/runtime/DisposableEffectImpl;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# instance fields
.field public final effect:Lkotlin/jvm/functions/Function1;

.field public onDispose:Landroidx/compose/runtime/DisposableEffectResult;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/DisposableEffectImpl;->effect:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onAbandoned()V
    .locals 0

    return-void
.end method

.method public final onForgotten()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/DisposableEffectImpl;->onDispose:Landroidx/compose/runtime/DisposableEffectResult;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/runtime/DisposableEffectResult;->dispose()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/runtime/DisposableEffectImpl;->onDispose:Landroidx/compose/runtime/DisposableEffectResult;

    return-void
.end method

.method public final onRemembered()V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/EffectsKt;->InternalDisposableEffectScope:Landroidx/compose/runtime/DisposableEffectScope;

    iget-object v1, p0, Landroidx/compose/runtime/DisposableEffectImpl;->effect:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/DisposableEffectResult;

    iput-object v0, p0, Landroidx/compose/runtime/DisposableEffectImpl;->onDispose:Landroidx/compose/runtime/DisposableEffectResult;

    return-void
.end method
