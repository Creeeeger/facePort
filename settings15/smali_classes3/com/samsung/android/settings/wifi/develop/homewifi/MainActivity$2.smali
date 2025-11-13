.class public final Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$2;
.super Landroidx/activity/OnBackPressedCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$2;->this$0:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroidx/activity/OnBackPressedCallback;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final handleOnBackPressed()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleOnBackPressed: fragment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$2;->this$0:Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HomeWifi.MainActivity"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mCurrentFragment:Landroidx/fragment/app/Fragment;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mScanFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/ScanFragment;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mAdviserFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/AdviserFragment;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->initScanFragment()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->mSignalGuideFragment:Lcom/samsung/android/settings/wifi/develop/homewifi/SignalGuideFragment;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;->initAdviserFragment()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Do you want to exit?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Home Wi-Fi inspection is on-going."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/wifi/develop/homewifi/MainActivity;I)V

    const-string p0, "Exit"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "Resume"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void
.end method
