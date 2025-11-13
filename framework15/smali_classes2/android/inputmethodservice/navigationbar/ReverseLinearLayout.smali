.class Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;
.super Landroid/widget/LinearLayout;
.source "ReverseLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;,
        Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$ReverseRelativeLayout;
    }
.end annotation


# instance fields
.field private blacklist mIsAlternativeOrder:Z

.field private blacklist mIsLayoutReverse:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreverseGroup(Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-static {p0, p1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseGroup(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static blacklist reverseGroup(Landroid/view/ViewGroup;Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1, p1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, p1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseGroup(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static blacklist reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V
    .locals 4

    instance-of v0, p1, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;

    invoke-interface {v0, p2}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout$Reversible;->reverse(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    if-nez p0, :cond_2

    return-void

    :cond_2
    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private blacklist updateOrder()V
    .locals 6

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsAlternativeOrder:Z

    xor-int/2addr v1, v0

    iget-boolean v2, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eq v2, v1, :cond_3

    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->getChildCount()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v4}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->removeAllViews()V

    add-int/lit8 v4, v2, -0x1

    :goto_2
    if-ltz v4, :cond_2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-super {p0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_2
    iput-boolean v1, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    :cond_3
    return-void
.end method


# virtual methods
.method public whitelist addView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    invoke-static {v0, p1, v1}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public whitelist addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    invoke-static {p2, p1, v0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->reverseParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/View;Z)V

    iget-boolean v0, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsLayoutReverse:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method protected whitelist onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->updateOrder()V

    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->updateOrder()V

    return-void
.end method

.method public blacklist setAlternativeOrder(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->mIsAlternativeOrder:Z

    invoke-direct {p0}, Landroid/inputmethodservice/navigationbar/ReverseLinearLayout;->updateOrder()V

    return-void
.end method
