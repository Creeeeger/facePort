.class public final Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslDatePickerSpinnerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->toString()Ljava/lang/String;

    sget v1, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    return v0

    :cond_0
    const/16 p3, 0x17

    if-eq p2, p3, :cond_5

    const/16 p3, 0x3d

    if-eq p2, p3, :cond_4

    const/16 p3, 0x42

    if-eq p2, p3, :cond_1

    const/16 p3, 0xa0

    if-eq p2, p3, :cond_1

    return v0

    :cond_1
    iget-object p2, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-boolean p2, p2, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mIsEditTextMode:Z

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getImeOptions()I

    move-result p3

    const/4 v2, 0x5

    and-int/2addr p3, v2

    if-ne p3, v2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p2

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->mDatePicker:Landroidx/picker/widget/SeslDatePicker;

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p1, p3}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/widget/EditText;->getImeOptions()I

    move-result p1

    const/4 p2, 0x6

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_4

    iget-object p1, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p1}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->updateInputState()V

    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p0, v0}, Landroidx/picker/widget/SeslDatePickerSpinnerLayout;->setEditTextMode(Z)V

    :cond_4
    :goto_0
    return v1

    :cond_5
    iget-object p0, p0, Landroidx/picker/widget/SeslDatePickerSpinnerLayout$SeslKeyListener;->this$0:Landroidx/picker/widget/SeslDatePickerSpinnerLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->keyboard:I

    return v0
.end method
