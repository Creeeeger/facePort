.class Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "SeslNumberPickerSpinnerDelegate.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;-><init>(Landroidx/picker/widget/SeslNumberPicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    .line 634
    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 638
    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setEditTextMode(Z)V

    .line 639
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 641
    :cond_0
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p2}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$000(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 642
    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-static {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->access$200(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;Landroid/view/View;)V

    :goto_0
    return-void
.end method
