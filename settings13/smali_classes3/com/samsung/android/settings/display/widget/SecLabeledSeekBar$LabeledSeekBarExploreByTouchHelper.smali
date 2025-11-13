.class Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "SecLabeledSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabeledSeekBarExploreByTouchHelper"
.end annotation


# instance fields
.field private mIsLayoutRtl:Z

.field final synthetic this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    .line 176
    invoke-direct {p0, p2}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 177
    invoke-virtual {p2}, Landroid/widget/SeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 178
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

.method private getBoundsInParentFromVirtualViewId(I)Landroid/graphics/Rect;
    .locals 4

    .line 256
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    sub-int p1, v0, p1

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, v0, -0x1

    .line 258
    invoke-direct {p0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    .line 259
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 260
    invoke-direct {p0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth()I

    move-result v2

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    .line 261
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    if-nez p1, :cond_1

    move v1, v2

    .line 265
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 266
    iget-object p1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    .line 268
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 269
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getHeight()I

    move-result p0

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1
.end method

.method private getHalfVirtualViewWidth()I
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    .line 242
    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    .line 243
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getPaddingEnd()I

    move-result v1

    sub-int/2addr v0, v1

    .line 244
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    div-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private getVirtualViewIdIndexFromX(F)I
    .locals 1

    float-to-int p1, p1

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    .line 249
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getHalfVirtualViewWidth()I

    move-result v0

    div-int/2addr p1, v0

    const/4 v0, 0x0

    .line 248
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 250
    div-int/lit8 p1, p1, 0x2

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 252
    iget-boolean v0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->mIsLayoutRtl:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    sub-int p1, p0, p1

    :cond_0
    return p1
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getVirtualViewIdIndexFromX(F)I

    move-result p0

    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 188
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getMax()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p0, :cond_0

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 p3, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p3

    :cond_0
    const/16 v0, 0x10

    if-eq p2, v0, :cond_1

    return p3

    .line 203
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p2, p1}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;->setProgress(I)V

    const/4 p2, 0x1

    .line 204
    invoke-virtual {p0, p1, p2}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return p2
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 237
    const-class p0, Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 225
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 226
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 227
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

.method protected onPopulateNodeForHost(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .line 232
    const-class p0, Landroid/widget/RadioGroup;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .line 214
    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->getBoundsInParentFromVirtualViewId(I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    const/16 v0, 0x10

    .line 216
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 217
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 218
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    .line 219
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCheckable(Z)V

    .line 220
    iget-object p0, p0, Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar$LabeledSeekBarExploreByTouchHelper;->this$0:Lcom/samsung/android/settings/display/widget/SecLabeledSeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setChecked(Z)V

    return-void
.end method
