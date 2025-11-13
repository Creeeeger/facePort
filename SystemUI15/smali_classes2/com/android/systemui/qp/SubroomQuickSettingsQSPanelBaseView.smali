.class public Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;
.super Lcom/android/systemui/qs/QSPanel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

.field public final mContext:Landroid/content/Context;

.field public mFooterPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

.field public mQuickSettingsContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "SubroomQuickSettingsQSPanelBaseView"

    invoke-static {p2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final addPagedTileLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mQuickSettingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->updatePageIndicator$1()V

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p0, :cond_2

    check-cast p0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setCurrentItem(IZ)V

    :cond_2
    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSPanel;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/qp/util/SubscreenUtil;->applyRotation(Landroid/content/Context;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/qs/QSPanel;->onFinishInflate()V

    const-string v0, "SubroomQuickSettingsQSPanelBaseView"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0c96

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mQuickSettingsContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0469

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecPageIndicator;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mFooterPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    const v0, 0x7f0a0c56

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    iput-object v0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mBrightnessView:Lcom/android/systemui/qp/SubroomBrightnessSettingsView;

    const v1, 0x7f0a01d2

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final updatePageIndicator$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->mFooterPageIndicator:Lcom/android/systemui/qs/SecPageIndicator;

    if-eqz p0, :cond_0

    check-cast v0, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->setPageIndicator(Lcom/android/systemui/qs/SecPageIndicator;)V

    :cond_0
    return-void
.end method

.method public final updateResources$1()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qp/SubroomQuickSettingsQSPanelBaseView;->updatePageIndicator$1()V

    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070e6e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    instance-of v2, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setTilePageHeight pageHeight: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubscreenPagedTileLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    if-eq v2, v0, :cond_0

    iput v2, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mLastMaxHeight:I

    iput v0, v1, Lcom/android/systemui/qp/SubscreenPagedTileLayout;->mPageHeight:I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mTileLayout:Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->updateResources()Z

    :cond_1
    return-void
.end method
