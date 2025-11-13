.class public final Lcom/android/systemui/qs/customize/CustomizerTileViewPager$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/CustomizerTileViewPager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(FI)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget-object v0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float p2, p2

    add-float/2addr p2, p1

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    iput p2, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicatorPosition:F

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager$3;->this$0:Lcom/android/systemui/qs/customize/CustomizerTileViewPager;

    iget-object p1, p0, Lcom/android/systemui/qs/customize/CustomizerTileViewPager;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method
