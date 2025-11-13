.class final Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isLoading$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isLoading$2;->this$0:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isLoading$2;->this$0:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    iget-object v0, v0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->value$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieComposition;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl$isLoading$2;->this$0:Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;

    iget-object p0, p0, Lcom/airbnb/lottie/compose/LottieCompositionResultImpl;->error$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
