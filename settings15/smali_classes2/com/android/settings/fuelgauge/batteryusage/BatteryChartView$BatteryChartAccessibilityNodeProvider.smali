.class public final Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAccessibilityFocusNodeViewId:I

.field public final synthetic this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->mAccessibilityFocusNodeViewId:I

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-direct {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->mLevels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-static {v0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isTrapezoidIndexValid(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "Invalid virtual view id:"

    const-string v0, "BatteryChartView"

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-direct {v0, v3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v3, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getContentDescription(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iget-object v4, v4, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-virtual {v4, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;->getSlotBatteryLevelText(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iget-object v5, v5, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mViewModel:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;

    invoke-static {v5, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->isValidToDraw(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartViewModel;I)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-static {v5}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->access$000(Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f140638

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->mAccessibilityFocusNodeViewId:I

    if-ne p1, v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {v3, v1, v2}, Landroid/widget/ImageView;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mLeft:F

    add-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->mTrapezoidSlots:[Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$TrapezoidSlot;->mRight:F

    add-float/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p0

    iput p0, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p0, p2, p3}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_0
    const/16 v0, 0x10

    if-eq p2, v0, :cond_4

    const/16 v0, 0x40

    if-eq p2, v0, :cond_3

    const/16 v0, 0x80

    if-eq p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    invoke-virtual {p0, p2, p3}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_1
    iget p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->mAccessibilityFocusNodeViewId:I

    if-ne p2, p1, :cond_2

    const/high16 p2, -0x80000000

    iput p2, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->mAccessibilityFocusNodeViewId:I

    :cond_2
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    sget p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    const/high16 p2, 0x10000

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->sendAccessibilityEvent(II)Z

    move-result p0

    return p0

    :cond_3
    iput p1, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->mAccessibilityFocusNodeViewId:I

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    sget p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    const p2, 0x8000

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->sendAccessibilityEvent(II)Z

    move-result p0

    return p0

    :cond_4
    iget-object p0, p0, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView$BatteryChartAccessibilityNodeProvider;->this$0:Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;

    sget p2, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->DIVIDER_COLOR:I

    invoke-virtual {p0, p0, p1}, Lcom/android/settings/fuelgauge/batteryusage/BatteryChartView;->onTrapezoidClicked(Landroid/view/View;I)V

    const/4 p0, 0x1

    return p0
.end method
