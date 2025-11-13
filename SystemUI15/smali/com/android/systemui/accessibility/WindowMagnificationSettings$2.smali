.class public final Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/WindowMagnificationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f130073

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a0031

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f130070

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a002e

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f130071

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0a002f

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f130072

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const v0, 0x7f0a0030

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    iget-object v0, v0, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    const v1, 0x7f0a0031

    const/4 v2, 0x0

    if-ne p2, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->moveButton$1(FF)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0a002e

    if-ne p2, v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->moveButton$1(FF)V

    goto :goto_0

    :cond_1
    const v1, 0x7f0a002f

    if-ne p2, v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->moveButton$1(FF)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0a0030

    if-ne p2, v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationSettings$2;->this$0:Lcom/android/systemui/accessibility/WindowMagnificationSettings;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/accessibility/WindowMagnificationSettings;->moveButton$1(FF)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
