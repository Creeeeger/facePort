.class Lcom/android/settings/vpn2/ConfigDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "ConfigDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private hmMaxLenId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mAllowedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAlwaysOnInvalidReason:Landroid/widget/TextView;

.field private mAlwaysOnVpn:Landroid/widget/CheckBox;

.field private mDnsServers:Landroid/widget/TextView;

.field private mEditing:Z

.field private mEnablePFS:Landroid/widget/CheckBox;

.field private mExists:Z

.field private mIpsecCaCert:Landroid/widget/Spinner;

.field private mIpsecIdentifier:Landroid/widget/TextView;

.field private mIpsecSecret:Landroid/widget/TextView;

.field private mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mIpsecServerCert:Landroid/widget/Spinner;

.field private mIpsecUserCert:Landroid/widget/Spinner;

.field private mIsUserSetAlwaysOnAllowed:Z

.field private mL2tpSecret:Landroid/widget/TextView;

.field private mL2tpSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMppe:Landroid/widget/CheckBox;

.field private mName:Landroid/widget/TextView;

.field private mOcspServerUrl:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private mProxyHost:Landroid/widget/TextView;

.field private mProxyPort:Landroid/widget/TextView;

.field private mProxySettings:Landroid/widget/Spinner;

.field private mRoutes:Landroid/widget/TextView;

.field private mSaveLogin:Landroid/widget/CheckBox;

.field private mSearchDomains:Landroid/widget/TextView;

.field private mServer:Landroid/widget/TextView;

.field private mShowOptions:Landroid/widget/CheckBox;

.field private mTotalTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mType:Landroid/widget/Spinner;

.field private mUsername:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 144
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    .line 165
    iput-object p2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 166
    iput-object p3, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 167
    iput-boolean p4, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    .line 168
    iput-boolean p5, p0, Lcom/android/settings/vpn2/ConfigDialog;->mExists:Z

    return-void
.end method

