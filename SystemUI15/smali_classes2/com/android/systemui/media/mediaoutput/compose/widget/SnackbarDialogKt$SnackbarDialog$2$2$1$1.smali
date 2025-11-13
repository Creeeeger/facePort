.class final Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogKt$SnackbarDialog$2$2$1$1;
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
.field final synthetic $index:I

.field final synthetic $items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $snackbarData:Landroidx/compose/material3/SnackbarData;


# direct methods
.method public constructor <init>(ILjava/util/List;Landroidx/compose/material3/SnackbarData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/material3/SnackbarData;",
            ")V"
        }
    .end annotation

    iput p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogKt$SnackbarDialog$2$2$1$1;->$index:I

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogKt$SnackbarDialog$2$2$1$1;->$items:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogKt$SnackbarDialog$2$2$1$1;->$snackbarData:Landroidx/compose/material3/SnackbarData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogKt$SnackbarDialog$2$2$1$1;->$index:I

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogKt$SnackbarDialog$2$2$1$1;->$items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogKt$SnackbarDialog$2$2$1$1;->$snackbarData:Landroidx/compose/material3/SnackbarData;

    check-cast p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->continuation:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {p0}, Lkotlinx/coroutines/CancellableContinuation;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Landroidx/compose/material3/SnackbarResult;->ActionPerformed:Landroidx/compose/material3/SnackbarResult;

    invoke-interface {p0, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogKt$SnackbarDialog$2$2$1$1;->$snackbarData:Landroidx/compose/material3/SnackbarData;

    check-cast p0, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;

    invoke-virtual {p0}, Landroidx/compose/material3/SnackbarHostState$SnackbarDataImpl;->dismiss()V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
