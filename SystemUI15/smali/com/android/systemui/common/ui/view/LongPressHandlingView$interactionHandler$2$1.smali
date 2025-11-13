.class final Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/ui/view/LongPressHandlingView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1;->this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1;->this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    invoke-virtual {v2}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    new-instance p1, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1$1;

    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1;->this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1$1;-><init>(Lcom/android/systemui/common/ui/view/LongPressHandlingView;Ljava/lang/Object;)V

    return-object p1
.end method
