.class public final Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;->this$0:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;-><init>(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0ae0

    if-ne v0, v1, :cond_0

    const-class p1, Landroid/widget/SeekBar;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView$AccessibilityDelegate;->this$0:Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;

    invoke-static {p0}, Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;->access$000(Lcom/android/systemui/accessibility/SecSeekBarWithIconButtonsView;)Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f1300e2

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const v0, 0x7f0a0517

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p0

    const p1, 0x7f0a050e

    if-ne p0, p1, :cond_2

    :cond_1
    const-class p0, Landroid/widget/Button;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
