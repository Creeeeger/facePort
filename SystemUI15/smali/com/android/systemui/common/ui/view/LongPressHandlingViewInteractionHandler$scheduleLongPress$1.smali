.class public final Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$scheduleLongPress$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $x:I

.field public final synthetic $y:I

.field public final synthetic this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$scheduleLongPress$1;->this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;

    iput p2, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$scheduleLongPress$1;->$x:I

    iput p3, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$scheduleLongPress$1;->$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$scheduleLongPress$1;->this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;

    iget v1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$scheduleLongPress$1;->$x:I

    iget p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler$scheduleLongPress$1;->$y:I

    iget-object v2, v0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->isAttachedToWindow:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget-object v0, v0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->onLongPressDetected:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
