.class final synthetic Lcom/android/systemui/biometrics/ui/binder/PromptIconViewBinder$bind$1$1$3$3;
.super Lkotlin/jvm/internal/AdaptedFunctionReference;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/AdaptedFunctionReference;",
        "Lkotlin/jvm/functions/Function3;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-string/jumbo v5, "toTriple(Ljava/lang/Object;Lkotlin/Pair;)Lkotlin/Triple;"

    const/4 v6, 0x4

    const/4 v1, 0x3

    const-class v3, Lcom/android/systemui/util/kotlin/Utils$Companion;

    const-string/jumbo v4, "toTriple"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lkotlin/Pair;

    check-cast p3, Lkotlin/coroutines/Continuation;

    iget-object p0, p0, Lkotlin/jvm/internal/AdaptedFunctionReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/util/kotlin/Utils$Companion;

    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, p3, p2}, Lcom/android/systemui/util/kotlin/Utils$Companion;->toTriple(Ljava/lang/Object;Lkotlin/Pair;)Lkotlin/Triple;

    move-result-object p0

    return-object p0
.end method
