.class public final Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$onTouch$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $newScrollX:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$onTouch$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iput p2, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$onTouch$1;->$newScrollX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$onTouch$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    iget p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$onTouch$1;->$newScrollX:I

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    return-void
.end method
