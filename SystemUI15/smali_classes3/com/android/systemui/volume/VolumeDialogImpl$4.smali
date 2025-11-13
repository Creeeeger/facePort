.class public final Lcom/android/systemui/volume/VolumeDialogImpl$4;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic val$hintLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->val$hintLabel:Ljava/lang/String;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 v0, 0x10

    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$4;->val$hintLabel:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method
