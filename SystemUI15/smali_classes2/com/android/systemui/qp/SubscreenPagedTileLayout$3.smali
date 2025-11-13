.class public final Lcom/android/systemui/qp/SubscreenPagedTileLayout$3;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenPagedTileLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$3;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public final onPageScrolled(FI)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout$3;->this$0:Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    int-to-float p2, p2

    add-float/2addr p2, p1

    iput p2, p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageIndicatorPosition:F

    invoke-virtual {v0, p2}, Lcom/android/systemui/qs/SecPageIndicator;->setLocation(F)V

    return-void
.end method

.method public final onPageSelected(I)V
    .locals 0

    return-void
.end method
