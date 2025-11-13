.class public final Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p1, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setEditTextMode(Z)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    iget-object p2, p2, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    iget-object p0, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate$2;->this$0:Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->getSelectedPos(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p0, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->mValue:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2, v0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->setValueInternal(IZ)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/picker/widget/SeslNumberPickerSpinnerDelegate;->updateInputTextView()Z

    :goto_1
    return-void
.end method
