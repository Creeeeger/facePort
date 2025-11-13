.class public final Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiplay:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->resetProgressButtonAndPreference()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_1

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v5, 0x1

    const-string v2, "CACERT_"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->loadCertificates(Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mTrustOnFirstUse:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->findIndexOfValue(Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object v0, p2, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->updateSummary$4(Landroidx/preference/DropDownPreference;I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->mEapCaCertPref:Landroidx/preference/DropDownPreference;

    invoke-virtual {p2, p1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setDomainVisible()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setOcspVisible()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->setMinTlsVersionVisible()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->enableSubmitIfAppropriate()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiConfigurePreferenceController;->disableViewsIfAppropriate$4()V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mImeHelper:Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiplay:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->resetProgressButtonAndPreference()V

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$2;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mErrorDialogDiplay:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mConnectingState:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mShouldShowMessageForRetry:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->resetProgressButtonAndPreference()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
