.class public final Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    return-void
.end method


# virtual methods
.method public final onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f0a0c18

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    if-ne p1, v0, :cond_0

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->setMode(I)V

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;I)V

    iget-object p0, v2, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mAuthErrorListener:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    const/16 v0, 0x37

    iget-object v1, v2, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-static {v0, p1, p0, v1}, Lcom/android/settings/wifi/WifiUtils;->authenticateUser(ILjava/lang/Runnable;Lcom/samsung/android/settings/wifi/details/WifiDppAuthenticationErrorListener;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0c22

    if-ne p1, v0, :cond_1

    iget-boolean p1, v2, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mIsQuickShareAvailable:Z

    if-eqz p1, :cond_3

    iget-boolean p1, v2, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mInSetupWizardFinished:Z

    if-eqz p1, :cond_3

    iget-object p1, v2, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_3

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->setMode(I)V

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$1;I)V

    iget-object p0, v2, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mAuthErrorListener:Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;

    const/16 v0, 0xff

    iget-object v1, v2, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-static {v0, p1, p0, v1}, Lcom/android/settings/wifi/WifiUtils;->authenticateUser(ILjava/lang/Runnable;Lcom/samsung/android/settings/wifi/details/WifiDppAuthenticationErrorListener;Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_1
    const p0, 0x7f0a06a3

    if-ne p1, p0, :cond_3

    iget-object p0, v2, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p1, v2, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f141011

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)V

    const p1, 0x7f14356c

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)V

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$$ExternalSyntheticLambda0;

    invoke-direct {p1, v2}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;)V

    const v0, 0x7f14356b

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f1409b6

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/details/WifiDetailNavigationController;->forgetNetwork$1()V

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
