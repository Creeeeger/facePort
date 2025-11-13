.class public final Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupAccessibilityDelegate$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final accessibilityBouncerHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final accessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupAccessibilityDelegate$1;->this$0:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupAccessibilityDelegate$1;->accessibilityBouncerHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f130096

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupAccessibilityDelegate$1;->accessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupAccessibilityDelegate$1;->this$0:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;

    iget-object p1, p1, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView;->accessibilityHintType:Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$AccessibilityHintType;

    sget-object v0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupAccessibilityDelegate$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupAccessibilityDelegate$1;->accessibilityEnterHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/view/DeviceEntryIconView$setupAccessibilityDelegate$1;->accessibilityBouncerHint:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_0
    return-void
.end method
