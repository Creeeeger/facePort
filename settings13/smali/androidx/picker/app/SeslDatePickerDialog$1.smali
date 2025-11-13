.class Landroidx/picker/app/SeslDatePickerDialog$1;
.super Ljava/lang/Object;
.source "SeslDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/picker/app/SeslDatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/app/SeslDatePickerDialog;


# direct methods
.method constructor <init>(Landroidx/picker/app/SeslDatePickerDialog;)V
    .locals 0

    .line 41
    iput-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog$1;->this$0:Landroidx/picker/app/SeslDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 44
    iget-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog$1;->this$0:Landroidx/picker/app/SeslDatePickerDialog;

    invoke-static {p1}, Landroidx/picker/app/SeslDatePickerDialog;->access$000(Landroidx/picker/app/SeslDatePickerDialog;)Landroidx/picker/widget/SeslDatePicker;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePicker;->isEditTextMode()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 45
    iget-object p0, p0, Landroidx/picker/app/SeslDatePickerDialog$1;->this$0:Landroidx/picker/app/SeslDatePickerDialog;

    invoke-static {p0}, Landroidx/picker/app/SeslDatePickerDialog;->access$000(Landroidx/picker/app/SeslDatePickerDialog;)Landroidx/picker/widget/SeslDatePicker;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslDatePicker;->setEditTextMode(Z)V

    :cond_0
    return-void
.end method
