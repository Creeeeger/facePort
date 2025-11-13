.class public final Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAccessibilityFocusedView:I

.field public final mTempArray:[I

.field public final mTempRect:Landroid/graphics/Rect;

.field public final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    const/high16 p1, -0x80000000

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method public static scaleRect(FLandroid/graphics/Rect;)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v1

    float-to-int p0, v0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 14

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v2, v2, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v3

    iget-object v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v7

    iget-object v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v4, v4, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v8

    iget-object v4, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v5, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastFocusedChildVirtualViewId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    iget v5, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mLastHoveredChildVirtualViewId:I

    const/high16 v9, -0x80000000

    if-eq v5, v9, :cond_1

    :cond_0
    const/16 v5, 0x80

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eq p1, v6, :cond_9

    if-eq p1, v13, :cond_8

    if-eq p1, v12, :cond_4

    if-eq p1, v11, :cond_3

    :cond_1
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    :cond_2
    return-object p0

    :cond_3
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v11

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v4, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    iget p1, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    sub-int p1, v4, p1

    sub-int/2addr v1, v0

    add-int v9, v1, v7

    sub-int/2addr v3, v2

    add-int v10, v3, v8

    const/4 v6, 0x3

    move-object v5, p0

    move v8, p1

    invoke-virtual/range {v5 .. v11}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(IIIIILjava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_4
    iget p1, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget v2, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    add-int/2addr p1, v2

    sub-int/2addr v1, v0

    add-int/2addr v1, v7

    iget v0, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    sub-int/2addr v0, v2

    iget-object v2, v4, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v2, v3, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v3, v12, :cond_5

    invoke-virtual {v2, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    invoke-virtual {v2, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_0
    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v4, v3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez v4, :cond_6

    const-class v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v10}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualCurrentButtonText(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTooltipText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSelected(Z)V

    invoke-virtual {v2, v10}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    goto :goto_1

    :cond_6
    iget-object v3, v3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomTalkbackFormatter:Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;

    if-eqz v3, :cond_7

    invoke-virtual {p0, v10}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualCurrentButtonText(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    :goto_1
    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v7, p1, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p1}, Landroidx/reflect/view/SeslViewReflector;->isVisibleToUser(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p1

    invoke-virtual {v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    aget p0, p1, v10

    aget p1, p1, v13

    invoke-virtual {v3, p0, p1}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v2

    :cond_8
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v11

    sub-int/2addr v1, v0

    add-int v9, v1, v7

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v0, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget p1, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mSelectionDividerHeight:I

    add-int v10, v0, p1

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(IIIIILjava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    return-object p0

    :cond_9
    sub-int/2addr v1, v0

    add-int/2addr v1, v7

    sub-int/2addr v3, v2

    add-int/2addr v3, v8

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p1

    const-class v0, Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v2, :cond_a

    iget v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-le v2, v4, :cond_b

    :cond_a
    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v0, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_b
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v0, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v2, :cond_c

    iget v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v4, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ge v2, v4, :cond_d

    :cond_c
    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, v0, v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    :cond_d
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    invoke-virtual {p1, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Landroidx/reflect/content/res/SeslCompatibilityInfoReflector;->getField_applicationScale(Landroid/content/res/Resources;)F

    move-result v0

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7, v8, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->scaleRect(FLandroid/graphics/Rect;)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v3, v1}, Landroidx/reflect/view/SeslViewReflector;->isVisibleToUser(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v3, v3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    aget v3, v1, v10

    aget v1, v1, v13

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-static {v0, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->scaleRect(FLandroid/graphics/Rect;)V

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, v6, :cond_e

    invoke-virtual {p1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_2

    :cond_e
    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_2
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_f

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ge v1, v0, :cond_10

    :cond_f
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_10
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v0, :cond_11

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-le v0, p0, :cond_12

    :cond_11
    const/16 p0, 0x2000

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_12
    return-object p1
.end method

.method public final createAccessibilityNodeInfoForVirtualButton(IIIIILjava/lang/String;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    invoke-virtual {v0, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    iget-object p6, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p6, p6, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    invoke-virtual {v0, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTooltipText(Ljava/lang/CharSequence;)V

    const/4 p6, 0x1

    invoke-virtual {v0, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, p6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p2}, Landroidx/reflect/view/SeslViewReflector;->isVisibleToUser(Landroid/graphics/Rect;Landroid/view/View;)Z

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mTempArray:[I

    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p3, p3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/4 p3, 0x0

    aget p3, p2, p3

    aget p2, p2, p6

    invoke-virtual {v1, p3, p2}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_0

    const/16 p1, 0x40

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x80

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :goto_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x10

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-object v0
.end method

.method public final findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

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

    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v0, v1, p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;Ljava/util/List;I)V

    return-object v1

    :cond_2
    invoke-virtual {p0, v0, v1, v5}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;Ljava/util/List;I)V

    invoke-virtual {p0, v0, v1, v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;Ljava/util/List;I)V

    invoke-virtual {p0, v0, v1, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;Ljava/util/List;I)V

    return-object v1
.end method

.method public final findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;Ljava/util/List;I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_4

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p3, p3, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public final getVirtualCurrentButtonText(Z)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v1

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-gt v1, v2, :cond_3

    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomTalkbackFormatter:Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;

    if-eqz v2, :cond_1

    iget-object v0, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object v0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonths:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, v0

    aget-object v0, v2, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    const-string p1, ", "

    invoke-static {v0, p1}, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mPickerContentDescription:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public final getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    add-int/lit8 v1, v1, -0x1

    iget-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v1

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-lt v1, v0, :cond_3

    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomTalkbackFormatter:Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;

    if-eqz v2, :cond_1

    iget-object p0, v2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonths:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    iget-object v2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    sub-int/2addr v1, v0

    aget-object p0, v2, v1

    :goto_0
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    add-int/lit8 v1, v1, 0x1

    iget-boolean v2, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getWrappedSelectorIndex(I)I

    move-result v1

    :cond_0
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-gt v1, v0, :cond_3

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mCustomTalkbackFormatter:Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;

    if-eqz v0, :cond_1

    iget-object p0, v0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$1;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mMonths:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0

    :cond_1
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    sub-int/2addr v1, p0

    aget-object p0, v0, v1

    :goto_0
    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 11

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsStartingAnimation:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v0

    iget-object v1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v1, v1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/high16 v5, -0x80000000

    const/16 v6, 0x80

    const/16 v7, 0x40

    if-eq p1, v4, :cond_1e

    const v4, 0x8000

    const/high16 v8, 0x10000

    const/16 v9, 0x10

    if-eq p1, v3, :cond_17

    const/4 v10, 0x2

    if-eq p1, v10, :cond_8

    const/4 v10, 0x3

    if-eq p1, v10, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eq p2, v9, :cond_6

    if-eq p2, v7, :cond_4

    if-eq p2, v6, :cond_2

    return v2

    :cond_2
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_3

    iput v5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v8}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {p1, v2, p0, v0, v1}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v3

    :cond_3
    return v2

    :cond_4
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_5

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {p1, v2, p0, v0, v1}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v3

    :cond_5
    return v2

    :cond_6
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p2, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p2, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    invoke-virtual {p0, p1, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    return v3

    :cond_7
    return v2

    :cond_8
    if-eq p2, v3, :cond_15

    if-eq p2, v10, :cond_13

    if-eq p2, v9, :cond_10

    const/16 v1, 0x20

    if-eq p2, v1, :cond_d

    if-eq p2, v7, :cond_b

    if-eq p2, v6, :cond_9

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_9
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_a

    iput v5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v8}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {p1, v2, p2, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v3

    :cond_a
    return v2

    :cond_b
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_c

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mBottomSelectionDividerBottom:I

    invoke-virtual {p1, v2, p2, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v3

    :cond_c
    return v2

    :cond_d
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iput-boolean v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIgnoreMoveEvents:Z

    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez p1, :cond_e

    goto :goto_0

    :cond_e
    iput-boolean v3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsLongClicked:Z

    :goto_0
    return v3

    :cond_f
    return v2

    :cond_10
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mIsEditTextModeEnabled:Z

    if-nez p1, :cond_11

    goto :goto_1

    :cond_11
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    :goto_1
    return v3

    :cond_12
    return v2

    :cond_13
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->clearFocus()V

    return v3

    :cond_14
    return v2

    :cond_15
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->isFocused()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    move-result p0

    return p0

    :cond_16
    return v2

    :cond_17
    if-eq p2, v9, :cond_1c

    if-eq p2, v7, :cond_1a

    if-eq p2, v6, :cond_18

    return v2

    :cond_18
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_19

    iput v5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v8}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    invoke-virtual {p1, v2, v2, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v3

    :cond_19
    return v2

    :cond_1a
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_1b

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    invoke-virtual {p0, p1, v4}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    iget p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mTopSelectionDividerTop:I

    invoke-virtual {p1, v2, v2, v0, p0}, Landroid/widget/LinearLayout;->invalidate(IIII)V

    return v3

    :cond_1b
    return v2

    :cond_1c
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1d

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p2, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p2, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    invoke-virtual {p0, p1, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    return v3

    :cond_1d
    return v2

    :cond_1e
    if-eq p2, v7, :cond_27

    if-eq p2, v6, :cond_25

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_22

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1f

    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_1f
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean p2, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p2, :cond_20

    iget p2, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget p3, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-le p2, p3, :cond_21

    :cond_20
    invoke-virtual {p1, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    return v3

    :cond_21
    return v2

    :cond_22
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean p2, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez p2, :cond_23

    iget p2, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget p3, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ge p2, p3, :cond_24

    :cond_23
    invoke-virtual {p1, v2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->changeValueByOne(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0, v3}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->startFadeAnimation(Z)V

    return v3

    :cond_24
    return v2

    :cond_25
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne p2, p1, :cond_26

    iput v5, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->clearAccessibilityFocus(Landroid/view/View;)V

    return v3

    :cond_26
    return v2

    :cond_27
    iget p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq p2, p1, :cond_28

    iput p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-static {p0}, Landroidx/reflect/view/SeslViewReflector;->requestAccessibilityFocus(Landroid/view/View;)V

    return v3

    :cond_28
    return v2
.end method

.method public final sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p3, p3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    iget-object p3, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p3, p3, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p2, p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p0, p2}, Landroid/widget/LinearLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method public final sendAccessibilityEventForVirtualView(II)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMaxValue:I

    if-ge v1, v0, :cond_5

    :cond_1
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p1, p1, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p1, p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPicker$AbsNumberPickerDelegate;->mDelegator:Landroidx/picker/widget/SeslNumberPicker;

    invoke-virtual {p0, p0, p1}, Landroid/widget/LinearLayout;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-boolean v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    iget v1, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    iget v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mMinValue:I

    if-le v1, v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
