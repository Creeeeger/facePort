.class Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;
.super Ljava/lang/Object;
.source "ConfirmUCMLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0

    .line 648
    iput-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 651
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mshouldAutoShowSoftKeyboard(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$mresetState(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    return-void

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmImm(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$3;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-$$Nest$fgetmPasswordEntry(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
