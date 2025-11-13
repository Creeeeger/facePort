.class public final Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mIsLayoutRtl:Z

.field public final synthetic this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    return-void
.end method


# virtual methods
.method public final getHalfVirtualViewWidth$1()I
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    div-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getVirtualViewAt(FF)I
    .locals 1

    float-to-int p1, p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth$1()I

    move-result v0

    div-int/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    sub-int p1, p0, p1

    :cond_0
    return p1
.end method

.method public final getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPerformActionForVirtualView(II)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    return v1

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->setProgress(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)V

    return p2
.end method

.method public final onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    const-class p0, Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public final onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    const-class p0, Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth$1()I

    move-result v4

    mul-int/2addr v4, v3

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v3

    add-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth$1()I

    move-result p0

    mul-int/2addr p0, v2

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v2

    add-int/2addr v2, p0

    const/4 p0, 0x0

    if-nez v0, :cond_1

    move v3, p0

    :cond_1
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    if-ne v0, v5, :cond_2

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getHeight()I

    move-result v5

    invoke-virtual {v0, v3, p0, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-ne p1, v0, :cond_3

    goto :goto_1

    :cond_3
    move v4, p0

    :goto_1
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    return-void
.end method
