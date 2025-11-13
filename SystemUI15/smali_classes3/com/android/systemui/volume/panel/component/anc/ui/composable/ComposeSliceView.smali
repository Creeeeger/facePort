.class public final Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;
.super Landroidx/slice/widget/SliceView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public enableAccessibility:Z

.field public layoutListener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;->enableAccessibility:Z

    return-void
.end method


# virtual methods
.method public final addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;->enableAccessibility:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;->enableAccessibility:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;->enableAccessibility:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    return-void
.end method

.method public final performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/volume/panel/component/anc/ui/composable/ComposeSliceView;->enableAccessibility:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
