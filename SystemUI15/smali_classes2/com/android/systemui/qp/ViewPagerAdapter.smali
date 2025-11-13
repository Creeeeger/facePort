.class public final Lcom/android/systemui/qp/ViewPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public mBrightnessButton:Landroid/widget/ImageView;

.field public mFlashLightButton:Landroid/widget/ImageView;

.field public subRoomButtonListener:Lcom/android/systemui/qp/ViewPagerAdapter$SubRoomButtonListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qp/RTLViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroidx/viewpager/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final getCount()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public final instantiateItem(ILandroid/view/ViewGroup;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0289

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const p1, 0x7f0a01cf

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->mBrightnessButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/ViewPagerAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->mBrightnessButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p1, 0x7f0a0456

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->mFlashLightButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/ViewPagerAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/qp/ViewPagerAdapter;->mFlashLightButton:Landroid/widget/ImageView;

    new-instance p1, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/systemui/qp/ViewPagerAdapter$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    check-cast p2, Lcom/android/systemui/qp/RTLViewPager;

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const p0, 0x7f0d0288

    invoke-virtual {v0, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast p2, Lcom/android/systemui/qp/RTLViewPager;

    invoke-virtual {p2, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :goto_0
    return-object v2
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
