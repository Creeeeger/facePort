.class Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;
.super Ljava/lang/Object;
.source "SeslTimePickerSpinnerDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->setEditTextMode(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1034
    iget-object v0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    iget-object v0, v0, Landroidx/picker/widget/SeslTimePicker$AbsTimePickerDelegate;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    .line 1035
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1036
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$000(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 1038
    iget-object v1, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    invoke-static {v1}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1400(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    iget-object p0, p0, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate$6;->this$0:Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;

    if-eqz v1, :cond_0

    invoke-static {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1400(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;->access$1500(Landroidx/picker/widget/SeslTimePickerSpinnerDelegate;)Landroid/widget/EditText;

    move-result-object p0

    :goto_0
    const/4 v1, 0x0

    .line 1037
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method
