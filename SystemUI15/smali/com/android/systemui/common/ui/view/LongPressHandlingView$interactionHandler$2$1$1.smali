.class public final Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;


# instance fields
.field public final synthetic $dispatchToken:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/common/ui/view/LongPressHandlingView;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1$1;->this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    iput-object p2, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1$1;->$dispatchToken:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1$1;->this$0:Lcom/android/systemui/common/ui/view/LongPressHandlingView;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/common/ui/view/LongPressHandlingView$interactionHandler$2$1$1;->$dispatchToken:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
