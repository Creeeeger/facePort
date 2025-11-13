.class public Lcom/samsung/android/settings/widget/SecRoundButtonView;
.super Landroid/widget/Button;
.source "SecRoundButtonView.java"


# direct methods
.method static bridge synthetic -$$Nest$msetMaxWidth(Lcom/samsung/android/settings/widget/SecRoundButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecRoundButtonView;->setMaxWidth()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTouchDelegateForTarget(Lcom/samsung/android/settings/widget/SecRoundButtonView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecRoundButtonView;->setTouchDelegateForTarget()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecRoundButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010048

    .line 22
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecRoundButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/widget/SecRoundButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/settings/widget/SecRoundButtonView;->updateView()V

    const p2, 0x3fa66666    # 1.3f

    .line 33
    invoke-static {p1, p0, p2}, Lcom/android/settings/Utils;->setMaxFontScale(Landroid/content/Context;Landroid/widget/TextView;F)V

    return-void
.end method

.method private setMaxWidth()V
    .locals 4

    .line 89
    invoke-virtual {p0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 91
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$fraction;->sec_widget_round_button_max_width:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 92
    invoke-virtual {p0}, Landroid/widget/Button;->getMaxWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setMaxWidth(I)V

    :cond_0
    return-void
.end method

.method private setTouchDelegateForTarget()V
    .locals 2

    .line 67
    invoke-virtual {p0}, Landroid/widget/Button;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 68
    new-instance v1, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/settings/widget/SecRoundButtonView$2;-><init>(Lcom/samsung/android/settings/widget/SecRoundButtonView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateView()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Landroid/widget/Button;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/widget/SecRoundButtonView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/widget/SecRoundButtonView$1;-><init>(Lcom/samsung/android/settings/widget/SecRoundButtonView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 47
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 38
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    return-void
.end method
