.class public final Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final isAttachedToWindow:Lkotlin/jvm/functions/Function0;

.field public isLongPressHandlingEnabled:Z

.field public longPressDuration:Lkotlin/jvm/functions/Function0;

.field public final onLongPressDetected:Lkotlin/jvm/functions/Function2;

.field public final onSingleTapDetected:Lkotlin/jvm/functions/Function0;

.field public final postDelayed:Lkotlin/jvm/functions/Function2;

.field public scheduledLongPressHandle:Lkotlinx/coroutines/DisposableHandle;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function0;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->postDelayed:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->isAttachedToWindow:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->onLongPressDetected:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->onSingleTapDetected:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingViewInteractionHandler;->longPressDuration:Lkotlin/jvm/functions/Function0;

    return-void
.end method
