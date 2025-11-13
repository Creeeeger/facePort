.class public final Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$show$2$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$show$2$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$show$2$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->job:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow$show$2$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;

    iput-object v1, p0, Lcom/android/systemui/media/mediaoutput/activity/MediaOutputWindow;->job:Lkotlinx/coroutines/Job;

    return-void
.end method
