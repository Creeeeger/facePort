.class public final Landroidx/compose/ui/text/font/TypefaceResult$Async;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/text/font/TypefaceResult;
.implements Landroidx/compose/runtime/State;


# instance fields
.field public final current:Landroidx/compose/ui/text/font/AsyncFontListLoader;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/font/AsyncFontListLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/text/font/TypefaceResult$Async;->current:Landroidx/compose/ui/text/font/AsyncFontListLoader;

    return-void
.end method


# virtual methods
.method public final getCacheable()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceResult$Async;->current:Landroidx/compose/ui/text/font/AsyncFontListLoader;

    iget-boolean p0, p0, Landroidx/compose/ui/text/font/AsyncFontListLoader;->cacheable:Z

    return p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/font/TypefaceResult$Async;->current:Landroidx/compose/ui/text/font/AsyncFontListLoader;

    invoke-virtual {p0}, Landroidx/compose/ui/text/font/AsyncFontListLoader;->getValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
