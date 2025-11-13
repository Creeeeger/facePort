.class public final Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;
.super Landroidx/compose/runtime/changelist/Operation;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2}, Landroidx/compose/runtime/changelist/Operation;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$EnsureRootGroupStarted;

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/compose/runtime/changelist/Operations$OpIterator;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/CompositionImpl$RememberEventDispatcher;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/SlotWriter;->ensureStarted(I)V

    return-void
.end method
