.class public Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialog;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "MobileWipsAlertDialog.java"


# instance fields
.field private mFragment:Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance p1, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialog;->mFragment:Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;

    .line 33
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v0, "MobileWipsAlertDialog"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "MobileWipsAlertDialog"

    const-string v1, "Called onNewIntent()"

    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialog;->mFragment:Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 42
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialog;->mFragment:Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/intelligent/MobileWipsAlertDialogFragment;->update(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
