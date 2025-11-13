.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;
.super Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    const-string v0, "PhoneStatusBarViewController"

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;-><init>(Lcom/android/systemui/statusbar/phone/IndicatorGarden;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCameraTopMarginContainerMarginLayoutParams()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->access$getMView$p$s1936973844(Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v0, 0x7f0a0c13

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    return-object p0
.end method

.method public final needToUpdatePaddings(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/IndicatorBasicGardener;->needToUpdatePaddings(Lcom/android/systemui/statusbar/phone/IndicatorGardenModel;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->hasSomethingChanged:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->marqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->hasSomethingChanged:Z

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public final updateSidePadding(II)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$gardener$1;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->indicatorMarqueeGardener:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener;->marqueeModel:Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;

    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftLeft:I

    add-int/2addr p1, v1

    iget v1, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftTop:I

    iget v2, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftRight:I

    add-int/2addr p2, v2

    iget v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorMarqueeGardener$MarqueeModel;->shiftBottom:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;->sidePaddingContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, v1, p2, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_0
    return-void
.end method
