.class public final Landroidx/picker/app/SeslDatePickerDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker/app/SeslDatePickerDialog;


# direct methods
.method public constructor <init>(Landroidx/picker/app/SeslDatePickerDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog$1;->this$0:Landroidx/picker/app/SeslDatePickerDialog;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog$1;->this$0:Landroidx/picker/app/SeslDatePickerDialog;

    iget-object p1, p1, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePicker;->isEditTextMode()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/picker/app/SeslDatePickerDialog$1;->this$0:Landroidx/picker/app/SeslDatePickerDialog;

    iget-object p0, p0, Landroidx/picker/app/SeslDatePickerDialog;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    invoke-virtual {p0}, Landroidx/picker/widget/SeslDatePicker;->setEditTextMode()V

    :cond_0
    return-void
.end method
