.class public final Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1$1$invoke$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# instance fields
.field public final synthetic $insets$inlined:Landroidx/compose/foundation/layout/WindowInsetsHolder;

.field public final synthetic $view$inlined:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1$1$invoke$$inlined$onDispose$1;->$insets$inlined:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    iput-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1$1$invoke$$inlined$onDispose$1;->$view$inlined:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1$1$invoke$$inlined$onDispose$1;->$view$inlined:Landroid/view/View;

    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$1$1$invoke$$inlined$onDispose$1;->$insets$inlined:Landroidx/compose/foundation/layout/WindowInsetsHolder;

    iget v1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->accessCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->accessCount:I

    if-nez v1, :cond_0

    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsHolder;->insetsListener:Landroidx/compose/foundation/layout/InsetsListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method
