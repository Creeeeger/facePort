.class Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$3;
.super Ljava/lang/Object;
.source "WifiModifyPreferenceController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V
    .locals 0

    .line 1683
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1691
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->-$$Nest$fgetmEapDomainView(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 1692
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController$3;->this$0:Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;->-$$Nest$menableSubmitIfAppropriate(Lcom/samsung/android/settings/wifi/details/WifiModifyPreferenceController;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
