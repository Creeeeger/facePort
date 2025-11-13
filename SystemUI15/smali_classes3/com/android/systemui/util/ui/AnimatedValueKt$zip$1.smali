.class public final Lcom/android/systemui/util/ui/AnimatedValueKt$zip$1;
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
.field final synthetic $valueA:Lcom/android/systemui/util/ui/AnimatedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $valueB:Lcom/android/systemui/util/ui/AnimatedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/ui/AnimatedValue;Lcom/android/systemui/util/ui/AnimatedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/systemui/util/ui/AnimatedValue<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$zip$1;->$valueA:Lcom/android/systemui/util/ui/AnimatedValue;

    iput-object p2, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$zip$1;->$valueB:Lcom/android/systemui/util/ui/AnimatedValue;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/ui/AnimatedValueKt$zip$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$zip$1;->$valueA:Lcom/android/systemui/util/ui/AnimatedValue;

    check-cast v0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {v0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getOnStopAnimating()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/systemui/util/ui/AnimatedValueKt$zip$1;->$valueB:Lcom/android/systemui/util/ui/AnimatedValue;

    check-cast p0, Lcom/android/systemui/util/ui/AnimatedValue$Animating;

    invoke-virtual {p0}, Lcom/android/systemui/util/ui/AnimatedValue$Animating;->getOnStopAnimating()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
