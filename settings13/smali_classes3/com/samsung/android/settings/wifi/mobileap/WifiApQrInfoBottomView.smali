.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;
.super Ljava/lang/Object;
.source "WifiApQrInfoBottomView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiApQrInfoBottomView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field mButtonBar:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mInfoButton:Landroid/view/MenuItem;

.field private mMHSCustomerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryTextColor:Ljava/lang/String;

.field private mQrCodeButton:Landroid/view/MenuItem;

.field private mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# direct methods
.method static bridge synthetic -$$Nest$mlaunchQrCodeActivity(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->launchQrCodeActivity()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowInfoDialog(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->showInfoDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mMHSCustomerList:Ljava/util/ArrayList;

    .line 54
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->TAG:Ljava/lang/String;

    const-string v1, "WifiApQrInfoBottomView() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    .line 56
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mActivity:Landroid/app/Activity;

    .line 57
    sget v0, Lcom/android/settings/R$color;->wifi_ap_primary_text_color:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->removeAlphaColor(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mPrimaryTextColor:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->initBottomBar()V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->initBottomNavigation()V

    .line 60
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const-string v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    .line 61
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mMHSCustomerList:Ljava/util/ArrayList;

    const-string v0, "TMO"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mMHSCustomerList:Ljava/util/ArrayList;

    const-string v0, "VZW"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mMHSCustomerList:Ljava/util/ArrayList;

    const-string v0, "MTR"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mMHSCustomerList:Ljava/util/ArrayList;

    const-string v0, "ATT"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mMHSCustomerList:Ljava/util/ArrayList;

    const-string p1, "SPRINT"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initBottomBar()V
    .locals 4

    .line 69
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->TAG:Ljava/lang/String;

    const-string v1, "initBottomBar() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 73
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mActivity:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 74
    sget v1, Lcom/android/settings/R$layout;->sec_wifi_ap_qr_info_bottom_layout:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 75
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private launchQrCodeActivity()V
    .locals 3

    .line 103
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->TAG:Ljava/lang/String;

    const-string v1, "launchQrCodeActivity() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 105
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_config"

    .line 106
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 107
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 109
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 v0, 0xd48

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const-class v0, Lcom/samsung/android/settings/wifi/WifiApQrCodeFragment;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private showInfoDialog()V
    .locals 29

    move-object/from16 v0, p0

    .line 116
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->TAG:Ljava/lang/String;

    const-string v2, "showInfoDialog() - Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    .line 118
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->getDialogTheme()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 119
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/android/settings/R$layout;->sec_wifi_ap_qr_info_dialog:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 120
    sget v5, Lcom/android/settings/R$id;->wifi_ap_how_to_connect:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 121
    sget v6, Lcom/android/settings/R$id;->title_instruction1:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 122
    sget v7, Lcom/android/settings/R$id;->title_instruction2:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 123
    sget v8, Lcom/android/settings/R$id;->title_instruction3:I

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 124
    sget v9, Lcom/android/settings/R$id;->title_instruction4:I

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 125
    sget v10, Lcom/android/settings/R$id;->title_num1:I

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 126
    sget v11, Lcom/android/settings/R$id;->title_num2:I

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 127
    sget v12, Lcom/android/settings/R$id;->title_num3:I

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 128
    sget v13, Lcom/android/settings/R$id;->title_num4:I

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 129
    sget v14, Lcom/android/settings/R$id;->qr_title_num_1:I

    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 130
    sget v15, Lcom/android/settings/R$id;->qr_title_num_2:I

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v16, v1

    .line 131
    sget v1, Lcom/android/settings/R$id;->wifi_ap_dun_fail_title_num_1:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v17, v3

    .line 132
    sget v3, Lcom/android/settings/R$id;->wifi_ap_dun_fail_title_num_2:I

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v18, v9

    .line 133
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v8

    sget v8, Lcom/android/settings/R$string;->wifi_ap_num1:I

    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v7

    sget v7, Lcom/android/settings/R$string;->wifi_ap_num2:I

    invoke-virtual {v9, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 135
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v6

    sget v6, Lcom/android/settings/R$string;->wifi_ap_num3:I

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 136
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v5

    sget v5, Lcom/android/settings/R$string;->wifi_ap_num4:I

    invoke-virtual {v9, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 137
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v2

    sget v2, Lcom/android/settings/R$string;->wifi_ap_dot:I

    invoke-virtual {v9, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 138
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v4

    sget v4, Lcom/android/settings/R$string;->wifi_ap_instruction_num:I

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v25, v3

    const/4 v3, 0x2

    move-object/from16 v26, v1

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v8, v1, v3

    const/4 v8, 0x1

    aput-object v2, v1, v8

    invoke-static {v9, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 139
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v27, v15

    const/4 v8, 0x2

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v7, v15, v3

    const/4 v7, 0x1

    aput-object v2, v15, v7

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 140
    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v28, v14

    new-array v14, v8, [Ljava/lang/Object;

    aput-object v6, v14, v3

    aput-object v2, v14, v7

    invoke-static {v15, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 141
    iget-object v14, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v14, v8, [Ljava/lang/Object;

    aput-object v5, v14, v3

    aput-object v2, v14, v7

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 142
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_ap_imp_instruction:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_ap_dun_fail_title:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v14, v28

    .line 147
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v15, v27

    .line 148
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v2, v26

    .line 149
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v1, v25

    .line 150
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    sget v1, Lcom/android/settings/R$id;->title4:I

    move-object/from16 v2, v24

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 152
    sget v5, Lcom/android/settings/R$id;->wifi_ap_how_to_connect_by_qrcode:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 153
    sget v6, Lcom/android/settings/R$id;->qr_title_instruction1:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 154
    sget v7, Lcom/android/settings/R$id;->qr_title_instruction2:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 155
    sget v8, Lcom/android/settings/R$id;->title_wifi_ap_dun_fail:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 156
    sget v9, Lcom/android/settings/R$id;->wifi_ap_dun_fail_title1:I

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 157
    sget v10, Lcom/android/settings/R$id;->wifi_ap_dun_fail_title2:I

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 158
    sget v11, Lcom/android/settings/R$id;->wifi_ap_dun_fail:I

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 159
    sget v12, Lcom/android/settings/R$id;->wifi_ap_dun_fail_title_instruction1:I

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 160
    sget v13, Lcom/android/settings/R$id;->wifi_ap_dun_fail_title_instruction2:I

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 161
    sget v14, Lcom/android/settings/R$id;->summary:I

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    if-eqz v23, :cond_f

    const/16 v15, 0x8

    .line 164
    invoke-virtual {v1, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 165
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 166
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_ap_dun_fail_msg1:I

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_ap_dun_fail_msg2:I

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {v8, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    invoke-virtual {v9, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    invoke-virtual {v10, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 175
    :goto_0
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v4

    const-string v8, "TMO"

    const-string v9, "SPRINT"

    if-eqz v4, :cond_9

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v4

    const/4 v10, 0x5

    if-ne v4, v10, :cond_1

    goto/16 :goto_4

    .line 206
    :cond_1
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v4

    const/4 v10, 0x3

    if-eqz v4, :cond_3

    .line 207
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->wifi_ap_howto_with_password:I

    invoke-static {v4, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v11, v22

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->wifi_ap_howto_with_qrcode:I

    invoke-static {v4, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden1:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v12, v21

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden2:I

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mPrimaryTextColor:Ljava/lang/String;

    aput-object v9, v11, v3

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-virtual {v4, v5, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object/from16 v13, v20

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden3:I

    new-array v9, v10, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mPrimaryTextColor:Ljava/lang/String;

    aput-object v10, v9, v3

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-virtual {v4, v5, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    move-object/from16 v5, v19

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 213
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color_hidden4:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v18

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_introduction_qrcode_enable:I

    invoke-static {v1, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_introduction_qrcode_scan:I

    invoke-static {v1, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_3
    move-object/from16 v8, v18

    move-object/from16 v4, v19

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    move-object/from16 v11, v22

    .line 219
    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/settings/R$string;->wifi_ap_howto_with_password:I

    invoke-static {v15, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/R$string;->wifi_ap_howto_with_qrcode:I

    invoke-static {v10, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color1:I

    invoke-static {v5, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 223
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color2:I

    invoke-static {v5, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 225
    :cond_4
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color2:I

    invoke-static {v10}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v10

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mPrimaryTextColor:Ljava/lang/String;

    aput-object v11, v12, v3

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x1

    aput-object v11, v12, v15

    invoke-virtual {v5, v10, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    :goto_1
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color3:I

    invoke-static {v10}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v10

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mPrimaryTextColor:Ljava/lang/String;

    aput-object v11, v12, v3

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x1

    aput-object v11, v12, v13

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x2

    aput-object v11, v12, v13

    invoke-virtual {v5, v10, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mMHSCustomerList:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 229
    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 230
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v4

    const/4 v5, 0x4

    const/4 v9, 0x2

    if-eq v4, v9, :cond_6

    .line 231
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v4

    const/4 v9, 0x3

    if-ne v4, v9, :cond_5

    goto :goto_2

    .line 234
    :cond_5
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color4:I

    invoke-static {v9}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v9

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mPrimaryTextColor:Ljava/lang/String;

    aput-object v10, v5, v3

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v5, v11

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v5, v11

    const-string v10, "WPA2"

    const/4 v11, 0x3

    aput-object v10, v5, v11

    invoke-virtual {v4, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 232
    :cond_6
    :goto_2
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->wifi_ap_instruction_activate_color4:I

    invoke-static {v9}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v9

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mPrimaryTextColor:Ljava/lang/String;

    aput-object v10, v5, v3

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v5, v11

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v5, v11

    const-string v10, "WPA3"

    const/4 v11, 0x3

    aput-object v10, v5, v11

    invoke-virtual {v4, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 237
    :cond_7
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color4:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 241
    :cond_8
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_introduction_qrcode_enable:I

    invoke-static {v1, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_introduction_qrcode_scan:I

    invoke-static {v1, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_9
    :goto_4
    move-object/from16 v10, v18

    move-object/from16 v4, v19

    move-object/from16 v13, v20

    move-object/from16 v12, v21

    move-object/from16 v11, v22

    .line 176
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v15

    if-eqz v15, :cond_b

    .line 177
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v15, Lcom/android/settings/R$string;->wifi_ap_howto_with_password:I

    invoke-static {v9, v15}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/R$string;->wifi_ap_howto_with_qrcode:I

    invoke-static {v9, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden1:I

    invoke-static {v5, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden2:I

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    iget-object v15, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mPrimaryTextColor:Ljava/lang/String;

    aput-object v15, v12, v3

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    const/16 v19, 0x1

    aput-object v15, v12, v19

    invoke-virtual {v5, v9, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v9, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden3:I

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mPrimaryTextColor:Ljava/lang/String;

    aput-object v12, v11, v3

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v19

    invoke-virtual {v5, v9, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 183
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color_hidden4:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    :cond_a
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_introduction_qrcode_enable:I

    invoke-static {v1, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_introduction_qrcode_scan:I

    invoke-static {v1, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 189
    :cond_b
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v15, Lcom/android/settings/R$string;->wifi_ap_howto_with_password:I

    invoke-static {v8, v15}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v11, Lcom/android/settings/R$string;->wifi_ap_howto_with_qrcode:I

    invoke-static {v8, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color1:I

    invoke-static {v5, v8}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 193
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color2:I

    invoke-static {v5, v8}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 195
    :cond_c
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color2:I

    invoke-static {v8}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v8

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mPrimaryTextColor:Ljava/lang/String;

    aput-object v9, v11, v3

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v11, v12

    invoke-virtual {v5, v8, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :goto_5
    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v8, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color3:I

    invoke-static {v8}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mPrimaryTextColor:Ljava/lang/String;

    aput-object v11, v9, v3

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v9, v12

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mMHSCustomerList:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 199
    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/settings/R$string;->wifi_ap_instruction_open_activate_color4:I

    invoke-static {v4, v5}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 202
    :cond_d
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_introduction_qrcode_enable:I

    invoke-static {v1, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/settings/R$string;->wifi_ap_introduction_qrcode_scan:I

    invoke-static {v1, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :goto_6
    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    const-string v4, "VZW"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 246
    sget v1, Lcom/android/settings/R$string;->wifi_ap_instruction_battery_warning:I

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(I)V

    .line 247
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_e
    const/16 v1, 0x8

    .line 249
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 252
    :cond_f
    :goto_7
    sget v1, Lcom/android/settings/R$string;->wifi_ap_howto:I

    move-object/from16 v4, v17

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 253
    sget v1, Lcom/android/settings/R$string;->dlg_ok:I

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$2;

    invoke-direct {v5, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mAlertDialog:Landroid/app/AlertDialog;

    .line 263
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    move v3, v2

    .line 266
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showInfoDialog() - isDexMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v16

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_11

    .line 267
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mInfoButton:Landroid/view/MenuItem;

    if-eqz v1, :cond_11

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 268
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mInfoButton:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->semSetAnchor(Landroid/view/View;)V

    goto :goto_8

    .line 270
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_8
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public initBottomNavigation()V
    .locals 2

    .line 80
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->TAG:Ljava/lang/String;

    const-string v1, "initBottomNavigation() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/android/settings/R$id;->bottom_navigation:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/material/navigation/NavigationBarView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 83
    sget v1, Lcom/android/settings/R$id;->qr_code_button:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mQrCodeButton:Landroid/view/MenuItem;

    .line 84
    sget v1, Lcom/android/settings/R$id;->info_button:I

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mInfoButton:Landroid/view/MenuItem;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->setOnNavigationItemSelectedListener(Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;)V

    return-void
.end method

.method public refresh()V
    .locals 4

    .line 276
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->initBottomBar()V

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->initBottomNavigation()V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result v0

    .line 279
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh() - wifiApState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 281
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
