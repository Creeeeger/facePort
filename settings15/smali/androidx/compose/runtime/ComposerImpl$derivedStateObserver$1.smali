.class public final Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/runtime/DerivedStateObserver;


# instance fields
.field public final synthetic this$0:Landroidx/compose/runtime/ComposerImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ComposerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    return-void
.end method


# virtual methods
.method public final done()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return-void
.end method

.method public final start()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/runtime/ComposerImpl$derivedStateObserver$1;->this$0:Landroidx/compose/runtime/ComposerImpl;

    iget v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/ComposerImpl;->childrenComposing:I

    return-void
.end method
