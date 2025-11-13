.class public final Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/CarouselHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/CarouselHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;->this$0:Lcom/android/systemui/media/CarouselHelper;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;->this$0:Lcom/android/systemui/media/CarouselHelper;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/media/CarouselHelper;->userTouch:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/media/CarouselHelper;->userTouch:Z

    :goto_0
    return-void
.end method

.method public final onPageScrolled(FI)V
    .locals 0

    int-to-float p2, p2

    add-float/2addr p2, p1

    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;->this$0:Lcom/android/systemui/media/CarouselHelper;

    iput p2, p0, Lcom/android/systemui/media/CarouselHelper;->pageIndicatorPosition:F

    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper;->indicator:Lcom/android/systemui/qs/SecPageIndicator;

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 2

    const-string v0, "onPageSelected position="

    const-string v1, "CarouselHelper"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper$createOnPageChangeListener$1;->this$0:Lcom/android/systemui/media/CarouselHelper;

    iget-boolean v0, p0, Lcom/android/systemui/media/CarouselHelper;->userTouch:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QPNE0022"

    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/CarouselHelper;->mediaPlayerDataFunction:Ljava/util/function/Function;

    iget-object p0, p0, Lcom/android/systemui/media/CarouselHelper;->type:Lcom/android/systemui/media/MediaType;

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/SecMediaPlayerData;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/systemui/media/SecMediaPlayerData;->currentPosition:I

    :goto_0
    return-void
.end method