.method private changeType(I)V
    .locals 9

    .line 677
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->l2tp:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->ipsec_psk:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->ipsec_user:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v5, Lcom/android/settings/R$id;->ipsec_peer:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v6, Lcom/android/settings/R$id;->options_ipsec_identity:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v7, Lcom/android/settings/R$id;->userpass:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v8, Lcom/android/settings/R$id;->enable_pfs_m:I

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 688
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialog;->setUsernamePasswordVisibility(I)V

    .line 691
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialog;->isLegacyType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const-string v0, "ATT"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 722
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :pswitch_1
    if-ne p1, v1, :cond_1

    .line 727
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :pswitch_2
    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    .line 733
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 734
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 735
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-nez v0, :cond_2

    .line 736
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 738
    :cond_2
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 739
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->ocsp_server:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 742
    :cond_3
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 745
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :pswitch_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_5

    .line 750
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 754
    :cond_5
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 702
    :pswitch_5
    iget-object v4, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    :pswitch_6
    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    .line 708
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 709
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 710
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result p1

    if-nez p1, :cond_7

    .line 711
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 714
    :cond_6
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 717
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 718
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 698
    :pswitch_7
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {p1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 758
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->configureAdvancedOptionsVisibility()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method private checkLength(Ljava/lang/String;)V
    .locals 6

    .line 603
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 605
    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 606
    invoke-virtual {p0}, Landroid/app/Dialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    .line 611
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 615
    :cond_0
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    .line 616
    iget-object v4, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    const/4 v5, 0x1

    aget v4, v4, v5

    .line 618
    iget-object v5, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 619
    iget-object v5, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    if-le v0, v2, :cond_1

    .line 622
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 623
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 624
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$color;->sec_wifi_dialog_error_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 626
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_1
    if-ne v0, v2, :cond_2

    return-void

    :cond_2
    const/16 p1, 0x8

    .line 632
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 633
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$color;->dashboard_tab_selected_color:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    return-void
.end method

.method private configureAdvancedOptionsVisibility()V
    .locals 5

    .line 651
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->isAdvancedOptionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->options:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 670
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->enable_pfs_m:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 652
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->options:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 653
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 658
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getSelectedVpnType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/ConfigDialog;->isLegacyType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 659
    :goto_1
    iget-object v3, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->network_options:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/ConfigDialog;->isSupportedStrongSwanType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 661
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ATT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 662
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v0

    if-nez v0, :cond_3

    .line 663
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->enable_pfs_m:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 665
    :cond_3
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->enable_pfs_m:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private convertAllowedIndexToProfileType(I)I
    .locals 2

    .line 1057
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAllowedTypes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mTotalTypes:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1058
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1059
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mTotalTypes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "ConfigDialog"

    const-string v0, "Allowed or Total vpn types not initialized when converting protileType"

    .line 1062
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private getSelectedVpnType()I
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/ConfigDialog;->convertAllowedIndexToProfileType(I)I

    move-result p0

    return p0
.end method

.method private getTextInputParent(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 475
    instance-of v0, p1, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v0, :cond_0

    .line 476
    check-cast p1, Lcom/google/android/material/textfield/TextInputLayout;

    return-object p1

    .line 477
    :cond_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 478
    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialog;->getTextInputParent(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initCheckLenghtHashMap()V
    .locals 9

    .line 402
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    sget v1, Lcom/android/settings/R$id;->name:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x40

    aput v5, v3, v4

    sget v6, Lcom/android/settings/R$id;->name_error_text:I

    const/4 v7, 0x1

    aput v6, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    sget v1, Lcom/android/settings/R$id;->server:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    const/16 v6, 0x100

    aput v6, v3, v4

    sget v8, Lcom/android/settings/R$id;->server_error_text:I

    aput v8, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    sget v1, Lcom/android/settings/R$id;->l2tp_secret:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    aput v6, v3, v4

    sget v8, Lcom/android/settings/R$id;->l2tp_secret_error_text:I

    aput v8, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    sget v1, Lcom/android/settings/R$id;->ipsec_identifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    aput v6, v3, v4

    sget v8, Lcom/android/settings/R$id;->ipsec_identifier_error_text:I

    aput v8, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    sget v1, Lcom/android/settings/R$id;->ipsec_secret:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    aput v6, v3, v4

    sget v8, Lcom/android/settings/R$id;->ipsec_secret_error_text:I

    aput v8, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    sget v1, Lcom/android/settings/R$id;->search_domains:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    aput v6, v3, v4

    sget v8, Lcom/android/settings/R$id;->search_domains_error_text:I

    aput v8, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    sget v1, Lcom/android/settings/R$id;->dns_servers:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    aput v6, v3, v4

    sget v8, Lcom/android/settings/R$id;->dns_servers_error_text:I

    aput v8, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    sget v1, Lcom/android/settings/R$id;->routes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    aput v6, v3, v4

    sget v8, Lcom/android/settings/R$id;->routes_error_text:I

    aput v8, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    sget v1, Lcom/android/settings/R$id;->vpn_proxy_host:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    aput v6, v3, v4

    sget v8, Lcom/android/settings/R$id;->vpn_proxy_host_error_text:I

    aput v8, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    sget v1, Lcom/android/settings/R$id;->vpn_proxy_port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    const/4 v8, 0x5

    aput v8, v3, v4

    sget v8, Lcom/android/settings/R$id;->vpn_proxy_port_error_text:I

    aput v8, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    sget v1, Lcom/android/settings/R$id;->ocsp_server_url:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    aput v5, v3, v4

    sget v8, Lcom/android/settings/R$id;->ocsp_server_url_error_text:I

    aput v8, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    sget v1, Lcom/android/settings/R$id;->username:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v2, [I

    aput v5, v3, v4

    sget v5, Lcom/android/settings/R$id;->username_error_text:I

    aput v5, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->hmMaxLenId:Ljava/util/HashMap;

    sget v0, Lcom/android/settings/R$id;->password:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v2, [I

    aput v6, v1, v4

    sget v2, Lcom/android/settings/R$id;->password_error_text:I

    aput v2, v1, v7

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isAdvancedOptionsEnabled()Z
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    .line 645
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyHost:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyPort:Landroid/widget/TextView;

    .line 646
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isLegacyType(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private isSupportedStrongSwanType(I)Z
    .locals 0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x6

    if-eq p1, p0, :cond_0

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isValidLockdownProfile(Lcom/android/internal/net/VpnProfile;)Z
    .locals 0

    .line 1075
    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->isTypeValidForLockdown()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1076
    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->isServerAddressNumeric()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1077
    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->hasDns()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1078
    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->areDnsAddressesNumeric()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Spinner;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 901
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 904
    sget v0, Lcom/android/settings/R$string;->wifi_unspecified:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    goto :goto_0

    .line 905
    :cond_0
    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 p3, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 909
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 912
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    .line 913
    aput-object v0, v2, p3

    .line 915
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p3, v1

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v3, p3, 0x1

    .line 916
    aput-object v0, v2, p3

    move p3, v3

    goto :goto_1

    :cond_2
    :goto_2
    new-array v2, v1, [Ljava/lang/String;

    aput-object v0, v2, p3

    .line 920
    :cond_3
    new-instance p2, Landroid/widget/ArrayAdapter;

    const p3, 0x1090008

    invoke-direct {p2, p0, p3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p0, 0x1090009

    .line 922
    invoke-virtual {p2, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 923
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 925
    :goto_3
    array-length p0, v2

    if-ge v1, p0, :cond_5

    .line 926
    aget-object p0, v2, v1

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 927
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method private requiresUsernamePassword(I)Z
    .locals 0

    const/4 p0, 0x7

    if-eq p1, p0, :cond_0

    const/16 p0, 0x8

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setTypesByFeature(Landroid/widget/Spinner;)V
    .locals 3

    .line 864
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->vpn_types:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 865
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mTotalTypes:Ljava/util/List;

    .line 866
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAllowedTypes:Ljava/util/List;

    .line 870
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.ipsec_tunnels"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ConfigDialog"

    const-string v2, "FEATURE_IPSEC_TUNNELS missing from system"

    .line 872
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mExists:Z

    if-nez v1, :cond_1

    .line 879
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    const/4 v2, 0x6

    iput v2, v1, Lcom/android/internal/net/VpnProfile;->type:I

    .line 883
    :cond_1
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {v1}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 884
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAllowedTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 886
    invoke-static {v0}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 887
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAllowedTypes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 891
    :cond_3
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAllowedTypes:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 893
    :cond_4
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 894
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x1090008

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const p0, 0x1090009

    .line 895
    invoke-virtual {v1, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 896
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method private setUsernamePasswordVisibility(I)V
    .locals 2

    .line 934
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->userpass:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 935
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialog;->requiresUsernamePassword(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 934
    :goto_0
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showPasswordToggleIcon()V
    .locals 3

    .line 448
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 449
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isPasswordVisibilityToggleEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Lcom/android/settings/R$drawable;->vpn_show_password_selector:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(I)V

    .line 452
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Lcom/android/settings/R$string;->wifi_show_password_contentdescription:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(I)V

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 457
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isPasswordVisibilityToggleEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Lcom/android/settings/R$drawable;->vpn_show_password_selector:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(I)V

    .line 460
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v2, Lcom/android/settings/R$string;->wifi_show_password_contentdescription:I

    invoke-virtual {v0, v2}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(I)V

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 465
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isPasswordVisibilityToggleEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleEnabled(Z)V

    .line 467
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/android/settings/R$drawable;->vpn_show_password_selector:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleDrawable(I)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 469
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v0, Lcom/android/settings/R$string;->wifi_show_password_contentdescription:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setPasswordVisibilityToggleContentDescription(I)V

    :cond_2
    return-void
.end method

.method private updateProxyFieldsVisibility(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 640
    :goto_0
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v0, Lcom/android/settings/R$id;->vpn_proxy_fields:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateUiControls()V
    .locals 5

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 558
    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/ConfigDialog;->isValidLockdownProfile(Lcom/android/internal/net/VpnProfile;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 560
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 563
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 564
    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isTypeValidForLockdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 565
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->vpn_always_on_invalid_reason_type:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 566
    :cond_1
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialog;->isLegacyType(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isServerAddressNumeric()Z

    move-result v1

    if-nez v1, :cond_2

    .line 567
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->vpn_always_on_invalid_reason_server:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 568
    :cond_2
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialog;->isLegacyType(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->hasDns()Z

    move-result v1

    if-nez v1, :cond_3

    .line 569
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->vpn_always_on_invalid_reason_no_dns:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 570
    :cond_3
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialog;->isLegacyType(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->areDnsAddressesNumeric()Z

    move-result v1

    if-nez v1, :cond_4

    .line 571
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->vpn_always_on_invalid_reason_dns:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 573
    :cond_4
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    sget v4, Lcom/android/settings/R$string;->vpn_always_on_invalid_reason_other:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 575
    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 579
    :goto_1
    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 580
    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v0

    if-eqz v0, :cond_6

    .line 581
    :cond_5
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxySettings:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 582
    invoke-direct {p0, v3}, Lcom/android/settings/vpn2/ConfigDialog;->updateProxyFieldsVisibility(I)V

    .line 586
    :cond_6
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 587
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 588
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_2

    .line 590
    :cond_7
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 591
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :goto_2
    const/4 v0, -0x1

    .line 595
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialog;->validate(Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private validate(Z)Z
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/ConfigDialog;->isValidLockdownProfile(Lcom/android/internal/net/VpnProfile;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 770
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getSelectedVpnType()I

    move-result v0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    .line 771
    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/ConfigDialog;->requiresUsernamePassword(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 772
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 774
    :cond_2
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    .line 779
    :cond_3
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget p1, p1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialog;->isLegacyType(I)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    .line 780
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/vpn2/ConfigDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    .line 781
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/android/settings/vpn2/ConfigDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    return v1

    .line 786
    :cond_5
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget p1, p1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialog;->isLegacyType(I)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_6

    return v1

    .line 790
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->validateProxy()Z

    move-result p1

    if-nez p1, :cond_7

    return v1

    :cond_7
    packed-switch v0, :pswitch_data_0

    return v1

    .line 818
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 819
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mOcspServerUrl:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 820
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 822
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v1

    .line 830
    :cond_8
    :goto_0
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    if-eqz p0, :cond_9

    move v1, v2

    :cond_9
    return v1

    .line 803
    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-eqz p0, :cond_a

    move v1, v2

    :cond_a
    return v1

    :pswitch_3
    return v2

    :cond_b
    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 9

    const/4 p0, 0x0

    :try_start_0
    const-string v0, " "

    .line 838
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    move v1, p0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_4

    aget-object v3, p1, v1

    .line 839
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_2

    :cond_0
    const/4 v4, 0x2

    const/16 v5, 0x20

    if-eqz p2, :cond_1

    const-string v6, "/"

    .line 845
    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 846
    aget-object v6, v3, p0

    .line 847
    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object v8, v6

    move v6, v3

    move-object v3, v8

    goto :goto_1

    :cond_1
    move v6, v5

    .line 849
    :goto_1
    invoke-static {v3}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    const/4 v7, 0x3

    .line 850
    aget-byte v7, v3, v7

    and-int/lit16 v7, v7, 0xff

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v7

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v2, v4

    aget-byte v4, v3, p0

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    .line 852
    array-length v3, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    if-ltz v6, :cond_3

    if-gt v6, v5, :cond_3

    if-ge v6, v5, :cond_2

    shl-int/2addr v2, v6

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return p0

    :cond_4
    return v2

    :catch_0
    return p0
.end method

.method private validateProxy()Z
    .locals 3

    .line 1043
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->hasProxy()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyHost:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1048
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyPort:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v2, ""

    .line 1049
    invoke-static {v0, p0, v2}, Lcom/android/net/module/util/ProxyUtils;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 429
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->updateUiControls()V

    .line 431
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->showPasswordToggleIcon()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 5

    .line 958
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 959
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 960
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getSelectedVpnType()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 961
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 962
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 963
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 966
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialog;->isLegacyType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 969
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 970
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    goto :goto_0

    .line 972
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 975
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->hasProxy()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 976
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyHost:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 977
    iget-object v3, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyPort:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 980
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 981
    :goto_1
    invoke-static {v1, v3}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;I)Landroid/net/ProxyInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 983
    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    .line 986
    :goto_2
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 1004
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 1008
    :pswitch_1
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 1009
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1013
    :cond_3
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_4

    .line 1014
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 1017
    :cond_4
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mOcspServerUrl:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    .line 1018
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEnablePFS:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    .line 1023
    :pswitch_3
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    .line 1024
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 1028
    :cond_5
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_6

    .line 1029
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 1031
    :cond_6
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_7

    .line 1032
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_3

    .line 992
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 996
    :pswitch_6
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 997
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 999
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEnablePFS:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    goto :goto_3

    .line 988
    :pswitch_7
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 1037
    :cond_7
    :goto_3
    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_5

    :cond_9
    :goto_4
    move v1, v3

    .line 1038
    :goto_5
    iget-object v4, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_a

    iget-boolean p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    if-eqz p0, :cond_b

    if-eqz v1, :cond_b

    :cond_a
    move v2, v3

    :cond_b
    iput-boolean v2, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method hasProxy()Z
    .locals 1

    .line 953
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxySettings:Landroid/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isEditing()Z
    .locals 0

    .line 949
    iget-boolean p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    return p0
.end method

.method public isVpnAlwaysOn()Z
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 535
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    if-ne p1, p2, :cond_0

    .line 536
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->updateUiControls()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 489
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->configureAdvancedOptionsVisibility()V

    .line 492
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/internal/CheckableImageButton;

    if-eqz v0, :cond_3

    .line 493
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialog;->getTextInputParent(Landroid/view/View;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 496
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 499
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 500
    check-cast p1, Lcom/google/android/material/internal/CheckableImageButton;

    .line 501
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 502
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->wifi_show_password_contentdescription:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 503
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 p0, 0x0

    .line 504
    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    goto :goto_1

    .line 506
    :cond_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v3, Lcom/android/settings/R$string;->wifi_hide_password_contentdescription:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 507
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 p0, 0x1

    .line 508
    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 510
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 175
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->sec_vpn_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    .line 177
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 179
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v3, Lcom/android/settings/R$id;->name:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    .line 183
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->type:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    .line 184
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->server:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    .line 185
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->username:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    .line 187
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->input_password:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 189
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->password:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    .line 190
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->search_domains:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    .line 191
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->dns_servers:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    .line 192
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->routes:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    .line 193
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->vpn_proxy_settings:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxySettings:Landroid/widget/Spinner;

    .line 194
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->vpn_proxy_host:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyHost:Landroid/widget/TextView;

    .line 195
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->vpn_proxy_port:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyPort:Landroid/widget/TextView;

    .line 196
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->mppe:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    .line 198
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->input_l2tp_secret:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 200
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->l2tp_secret:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    .line 201
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->ipsec_identifier:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    .line 203
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->input_ipsec_secret:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 205
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->ipsec_secret:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    .line 206
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->ipsec_user_cert:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    .line 207
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->ipsec_ca_cert:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    .line 208
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->ipsec_server_cert:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    .line 209
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->save_login:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    .line 210
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->show_options:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    .line 211
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->always_on_vpn:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    .line 212
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->always_on_invalid_reason:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    .line 214
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->ocsp_server_url:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mOcspServerUrl:Landroid/widget/TextView;

    .line 215
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->enable_pfs_m:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEnablePFS:Landroid/widget/CheckBox;

    .line 217
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    new-array v6, v4, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/16 v8, 0x40

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v5

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    new-array v6, v5, [Landroid/text/InputFilter;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 225
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->initCheckLenghtHashMap()V

    const-string v1, "false"

    .line 230
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v6, "content://com.sec.knox.provider2/vpnPolicy"

    const-string v7, "isUserSetAlwaysOnAllowed"

    .line 231
    invoke-static {v0, v6, v7, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v5

    .line 233
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIsUserSetAlwaysOnAllowed:Z

    .line 238
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    invoke-static {v1}, Lcom/android/internal/net/VpnProfile;->decrypt(Lcom/android/internal/net/VpnProfile;)V

    .line 242
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialog;->setTypesByFeature(Landroid/widget/Spinner;)V

    .line 246
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAllowedTypes:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mTotalTypes:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 247
    iget-object v7, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    iget-object v8, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v8, v8, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    :cond_2
    const-string v1, "ConfigDialog"

    const-string v6, "Allowed or Total vpn types not initialized when setting initial selection"

    .line 249
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_2
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEnablePFS:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v6, v6, Lcom/android/internal/net/VpnProfile;->isPFS:Z

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 253
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mOcspServerUrl:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->ocspServerUrl:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v6, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v6, :cond_3

    .line 257
    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    :cond_3
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_5

    .line 264
    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyHost:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->proxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v1

    int-to-long v6, v1

    .line 269
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyPort:Landroid/widget/TextView;

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-nez v8, :cond_4

    const-string v6, ""

    goto :goto_3

    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxySettings:Landroid/widget/Spinner;

    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 271
    invoke-direct {p0, v4}, Lcom/android/settings/vpn2/ConfigDialog;->updateProxyFieldsVisibility(I)V

    .line 274
    :cond_5
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v6, v6, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    new-instance v1, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;

    invoke-direct {v1, v2}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;-><init>(Ljava/lang/Integer;)V

    .line 280
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getKeyCertAliases()Ljava/util/Collection;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v7, v7, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v2, v6, v5, v7}, Lcom/android/settings/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;ILjava/lang/String;)V

    .line 282
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getCaCertAliases()Ljava/util/Collection;

    move-result-object v6

    sget v7, Lcom/android/settings/R$string;->vpn_no_ca_cert:I

    iget-object v8, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v2, v6, v7, v8}, Lcom/android/settings/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;ILjava/lang/String;)V

    .line 284
    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Lcom/android/settings/utils/AndroidKeystoreAliasLoader;->getKeyCertAliases()Ljava/util/Collection;

    move-result-object v1

    sget v6, Lcom/android/settings/R$string;->vpn_no_server_cert:I

    iget-object v7, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v7, v7, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v6, v7}, Lcom/android/settings/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/util/Collection;ILjava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 287
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    iget-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIsUserSetAlwaysOnAllowed:Z

    if-nez v1, :cond_6

    .line 290
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 291
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_4

    .line 293
    :cond_6
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 294
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 295
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_4
    const-string/jumbo v1, "persist.radio.imsregrequired"

    .line 300
    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_7

    .line 301
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 305
    :cond_7
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 306
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 307
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 308
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 309
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 310
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 311
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 312
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxySettings:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 313
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyHost:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 314
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxyPort:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 315
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 317
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 319
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 320
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mOcspServerUrl:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 322
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 325
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 326
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 327
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 328
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecretLayout:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v6, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 331
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 335
    iget-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    if-nez v1, :cond_9

    invoke-direct {p0, v4}, Lcom/android/settings/vpn2/ConfigDialog;->validate(Z)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    move v1, v5

    goto :goto_6

    :cond_9
    :goto_5
    move v1, v4

    :goto_6
    iput-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    const/4 v6, -0x1

    if-eqz v1, :cond_b

    .line 338
    sget v1, Lcom/android/settings/R$string;->vpn_edit:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(I)V

    .line 341
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v4, Lcom/android/settings/R$id;->editor:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 344
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialog;->changeType(I)V

    .line 347
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 349
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->configureAdvancedOptionsVisibility()V

    .line 351
    iget-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mExists:Z

    if-eqz v1, :cond_a

    const/4 v1, -0x3

    .line 353
    sget v2, Lcom/android/settings/R$string;->vpn_forget:I

    .line 354
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 353
    invoke-virtual {p0, v1, v2, v4}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 357
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {v1}, Lcom/android/internal/net/VpnProfile;->isLegacyType(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 358
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    sget v2, Lcom/android/settings/R$id;->dialog_alert_subtitle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 359
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    :cond_a
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 364
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 366
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 369
    sget v1, Lcom/android/settings/R$string;->vpn_save:I

    .line 370
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 369
    invoke-virtual {p0, v6, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_7

    .line 372
    :cond_b
    sget v1, Lcom/android/settings/R$string;->vpn_connect_to:I

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialog;->setUsernamePasswordVisibility(I)V

    .line 377
    sget v1, Lcom/android/settings/R$string;->vpn_connect:I

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 377
    invoke-virtual {p0, v6, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_7
    const/4 v1, -0x2

    .line 382
    sget v2, Lcom/android/settings/R$string;->vpn_cancel:I

    .line 383
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 382
    invoke-virtual {p0, v1, v0, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 386
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->showPasswordToggleIcon()V

    .line 390
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 393
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->updateUiControls()V

    .line 396
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 518
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_0

    .line 521
    invoke-direct {p0, p3}, Lcom/android/settings/vpn2/ConfigDialog;->convertAllowedIndexToProfileType(I)I

    move-result p1

    .line 522
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialog;->changeType(I)V

    goto :goto_0

    .line 523
    :cond_0
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProxySettings:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_1

    .line 524
    invoke-direct {p0, p3}, Lcom/android/settings/vpn2/ConfigDialog;->updateProxyFieldsVisibility(I)V

    .line 526
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->updateUiControls()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 420
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 424
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->configureAdvancedOptionsVisibility()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 442
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialog;->checkLength(Ljava/lang/String;)V

    return-void
.end method
