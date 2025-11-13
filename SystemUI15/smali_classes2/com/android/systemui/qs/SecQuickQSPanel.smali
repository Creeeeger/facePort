.class public Lcom/android/systemui/qs/SecQuickQSPanel;
.super Lcom/android/systemui/qs/SecQSPanel;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mDisabledByPolicy:Z

.field public mMeasuredHeightSupplier:Ljava/util/function/DoubleSupplier;

.field private final mSettingHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/SecQSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class p2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/qs/SecQuickQSPanel;->mSettingHelper:Lcom/android/systemui/util/SettingsHelper;

    return-void
.end method


# virtual methods
.method public final closePanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_COLLAPSED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method public final getDumpableTag()Ljava/lang/String;
    .locals 0

    const-string p0, "SecQuickQSPanel"

    return-object p0
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/qs/SecQSPanel;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_COLLAPSE:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p2, p0, Lcom/android/systemui/qs/SecQuickQSPanel;->mMeasuredHeightSupplier:Ljava/util/function/DoubleSupplier;

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/qs/SecQuickQSPanel;->mMeasuredHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {p2}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v0

    double-to-int p2, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public final openPanelEvent()Lcom/android/systemui/qs/QSEvent;
    .locals 0

    sget-object p0, Lcom/android/systemui/qs/QSEvent;->QQS_PANEL_EXPANDED:Lcom/android/systemui/qs/QSEvent;

    return-object p0
.end method

.method public final setVisibility(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/SecQuickQSPanel;->mDisabledByPolicy:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    move p1, v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/SecQSPanel;->setVisibility(I)V

    return-void
.end method
