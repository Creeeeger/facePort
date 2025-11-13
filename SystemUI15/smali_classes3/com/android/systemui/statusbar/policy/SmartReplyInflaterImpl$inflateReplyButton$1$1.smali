.class public final Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$inflateReplyButton$1$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic $parent:Lcom/android/systemui/statusbar/policy/SmartReplyView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SmartReplyView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$inflateReplyButton$1$1;->$parent:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyInflaterImpl$inflateReplyButton$1$1;->$parent:Lcom/android/systemui/statusbar/policy/SmartReplyView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f13012b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x10

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method
