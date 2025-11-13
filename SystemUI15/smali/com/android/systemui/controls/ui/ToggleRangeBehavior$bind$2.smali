.class public final Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    sget-object v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->Companion:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iget-object v2, v1, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    const/16 v4, 0x2710

    invoke-virtual {v2, v4}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iget-object v4, v4, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz v4, :cond_1

    move-object v3, v4

    :cond_1
    invoke-virtual {v3}, Landroid/service/controls/templates/RangeTemplate;->getStepValue()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    cmpg-double v3, v3, v5

    const/4 v4, 0x1

    if-nez v3, :cond_2

    move v0, v4

    :cond_2
    xor-int/2addr v0, v4

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    if-eqz p0, :cond_3

    invoke-static {v0, p1, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    :cond_3
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x10

    const/4 v2, 0x1

    if-ne p2, v1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iget-object p1, p1, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->secControlActionCoordinator:Lcom/android/systemui/controls/ui/SecControlActionCoordinator;

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    iget-object p3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->templateId:Ljava/lang/String;

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move-object p3, v0

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->control:Landroid/service/controls/Control;

    if-eqz p0, :cond_3

    move-object v0, p0

    :cond_3
    check-cast p1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-virtual {p1, p2, p3, v0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->touchCard(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;Landroid/service/controls/Control;)V

    goto :goto_5

    :cond_4
    const/16 v1, 0x20

    if-ne p2, v1, :cond_5

    goto :goto_4

    :cond_5
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v1

    if-ne p2, v1, :cond_9

    if-eqz p3, :cond_9

    const-string v1, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    sget-object p3, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->Companion:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;

    iget-object p3, p2, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p3, :cond_7

    goto :goto_3

    :cond_7
    move-object p3, v0

    :goto_3
    invoke-virtual {p3}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    move-result p3

    iget-object p2, p2, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p2, :cond_8

    move-object v0, p2

    :cond_8
    invoke-virtual {v0}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    move-result p2

    const/4 v0, 0x0

    const v1, 0x461c4000    # 10000.0f

    invoke-static {v0, v1, p3, p2, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p1

    float-to-int p1, p1

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    iget-boolean p3, p2, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    invoke-virtual {p2, p1, p3, v2}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->updateRange(IZZ)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;->this$0:Lcom/android/systemui/controls/ui/ToggleRangeBehavior;

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->endUpdateRange()V

    goto :goto_5

    :cond_9
    :goto_4
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    :cond_b
    :goto_5
    return v2
.end method
