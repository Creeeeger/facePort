.class public final synthetic Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$SharedPasswordCallback;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    sget-boolean v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->DBG:Z

    const-string v2, "WifiConnectPrefController"

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "connectWithSaredPW : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mTimer:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$Timer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "Stop share timer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mSharingPassword:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mPasswordImageButton:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setSelection(I)V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda5;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V

    const-wide/16 v2, 0x2bc

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
