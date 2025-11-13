.class final Lcom/android/systemui/util/animation/TransitionLayout$delegate$1;
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
.field final synthetic this$0:Lcom/android/systemui/util/animation/TransitionLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/animation/TransitionLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout$delegate$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/animation/TransitionLayout$delegate$1;->invoke(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionLayout$delegate$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    invoke-static {p0, p1}, Lcom/android/systemui/util/animation/TransitionLayout;->access$setVisibility$s2114496391(Lcom/android/systemui/util/animation/TransitionLayout;I)V

    return-void
.end method
