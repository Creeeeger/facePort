.class public final Lcom/android/settings/wifi/WifiConfigController2$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController2;

.field public final synthetic val$view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigController2;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->val$view:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    const v0, 0x7f0a06c4

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiConfigController2;->mGatewayView:Landroid/widget/TextView;

    const v0, 0x7f143570

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    const v0, 0x7f0a0a42

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiConfigController2;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const v0, 0x7f1435dd

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result p1

    const v0, 0x7f0a0551

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    iget-object p1, p1, Lcom/android/settings/wifi/WifiConfigController2;->mDns1View:Landroid/widget/TextView;

    const v0, 0x7f143520

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2$2;->this$0:Lcom/android/settings/wifi/WifiConfigController2;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigController2;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase2;

    invoke-interface {p0}, Lcom/android/settings/wifi/WifiConfigUiBase2;->getSubmitButton()Landroid/widget/Button;

    move-result-object p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/WifiConfigController2$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wifi/WifiConfigController2$2;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
