.class final Landroidx/compose/material3/SnackbarKt$Snackbar$actionComposable$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic $snackbarData:Landroidx/compose/material3/SnackbarData;


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SnackbarData;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$actionComposable$1$1$1;->$snackbarData:Landroidx/compose/material3/SnackbarData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Landroidx/compose/material3/SnackbarKt$Snackbar$actionComposable$1$1$1;->$snackbarData:Landroidx/compose/material3/SnackbarData;

    check-cast p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Landroidx/compose/material3/SnackbarResult;->ActionPerformed:Landroidx/compose/material3/SnackbarResult;

    invoke-interface {p0, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
