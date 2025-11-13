.class Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "SeslNumberPickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 3193
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 3202
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 3204
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    .line 3206
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method static synthetic access$2600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;Z)Ljava/lang/String;
    .locals 0

    .line 3193
    invoke-direct {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualCurrentButtonText(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    .line 3585
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3586
    const-class v1, Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3587
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3588
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 3590
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3591
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3593
    :cond_0
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3594
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3595
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 3598
    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 3599
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3600
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 3602
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    .line 3603
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3602
    invoke-static {v1}, Landroidx/reflect/content/res/SeslCompatibilityInfoReflector;->getField_applicationScale(Landroid/content/res/Resources;)F

    move-result v1

    .line 3605
    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3606
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3607
    invoke-direct {p0, v3, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->scaleRect(Landroid/graphics/Rect;F)V

    .line 3608
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3609
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPicker;->isVisibleToUserWrapper()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3612
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3613
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 p2, 0x0

    .line 3614
    aget p2, p1, p2

    aget p1, p1, v2

    invoke-virtual {v3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 3615
    invoke-direct {p0, v3, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->scaleRect(Landroid/graphics/Rect;F)V

    .line 3616
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3618
    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    const/16 p1, 0x40

    .line 3619
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_2
    const/16 p1, 0x80

    .line 3621
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3623
    :goto_0
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3624
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p1

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_4

    :cond_3
    const/16 p1, 0x1000

    .line 3625
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3627
    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result p0

    if-le p1, p0, :cond_6

    :cond_5
    const/16 p0, 0x2000

    .line 3628
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_6
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 3551
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3552
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3553
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3554
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 3555
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 3556
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 3557
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p2

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTooltipText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    .line 3558
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 3559
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 3560
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 3561
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3562
    invoke-virtual {v1, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 3563
    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p3, p3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p3, v1}, Landroidx/picker/widget/SeslNumberPicker;->isVisibleToUserWrapper(Landroid/graphics/Rect;)Z

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3564
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3566
    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3567
    iget-object p4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p4, p4, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p4, p3}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 p4, 0x0

    .line 3568
    aget p4, p3, p4

    aget p2, p3, p2

    invoke-virtual {v1, p4, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 3569
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3571
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_0

    const/16 p1, 0x40

    .line 3572
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x80

    .line 3574
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3576
    :goto_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x10

    .line 3577
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 5

    .line 3521
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 3522
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 3523
    iget v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    .line 3524
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v1, 0x40

    .line 3525
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    .line 3527
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    const/16 v1, 0x80

    .line 3528
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 3530
    :goto_0
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4700(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3531
    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3532
    invoke-direct {p0, v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualCurrentButtonText(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 3533
    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 3534
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    .line 3535
    invoke-virtual {v0, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    .line 3537
    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 3538
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3539
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v1}, Landroidx/picker/widget/SeslNumberPicker;->isVisibleToUserWrapper(Landroid/graphics/Rect;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 3540
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 3542
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 3543
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    .line 3544
    aget p0, p1, v4

    aget p1, p1, v3

    invoke-virtual {v1, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 3545
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 3510
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 3511
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3512
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3513
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    .line 3502
    :cond_2
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    .line 3503
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3504
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3505
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void

    .line 3495
    :cond_4
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object p2

    .line 3496
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3497
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3498
    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private getVirtualCurrentButtonText(Z)Ljava/lang/String;
    .locals 3

    .line 3679
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$5000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    .line 3680
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3681
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$5100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    .line 3684
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v2

    if-gt v0, v2, :cond_2

    .line 3685
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3686
    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$5200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v2

    sub-int/2addr v0, v2

    aget-object v0, v1, v0

    :goto_0
    move-object v1, v0

    :cond_2
    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 3689
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 2

    .line 3653
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4900(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4900(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    .line 3654
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$5000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    sub-int/2addr v0, v1

    .line 3655
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3656
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$5100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3658
    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$5200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 3659
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3660
    :cond_2
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$5200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p0

    sub-int/2addr v0, p0

    aget-object p0, v1, v0

    :goto_0
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 2

    .line 3666
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4900(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4900(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    .line 3667
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$5000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    add-int/2addr v0, v1

    .line 3668
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3669
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$5100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)I

    move-result v0

    .line 3671
    :cond_1
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 3672
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3100(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3673
    :cond_2
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$2800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)[Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$5200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p0

    sub-int/2addr v0, p0

    aget-object p0, v1, v0

    :goto_0
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 1

    .line 3645
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result p0

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 1

    .line 3649
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result v0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private scaleRect(Landroid/graphics/Rect;F)V
    .locals 1

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-eqz p0, :cond_0

    .line 3637
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->left:I

    .line 3638
    iget p0, p1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    .line 3639
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    .line 3640
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    add-float/2addr p0, v0

    float-to-int p0, p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 1

    .line 3480
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3481
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    .line 3482
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 3483
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 3484
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3485
    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p3, p3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 3486
    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p3, p3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 3487
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p0, p2}, Landroid/widget/LinearLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 2

    .line 3469
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3470
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 3471
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3472
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3473
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 3474
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p0, p1}, Landroid/widget/LinearLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 12

    .line 3210
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    .line 3211
    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    .line 3212
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    .line 3213
    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v3

    .line 3214
    iget-object v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v8

    .line 3215
    iget-object v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v9

    .line 3216
    iget-object v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    .line 3217
    invoke-static {v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4300(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    const/high16 v6, -0x80000000

    if-eq v4, v6, :cond_1

    :cond_0
    if-eq p1, v5, :cond_6

    const/4 v4, 0x1

    if-eq p1, v4, :cond_5

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    .line 3239
    :cond_1
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    if-nez p0, :cond_2

    .line 3241
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    const/4 v6, 0x3

    .line 3234
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    .line 3235
    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p1

    iget-object v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v4

    sub-int/2addr p1, v4

    sub-int/2addr v1, v0

    add-int v10, v8, v1

    sub-int/2addr v3, v2

    add-int v11, v9, v3

    move-object v5, p0

    move v9, p1

    .line 3233
    invoke-direct/range {v5 .. v11}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    .line 3228
    :cond_4
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    .line 3229
    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p1

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v2

    add-int/2addr p1, v2

    sub-int/2addr v1, v0

    add-int/2addr v1, v8

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    .line 3231
    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 3228
    invoke-direct {p0, v8, p1, v1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v6, 0x1

    .line 3224
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v7

    sub-int/2addr v1, v0

    add-int v10, v8, v1

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    .line 3226
    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p1

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result v0

    add-int v11, p1, v0

    move-object v5, p0

    .line 3223
    invoke-direct/range {v5 .. v11}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_6
    sub-int/2addr v1, v0

    add-int/2addr v1, v8

    sub-int/2addr v3, v2

    add-int/2addr v3, v9

    .line 3220
    invoke-direct {p0, v8, v9, v1, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 3249
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3250
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3252
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 3253
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq p2, v2, :cond_2

    if-eq p2, v5, :cond_1

    if-eq p2, v4, :cond_1

    if-eq p2, v3, :cond_1

    .line 3272
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 3267
    :cond_1
    invoke-direct {p0, v0, p2, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1

    .line 3256
    :cond_2
    invoke-direct {p0, v0, v5, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 3258
    invoke-direct {p0, v0, v4, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 3260
    invoke-direct {p0, v0, v3, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 11

    .line 3277
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$700(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3281
    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    .line 3282
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    const/4 v3, -0x1

    const/high16 v4, -0x80000000

    const/16 v5, 0x80

    const/16 v6, 0x40

    const/4 v7, 0x1

    if-eq p1, v3, :cond_1c

    const/high16 v3, 0x10000

    const v8, 0x8000

    const/16 v9, 0x10

    if-eq p1, v7, :cond_15

    const/4 v10, 0x2

    if-eq p1, v10, :cond_8

    const/4 v10, 0x3

    if-eq p1, v10, :cond_1

    goto/16 :goto_0

    :cond_1
    if-eq p2, v9, :cond_6

    if-eq p2, v6, :cond_4

    if-eq p2, v5, :cond_2

    return v1

    .line 3402
    :cond_2
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_3

    .line 3403
    iput v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3404
    invoke-virtual {p0, p1, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3406
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {p1, v1, p0, v0, v2}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v7

    :cond_3
    return v1

    .line 3393
    :cond_4
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_5

    .line 3394
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3395
    invoke-virtual {p0, p1, v8}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3397
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {p1, v1, p0, v0, v2}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v7

    :cond_5
    return v1

    .line 3383
    :cond_6
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3384
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3385
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2, v7}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3386
    invoke-virtual {p0, p1, v7}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3388
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0, v7}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    return v7

    :cond_7
    return v1

    :cond_8
    if-eq p2, v7, :cond_13

    if-eq p2, v10, :cond_11

    if-eq p2, v9, :cond_f

    const/16 v2, 0x20

    if-eq p2, v2, :cond_d

    if-eq p2, v6, :cond_b

    if-eq p2, v5, :cond_9

    .line 3376
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 3367
    :cond_9
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_a

    .line 3368
    iput v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3369
    invoke-virtual {p0, p1, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3371
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {p2, v1, p1, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v7

    :cond_a
    return v1

    .line 3358
    :cond_b
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_c

    .line 3359
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3360
    invoke-virtual {p0, p1, v8}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3362
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p1

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3600(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {p2, v1, p1, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v7

    :cond_c
    return v1

    .line 3351
    :cond_d
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3352
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->performLongClick()V

    return v7

    :cond_e
    return v1

    .line 3344
    :cond_f
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 3345
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->performClick()V

    return v7

    :cond_10
    return v1

    .line 3337
    :cond_11
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3338
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    return v7

    :cond_12
    return v1

    .line 3332
    :cond_13
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_14

    .line 3333
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    move-result p0

    return p0

    :cond_14
    return v1

    :cond_15
    if-eq p2, v9, :cond_1a

    if-eq p2, v6, :cond_18

    if-eq p2, v5, :cond_16

    return v1

    .line 3434
    :cond_16
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_17

    .line 3435
    iput v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3436
    invoke-virtual {p0, p1, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3438
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v7

    :cond_17
    return v1

    .line 3425
    :cond_18
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_19

    .line 3426
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3427
    invoke-virtual {p0, p1, v8}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3429
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$3800(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)I

    move-result p0

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v7

    :cond_19
    return v1

    .line 3415
    :cond_1a
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 3416
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3417
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3418
    invoke-virtual {p0, p1, v7}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 3420
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0, v7}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    return v7

    :cond_1b
    return v1

    :cond_1c
    if-eq p2, v6, :cond_25

    if-eq p2, v5, :cond_23

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_20

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1d

    .line 3445
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    .line 3319
    :cond_1d
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    .line 3320
    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p1

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMinValue()I

    move-result p2

    if-le p1, p2, :cond_1f

    .line 3321
    :cond_1e
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3322
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3323
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0, v7}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    return v7

    :cond_1f
    return v1

    .line 3310
    :cond_20
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    .line 3311
    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrapSelectorWheel()Z

    move-result p1

    if-nez p1, :cond_21

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getValue()I

    move-result p1

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getMaxValue()I

    move-result p2

    if-ge p1, p2, :cond_22

    .line 3312
    :cond_21
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3313
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p1, v7}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$4500(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    .line 3314
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0, v7}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$1400(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Z)V

    return v7

    :cond_22
    return v1

    .line 3298
    :cond_23
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_24

    .line 3299
    iput v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3302
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    return v7

    :cond_24
    return v1

    .line 3288
    :cond_25
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_26

    .line 3289
    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 3292
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->requestAccessibilityFocus(Landroid/view/View;)Z

    return v7

    :cond_26
    return v1
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3460
    :cond_0
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3462
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 3461
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 3457
    :cond_1
    invoke-direct {p0, p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    .line 3451
    :cond_2
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3453
    invoke-direct {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 3452
    invoke-direct {p0, p1, p2, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
