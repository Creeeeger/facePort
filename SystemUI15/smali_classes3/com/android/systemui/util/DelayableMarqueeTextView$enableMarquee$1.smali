.class final Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/DelayableMarqueeTextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/DelayableMarqueeTextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;->this$0:Lcom/android/systemui/util/DelayableMarqueeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;->this$0:Lcom/android/systemui/util/DelayableMarqueeTextView;

    invoke-static {v0}, Lcom/android/systemui/util/DelayableMarqueeTextView;->access$getWantsMarquee$p(Lcom/android/systemui/util/DelayableMarqueeTextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;->this$0:Lcom/android/systemui/util/DelayableMarqueeTextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/util/DelayableMarqueeTextView;->access$setMarqueeBlocked$p(Lcom/android/systemui/util/DelayableMarqueeTextView;Z)V

    iget-object p0, p0, Lcom/android/systemui/util/DelayableMarqueeTextView$enableMarquee$1;->this$0:Lcom/android/systemui/util/DelayableMarqueeTextView;

    invoke-virtual {p0}, Lcom/android/systemui/util/DelayableMarqueeTextView;->startMarquee()V

    :cond_0
    return-void
.end method
