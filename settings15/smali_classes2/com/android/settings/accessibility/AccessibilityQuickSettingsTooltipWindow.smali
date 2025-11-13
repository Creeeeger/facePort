.class public final Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;
.super Landroid/widget/PopupWindow;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAccessibilityDelegate:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow$1;

.field public mCloseDelayTimeMillis:J

.field public final mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow$1;-><init>(Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mAccessibilityDelegate:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow$1;

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 1

    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getAvailableWindowWidth()I
    .locals 1

    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07003b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    return p0
.end method

.method public final setup(Ljava/lang/CharSequence;)V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mCloseDelayTimeMillis:J

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mContext:Landroid/content/Context;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d002e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mAccessibilityDelegate:Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow$1;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0c1d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v2, 0x7f080168

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0c1c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->getAvailableWindowWidth()I

    move-result p1

    const/high16 v2, -0x80000000

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v2, 0x0

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    return-void
.end method

.method public final showAtLocation(Landroid/view/View;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-wide p1, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mCloseDelayTimeMillis:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_1

    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mHandler:Landroid/os/Handler;

    :cond_1
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;)V

    iget-wide p3, p0, Lcom/android/settings/accessibility/AccessibilityQuickSettingsTooltipWindow;->mCloseDelayTimeMillis:J

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
