.class public final Landroidx/picker/app/SeslDatePickerDialog$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/SeslDatePicker$ValidationCallback;


# instance fields
.field public final synthetic this$0:Landroidx/picker/app/SeslDatePickerDialog;


# direct methods
.method public constructor <init>(Landroidx/picker/app/SeslDatePickerDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/app/SeslDatePickerDialog$2;->this$0:Landroidx/picker/app/SeslDatePickerDialog;

    return-void
.end method


# virtual methods
.method public final onValidationChanged(Z)V
    .locals 1

    iget-object p0, p0, Landroidx/picker/app/SeslDatePickerDialog$2;->this$0:Landroidx/picker/app/SeslDatePickerDialog;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method
