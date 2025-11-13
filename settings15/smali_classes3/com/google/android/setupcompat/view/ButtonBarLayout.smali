.class public Lcom/google/android/setupcompat/view/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final LOG:Lcom/google/android/setupcompat/util/Logger;


# instance fields
.field public originalPaddingLeft:I

.field public originalPaddingRight:I

.field public stacked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-class v1, Lcom/google/android/setupcompat/view/ButtonBarLayout;

    const-string v1, "ButtonBarLayout"

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stacked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stacked:Z

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setStacked(Z)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    move v3, v4

    goto :goto_0

    :cond_0
    move v2, p1

    move v3, v1

    :goto_0
    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v2

    if-le v2, v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    move v6, v1

    :goto_2
    if-ge v1, v5, :cond_3

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/google/android/setupcompat/template/FooterActionButton;

    if-eqz v8, :cond_2

    check-cast v7, Lcom/google/android/setupcompat/template/FooterActionButton;

    iget-boolean v7, v7, Lcom/google/android/setupcompat/template/FooterActionButton;->isPrimaryButtonStyle:Z

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    if-eq v6, v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v5, 0x258

    if-lt v1, v5, :cond_5

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {p0, v4}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setStacked(Z)V

    goto :goto_5

    :cond_6
    :goto_4
    move v4, v3

    :goto_5
    if-eqz v4, :cond_7

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_7
    return-void
.end method

.method public final setStacked(Z)V
    .locals 9

    iget-boolean v0, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stacked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stacked:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v2, v0, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    const v8, 0x7f0a0f3e

    if-eqz p1, :cond_1

    iget v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v5, 0x0

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_1
    invoke-virtual {v6, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    instance-of v5, v6, Lcom/google/android/setupcompat/template/FooterActionButton;

    if-eqz v5, :cond_3

    move-object v5, v6

    check-cast v5, Lcom/google/android/setupcompat/template/FooterActionButton;

    iget-boolean v5, v5, Lcom/google/android/setupcompat/template/FooterActionButton;->isPrimaryButtonStyle:Z

    if-eqz v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    if-eqz v3, :cond_d

    sget-object v2, Lcom/google/android/setupcompat/view/ButtonBarLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v3, "Reorder the FooterActionButtons in the container"

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    if-gt v4, v5, :cond_5

    move v2, v5

    goto :goto_3

    :cond_5
    move v2, v1

    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_6

    const/4 v4, 0x0

    const/4 v6, 0x3

    invoke-static {v6, v4}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    move v4, v1

    :goto_4
    if-ge v4, v0, :cond_b

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v2, :cond_9

    instance-of v7, v6, Lcom/google/android/setupcompat/template/FooterActionButton;

    if-eqz v7, :cond_7

    move-object v8, v6

    check-cast v8, Lcom/google/android/setupcompat/template/FooterActionButton;

    iget-boolean v8, v8, Lcom/google/android/setupcompat/template/FooterActionButton;->isPrimaryButtonStyle:Z

    if-eqz v8, :cond_7

    const/4 v7, 0x2

    invoke-virtual {v3, v7, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_7
    if-nez v7, :cond_8

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_8
    invoke-virtual {v3, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    instance-of v7, v6, Lcom/google/android/setupcompat/template/FooterActionButton;

    if-nez v7, :cond_a

    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    :goto_6
    if-ge v1, v0, :cond_e

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_c

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_d
    sub-int/2addr v0, v5

    :goto_7
    if-ltz v0, :cond_e

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    :cond_e
    if-eqz p1, :cond_f

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingLeft:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingRight:I

    iget v0, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingLeft:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_8

    :cond_f
    iget p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingLeft:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v0

    iget v1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingRight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_8
    return-void
.end method
