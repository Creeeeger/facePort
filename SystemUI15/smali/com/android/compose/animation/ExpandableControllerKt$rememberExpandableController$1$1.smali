.class final Lcom/android/compose/animation/ExpandableControllerKt$rememberExpandableController$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $isComposed:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/compose/animation/ExpandableControllerKt$rememberExpandableController$1$1;->$isComposed:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/compose/runtime/DisposableEffectScope;

    iget-object p0, p0, Lcom/android/compose/animation/ExpandableControllerKt$rememberExpandableController$1$1;->$isComposed:Landroidx/compose/runtime/MutableState;

    new-instance p1, Lcom/android/compose/animation/ExpandableControllerKt$rememberExpandableController$1$1$invoke$$inlined$onDispose$1;

    invoke-direct {p1, p0}, Lcom/android/compose/animation/ExpandableControllerKt$rememberExpandableController$1$1$invoke$$inlined$onDispose$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    return-object p1
.end method
