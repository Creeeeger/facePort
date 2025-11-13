.class public final Lcom/android/systemui/qs/bar/DataUsageBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;


# instance fields
.field public final mDataUsageLabelView:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

.field public mIsSecurityFooterVisible:Z

.field public final mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;Lcom/android/systemui/qs/QSSecurityFooter;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mIsSecurityFooterVisible:Z

    iput-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageLabelView:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    iput-object p3, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarController$4;

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageLabelView:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mVisibilityChangedListener:Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;

    :cond_0
    return-void
.end method

.method public final getBarLayout()I
    .locals 0

    const p0, 0x7f0d039d

    return p0
.end method

.method public final isAvailable()Z
    .locals 0

    sget-boolean p0, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    return p0
.end method

.method public final onFinishInflate()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mDataUsageLabelView:Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mDataUsageVisibility:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p0, Lcom/android/systemui/statusbar/phone/datausage/DataUsageLabelView;->mVisibilityChangedListener:Lcom/android/systemui/qs/VisibilityChangedDispatcher$OnVisibilityChangedListener;

    :cond_1
    return-void
.end method

.method public final onVisibilityChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    return-void
.end method

.method public final setExpanded(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/shade/SecPanelSplitHelper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mSecurityFooter:Lcom/android/systemui/qs/QSSecurityFooter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mIsSecurityFooterVisible:Z

    iget-boolean v0, v0, Lcom/android/systemui/qs/QSSecurityFooter;->mIsVisible:Z

    if-eq p1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mIsSecurityFooterVisible:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/DataUsageBar;->updateHeightMargins()V

    :cond_1
    return-void
.end method

.method public final updateHeightMargins()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_DATA_USAGE_LABEL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/DataUsageBar;->mIsSecurityFooterVisible:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    iput p0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method
