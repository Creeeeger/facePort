.class Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "BluetoothExpListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothExpListAdapter;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 461
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 462
    new-instance p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const/16 p1, 0x10

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    const/4 p0, 0x0

    .line 463
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method
