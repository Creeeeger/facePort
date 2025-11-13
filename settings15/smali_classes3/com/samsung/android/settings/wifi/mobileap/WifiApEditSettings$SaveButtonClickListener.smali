.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 p1, 0x0

    const-string v0, "TETH_011"

    iget v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    const-string p1, "8009"

    invoke-static {v0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->hideKeyboard(Landroid/content/Context;)V

    const-string v1, "8008"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/settings/Utils;->SPF_SupportMobileApDualAp:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->supportBridgedApStaConcurrency()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisDualBand2GhzAnd5Ghz()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v0, "WifiApEditSettings"

    const-string v1, "Dualband Selected but wifi is ON, so popup dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "CASE showDUalApWarningDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v0, v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f143319

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v2, 0x7f141c4e

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;I)V

    const p1, 0x7f140d30

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v0, 0x7f143429

    invoke-static {p0, v0}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->-$$Nest$mshowBandSelectionTipsDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings$SaveButtonClickListener;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->-$$Nest$mshowBandSelectionTipsDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
