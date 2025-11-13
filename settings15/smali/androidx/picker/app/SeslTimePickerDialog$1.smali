.class public final Landroidx/picker/app/SeslTimePickerDialog$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker/app/SeslTimePickerDialog;


# direct methods
.method public constructor <init>(Landroidx/picker/app/SeslTimePickerDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/app/SeslTimePickerDialog$1;->this$0:Landroidx/picker/app/SeslTimePickerDialog;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Landroidx/picker/app/SeslTimePickerDialog$1;->this$0:Landroidx/picker/app/SeslTimePickerDialog;

    iget-object p0, p0, Landroidx/picker/app/SeslTimePickerDialog;->mTimePicker:Landroidx/picker/widget/SeslTimePicker;

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePicker;->mDelegate:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-boolean p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->mIsEditTextMode:Z

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setEditTextMode(Z)V

    :cond_0
    return-void
.end method
