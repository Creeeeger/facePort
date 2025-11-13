.class public final Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;
.super Landroid/app/AlertDialog;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final dataWatcher:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;

.field public mButtonOk:Landroid/widget/Button;

.field public final mContext:Landroid/content/Context;

.field public final mDataLimitValue:Ljava/lang/String;

.field public mEtDataLimit:Landroid/widget/EditText;

.field public final mListener:Landroid/content/DialogInterface$OnClickListener;

.field public mTvDataLength:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSetDataLimitPreferenceController$3;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->dataWatcher:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mDataLimitValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final buttonValidate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0a3d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const v1, 0x7f140b99

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    const v1, 0x7f0a0981

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f1433ec

    invoke-static {v2}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a0982

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->dataWatcher:Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog$1;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v1, 0x7f0a0983

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mTvDataLength:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140d33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1434a4    # 1.9699907E38f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x3

    invoke-virtual {p0, v3, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mDataLimitValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mEtDataLimit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f140b72

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    invoke-virtual {p0, v3, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->mButtonOk:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApSetDataLimitDialog;->buttonValidate()V

    return-void
.end method
