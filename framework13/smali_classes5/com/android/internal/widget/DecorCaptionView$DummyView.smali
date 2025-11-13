.class public Lcom/android/internal/widget/DecorCaptionView$DummyView;
.super Landroid/view/View;
.source "DecorCaptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/DecorCaptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyView"
.end annotation


# instance fields
.field private blacklist mHeight:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$msetProperties(Lcom/android/internal/widget/DecorCaptionView$DummyView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView$DummyView;->setProperties(I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2804
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2806
    sget-object v0, Lcom/android/internal/R$styleable;->DecorCaptionView:[I

    .line 2807
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/util/SemViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2808
    const v1, 0x103049c

    goto :goto_0

    .line 2809
    :cond_0
    const v1, 0x103049f

    .line 2806
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2810
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView$DummyView;->setBackgroundColor(I)V

    .line 2811
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2813
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/DecorCaptionView$DummyView;->setFitsSystemWindows(Z)V

    .line 2814
    return-void
.end method

.method private blacklist setProperties(I)V
    .locals 0
    .param p1, "height"    # I

    .line 2817
    iput p1, p0, Lcom/android/internal/widget/DecorCaptionView$DummyView;->mHeight:I

    .line 2818
    return-void
.end method


# virtual methods
.method protected whitelist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 2822
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2824
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$DummyView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/internal/R$styleable;->DecorCaptionView:[I

    .line 2825
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView$DummyView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/util/SemViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2826
    const v2, 0x103049c

    goto :goto_0

    .line 2827
    :cond_0
    const v2, 0x103049f

    .line 2824
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2828
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView$DummyView;->setBackgroundColor(I)V

    .line 2829
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2830
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 2835
    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView$DummyView;->mHeight:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 2836
    .local v0, "height":I
    invoke-super {p0, p1, v0}, Landroid/view/View;->onMeasure(II)V

    .line 2838
    return-void
.end method
