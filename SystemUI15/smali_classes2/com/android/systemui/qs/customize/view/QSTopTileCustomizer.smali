.class public final Lcom/android/systemui/qs/customize/view/QSTopTileCustomizer;
.super Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;-><init>(Landroid/content/Context;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {p1}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;->getQsTileMinNum(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mIsTopEdit:Z

    iput v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveRows:I

    iput p1, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveColumns:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableRows:I

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_TABLET:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    :cond_0
    iput v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mAvailableColumns:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/customize/view/QSTileCustomizerBase;->mActiveShowLabel:Z

    const v1, 0x7f0a094b

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070d8a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3, v4, v0, v5, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v2, 0x7f0a096c

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f11001b

    invoke-virtual {v3, v5, p1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0a0958

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setHorizontalFadingEdgeEnabled(Z)V

    const p1, 0x7f0a0a64

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f0a0a60

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
