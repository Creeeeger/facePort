.class public final Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;
.super Lcom/android/systemui/qs/bar/LargeTileBar;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field public isSmartViewBarShowOnQSPanel:Z

.field public final tunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/qs/QSHost;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/qs/bar/LargeTileBar;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSHost;)V

    iput-object p2, p0, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;->tunerService:Lcom/android/systemui/tuner/TunerService;

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_TILE_HIDE_FROM_BAR:Z

    const/4 p3, 0x1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "hide_smart_view_large_tile_on_panel"

    const-string v0, "0"

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;->isSmartViewBarShowOnQSPanel:Z

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/qs/bar/LargeTileBar;->destroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;->tunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public final getBarWidthWeight(Landroid/content/Context;)I
    .locals 0

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    return p1
.end method

.method public final getClonedBarView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/LargeTileBar;->removeCloneTileBG()V

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/LargeTileBar;->makeCloneBar()V

    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mClonedBarView:Landroid/view/View;

    return-object p0
.end method

.method public final inflateViews(Landroid/view/ViewGroup;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/LargeTileBar;->inflateViews(Landroid/view/ViewGroup;)V

    const-string p1, "hide_smart_view_large_tile_on_panel"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;->tunerService:Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    const-string v0, "hide_smart_view_large_tile_on_panel"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "onTuningChanged() : key = "

    const-string v1, ", newValue = "

    invoke-static {v0, p1, v1, p2}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "0"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;->isSmartViewBarShowOnQSPanel:Z

    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTileContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;->updateLayout(Landroid/view/View;Landroid/widget/LinearLayout;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showBar(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    if-nez v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mShowing:Z

    :cond_0
    return-void
.end method

.method public final updateHeightMargins()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/LargeTileBar;->mTileContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;->updateLayout(Landroid/view/View;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public final updateLayout(Landroid/view/View;Landroid/widget/LinearLayout;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;->isSmartViewBarShowOnQSPanel:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/bar/LargeTileBar;->updateLayout(Landroid/widget/LinearLayout;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07062b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v3, :cond_2

    const/high16 v1, 0x40800000    # 4.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    goto :goto_1

    :cond_2
    const/high16 v5, 0x40000000    # 2.0f

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p2, v5}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/SmartViewLargeTileBar;->isSmartViewBarShowOnQSPanel:Z

    if-eqz v0, :cond_3

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07062a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    :cond_4
    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
