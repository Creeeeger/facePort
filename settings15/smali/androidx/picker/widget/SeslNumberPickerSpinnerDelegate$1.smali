.class public final Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    iget-object v0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$1;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->showSoftInput()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
