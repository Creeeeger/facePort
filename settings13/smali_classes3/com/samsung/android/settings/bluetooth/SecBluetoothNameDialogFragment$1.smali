.class Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$1;
.super Ljava/lang/Object;
.source "SecBluetoothNameDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    iget-object v1, v0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v1, :cond_0

    const-string p0, "SecBluetoothNameDialogFragment"

    const-string v0, "mAlertDialog is null"

    .line 225
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 228
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment$1;->this$0:Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;->-$$Nest$fgetmDeviceNameEditText(Lcom/samsung/android/settings/bluetooth/SecBluetoothNameDialogFragment;)Landroid/widget/EditText;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :goto_0
    return-void
.end method
