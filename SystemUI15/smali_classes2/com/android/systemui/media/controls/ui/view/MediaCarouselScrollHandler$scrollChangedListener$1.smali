.class public final Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$scrollChangedListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iget p2, p1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p1, Lcom/android/systemui/media/controls/ui/view/MediaScrollView;->contentContainer:Landroid/view/ViewGroup;

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    move-object p3, p4

    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    sub-int p2, p3, p2

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler$scrollChangedListener$1;->this$0:Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;

    iget p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    div-int p3, p2, p1

    rem-int/2addr p2, p1

    iget p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move p1, p5

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    iput p2, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    if-eqz p2, :cond_4

    move v1, p5

    goto :goto_2

    :cond_4
    move v1, v0

    :goto_2
    iget v2, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleMediaIndex:I

    if-ne p3, v2, :cond_5

    if-eq p1, v1, :cond_7

    :cond_5
    iput p3, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleMediaIndex:I

    if-eq v2, p3, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleToUser:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->qsExpanded:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->logSmartspaceImpression:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    iget-object p1, p1, Lcom/android/systemui/media/controls/util/MediaUiEventLogger;->logger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v1, Lcom/android/systemui/media/controls/util/MediaUiEvent;->CAROUSEL_PAGE:Lcom/android/systemui/media/controls/util/MediaUiEvent;

    invoke-interface {p1, v1, v0, p4, p3}, Lcom/android/internal/logging/UiEventLogger;->logWithPosition(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;I)V

    :cond_6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p3, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->closeGuts:Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->updatePlayerVisibilities()V

    :cond_7
    iget p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->visibleMediaIndex:I

    int-to-float p1, p1

    iget p3, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->playerWidthPlusPadding:I

    const/4 p4, 0x0

    if-lez p3, :cond_8

    int-to-float p2, p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    goto :goto_3

    :cond_8
    move p2, p4

    :goto_3
    add-float/2addr p1, p2

    iget-object p2, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/view/MediaScrollView;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    move-result p3

    if-eqz p3, :cond_9

    iget-object p3, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p3, p1

    int-to-float p1, p5

    sub-float p1, p3, p1

    :cond_9
    iget-object p3, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    invoke-virtual {p3, p1}, Lcom/android/systemui/qs/PageIndicator;->setLocation(F)V

    iget p1, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->contentTranslation:F

    cmpg-float p1, p1, p4

    if-nez p1, :cond_b

    iget p0, p0, Lcom/android/systemui/media/controls/ui/view/MediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    move p5, v0

    :cond_b
    :goto_4
    invoke-virtual {p2, p5}, Landroid/widget/HorizontalScrollView;->setClipToOutline(Z)V

    return-void
.end method
