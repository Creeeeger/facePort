.class public final Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$1;
.super Landroid/view/ViewOutlineProvider;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iget v3, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->carouselWidth:I

    iget v4, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->carouselHeight:I

    iget p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->cornerRadius:I

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    :cond_0
    return-void
.end method
