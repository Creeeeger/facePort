.class public Lcom/android/systemui/qs/SecPageIndicator;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCallback:Lcom/android/systemui/qs/customize/CustomizerTileViewPager$4;

.field public final mContext:Landroid/content/Context;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mNumPages:I

.field public mPosition:I

.field public mQsExpansion:F

.field public mSelectedColor:I

.field public mSelectedColorResId:I

.field public mUnselectedColor:I

.field public mUnselectedColorResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColorResId:I

    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColorResId:I

    iput-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0605c7

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    const v0, 0x7f060691

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    const-string p2, "layout_inflater"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mInflater:Landroid/view/LayoutInflater;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final playAnimation(Landroid/widget/ImageView;ZZ)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v1, 0x96

    if-eqz p2, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    const p3, 0x7f13011c

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    const p3, 0x7f130116

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of v0, p3, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    check-cast p3, Landroid/widget/LinearLayout;

    const-string v0, ", "

    invoke-static {p2, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const p1, 0x7f130119

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public final reset(I)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;ZZ)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    return-void
.end method

.method public final setLocation(F)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    sub-int/2addr v0, v1

    sub-int p1, v0, p1

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;ZZ)V

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;ZZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->reset(I)V

    :cond_4
    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    return-void
.end method

.method public final setNumPages(I)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_2
    if-ge v2, p1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/SecPageIndicator;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d0287

    invoke-virtual {v3, v4, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080e2f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080e2e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v4, v1

    aget-object v5, v4, v0

    iget v6, p0, Lcom/android/systemui/qs/SecPageIndicator;->mUnselectedColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    aget-object v5, v4, v1

    iget v6, p0, Lcom/android/systemui/qs/SecPageIndicator;->mSelectedColor:I

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v5, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v5, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const v4, 0x7f0a08a8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setId(I)V

    new-instance v4, Lcom/android/systemui/qs/SecPageIndicator$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/qs/SecPageIndicator$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qs/SecPageIndicator;I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecPageIndicator;->reset(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method
