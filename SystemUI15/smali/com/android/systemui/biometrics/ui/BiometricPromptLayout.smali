.class public Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCustomBpHeight:I

.field public final mCustomBpWidth:I

.field public final mUseCustomBpSize:Z

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050093

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mUseCustomBpSize:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700d7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mCustomBpWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700d3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mCustomBpHeight:I

    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mUseCustomBpSize:Z

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mCustomBpWidth:I

    iget p2, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mCustomBpHeight:I

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v2, v1, :cond_7

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a0bde

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v5, v6, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a0bdd

    if-eq v5, v6, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a0bdf

    if-eq v5, v6, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a0222

    if-ne v5, v6, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a0181

    const v8, 0x7f0a0180

    if-ne v5, v6, :cond_2

    invoke-virtual {p0, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4, v6, v5}, Landroid/view/View;->measure(II)V

    goto :goto_3

    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const v6, 0x7f0a0661

    if-ne v5, v6, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/high16 v6, -0x80000000

    if-ne v5, v8, :cond_4

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    goto :goto_3

    :cond_4
    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-static {p1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    :goto_3
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    move v3, v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_7
    new-instance p2, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;

    invoke-direct {p2, p1, v3}, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;-><init>(II)V

    iget p1, v0, Landroid/graphics/Insets;->left:I

    iget v1, p2, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumWidth:I

    add-int/2addr v1, p1

    iget p1, v0, Landroid/graphics/Insets;->right:I

    add-int/2addr v1, p1

    iget p1, p2, Lcom/android/systemui/biometrics/AuthDialog$LayoutParams;->mMediumHeight:I

    iget p2, v0, Landroid/graphics/Insets;->bottom:I

    add-int/2addr p1, p2

    invoke-virtual {p0, v1, p1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method
