.class public Lcom/google/android/material/tabs/TabIndicatorInterpolator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;
    .locals 10

    if-nez p1, :cond_0

    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    return-object p0

    :cond_0
    iget-boolean p0, p0, Lcom/google/android/material/tabs/TabLayout;->tabIndicatorFullWidth:Z

    if-nez p0, :cond_a

    instance-of p0, p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    if-eqz p0, :cond_a

    check-cast p1, Lcom/google/android/material/tabs/TabLayout$TabView;

    const/4 p0, 0x3

    new-array v0, p0, [Landroid/view/View;

    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    move v1, v2

    move v5, v1

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v1, p0, :cond_4

    aget-object v8, v0, v1

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    if-eqz v7, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v6

    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v5

    :goto_2
    move v7, v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    sub-int/2addr v5, v6

    new-array v0, p0, [Landroid/view/View;

    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout$TabView;->textView:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout$TabView;->iconView:Landroid/widget/ImageView;

    aput-object v1, v0, v3

    iget-object v1, p1, Lcom/google/android/material/tabs/TabLayout$TabView;->customView:Landroid/view/View;

    aput-object v1, v0, v4

    move v1, v2

    move v6, v1

    move v7, v6

    :goto_3
    if-ge v2, p0, :cond_8

    aget-object v8, v0, v2

    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_7

    if-eqz v7, :cond_5

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v6

    :goto_4
    if-eqz v7, :cond_6

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_5

    :cond_6
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    :goto_5
    move v7, v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    sub-int/2addr v1, v6

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x18

    invoke-static {v0, p0}, Lcom/google/android/material/internal/ViewUtils;->dpToPx(ILandroid/content/Context;)F

    move-result p0

    float-to-int p0, p0

    if-ge v5, p0, :cond_9

    move v5, p0

    :cond_9
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    add-int/2addr v0, p0

    div-int/2addr v0, v4

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result p1

    add-int/2addr p1, p0

    div-int/2addr p1, v4

    div-int/2addr v5, v4

    sub-int p0, v0, v5

    div-int/2addr v1, v4

    sub-int v1, p1, v1

    add-int/2addr v5, v0

    div-int/2addr v0, v4

    add-int/2addr v0, p1

    new-instance p1, Landroid/graphics/RectF;

    int-to-float p0, p0

    int-to-float v1, v1

    int-to-float v2, v5

    int-to-float v0, v0

    invoke-direct {p1, p0, v1, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1

    :cond_a
    new-instance p0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method


# virtual methods
.method public updateIndicatorForOffset(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;Landroid/view/View;FLandroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-static {p1, p3}, Lcom/google/android/material/tabs/TabIndicatorInterpolator;->calculateIndicatorWidthForTab(Lcom/google/android/material/tabs/TabLayout;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    iget p2, p0, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    iget p3, p1, Landroid/graphics/RectF;->left:F

    float-to-int p3, p3

    invoke-static {p4, p2, p3}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FII)I

    move-result p2

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/RectF;->right:F

    float-to-int p0, p0

    iget p1, p1, Landroid/graphics/RectF;->right:F

    float-to-int p1, p1

    invoke-static {p4, p0, p1}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FII)I

    move-result p0

    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p5, p2, p3, p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
