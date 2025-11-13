.class Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;
.super Ljava/lang/Object;
.source "WifiConnectPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->showErrorDialogForEnterprise(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V
    .locals 0

    .line 1766
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1769
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p2, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p2, :cond_1

    .line 1770
    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmEapCaCertPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroidx/preference/DropDownPreference;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmDoNotValidateEapServerString(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "CACERT_"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mloadCertificates(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroidx/preference/DropDownPreference;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1771
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1772
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1773
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmEapCaCertPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroidx/preference/DropDownPreference;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmTrustOnFirstUse(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mfindIndexOfValue(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroidx/preference/DropDownPreference;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 1775
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmEapCaCertPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroidx/preference/DropDownPreference;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mupdateSummary(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Landroidx/preference/DropDownPreference;I)V

    .line 1776
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmEapCaCertPref(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Landroidx/preference/DropDownPreference;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/DropDownPreference;->setValueIndex(I)V

    .line 1777
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$msetDomainVisible(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    .line 1778
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$msetOcspVisible(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    .line 1779
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$menableSubmitIfAppropriate(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    .line 1780
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mdisableViewsIfAppropriate(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    .line 1781
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fgetmImeHelper(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiImeHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiImeHelper;->updateImeOptions()V

    .line 1782
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fputmErrorDialogDiaply(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Z)V

    .line 1783
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fputmConnectingState(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Z)V

    .line 1784
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$fputmShouldShowMessageForRetry(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;Z)V

    .line 1785
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;->-$$Nest$mresetProgressButtonAndPreference(Lcom/samsung/android/settings/wifi/details/WifiConnectPreferenceController;)V

    :cond_1
    return-void
.end method
