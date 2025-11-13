.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    sget-boolean p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->buttonValidate()V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p3, p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditErrorTextView:Landroid/widget/TextView;

    if-eqz p3, :cond_1

    iget-object p2, p2, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0xa

    if-lt p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditErrorTextView:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const p2, 0x7f060753

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/EditText;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditErrorTextView:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$81;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDataLimitEditText:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const p2, 0x7f06074e

    invoke-static {p0, p2, p1}, Lcom/samsung/android/settings/bluetooth/lebroadcast/SecBluetoothLeBroadcastSourceInfoController$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/widget/EditText;)V

    :cond_1
    :goto_0
    return-void
.end method
