.class public final Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;I)V
    .locals 0

    iput p2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$1;->this$0:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$1;->this$0:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;

    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-interface {p1, p0}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;->onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$1;->this$0:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    if-ltz p2, :cond_1

    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result p1

    if-ge p2, p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mAdapter:Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$KeyboardLayoutAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/KeyboardLayout;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mIm:Landroid/hardware/input/InputManager;

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {p1}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/hardware/input/InputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/DialogFragment;->dismissInternal(ZZ)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
