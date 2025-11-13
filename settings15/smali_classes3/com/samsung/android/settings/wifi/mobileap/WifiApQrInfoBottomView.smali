.class public final Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mActivity:Landroid/app/Activity;

.field public mAlertDialog:Landroid/app/AlertDialog;

.field public mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public mButtonBar:Landroid/widget/RelativeLayout;

.field public mContext:Landroid/content/Context;

.field public mInfoButton:Landroid/view/MenuItem;

.field public mMHSCustomerList:Ljava/util/ArrayList;

.field public mPrimaryTextColor:Ljava/lang/String;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;


# virtual methods
.method public final initBottomBar()V
    .locals 4

    const-string v0, "WifiApQrInfoBottomView"

    const-string v1, "initBottomBar() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0299

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const-string v0, "layout_inflater"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    const v3, 0x7f0d0a38

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mButtonBar:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final initBottomNavigation()V
    .locals 3

    const-string v0, "WifiApQrInfoBottomView"

    const-string v1, "initBottomNavigation() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0a0250

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    iget-object v0, v0, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->menu:Lcom/google/android/material/navigation/NavigationBarMenu;

    const v1, 0x7f0a0c0c

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    const v1, 0x7f0a07ed

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mInfoButton:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mBottomNavigationView:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;)V

    iput-object v2, v1, Lcom/google/android/material/bottomnavigation/BottomNavigationView;->selectedListener:Lcom/google/android/material/bottomnavigation/BottomNavigationView$OnNavigationItemSelectedListener;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isMobileDataUsageSupported(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public final showInfoDialog()V
    .locals 29

    move-object/from16 v0, p0

    const-string/jumbo v1, "showInfoDialog() - Start"

    const-string v2, "WifiApQrInfoBottomView"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v1}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    sget-boolean v5, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->DBG:Z

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0d0a39

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v6, 0x7f0a117b

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a1050

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a1051

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a1052

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0a1053

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0a1056

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f0a1057

    invoke-virtual {v4, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0a1058

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0a1059

    invoke-virtual {v4, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0a0c16

    invoke-virtual {v4, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    const v5, 0x7f0a0c17

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v16, v2

    const v2, 0x7f0a1177

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v17, v3

    const v3, 0x7f0a1178

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v18, v10

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    move-object/from16 v19, v9

    const v9, 0x7f1433b6

    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v8

    const v8, 0x7f1433b7

    invoke-virtual {v10, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    move-object/from16 v21, v7

    const v7, 0x7f1433b8

    invoke-virtual {v10, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    move-object/from16 v22, v6

    const v6, 0x7f1433b9

    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    move-object/from16 v23, v1

    const v1, 0x7f143318

    invoke-virtual {v10, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    move-object/from16 v24, v4

    const v4, 0x7f143362

    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v9, v1}, [Ljava/lang/Object;

    move-result-object v9

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v8, v1}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v7, v1}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v10, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v10, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v6, 0x7f14333b

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v10, 0x7f14331e

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a1045

    move-object/from16 v2, v24

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const v3, 0x7f0a117c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v5, 0x7f0a0c14

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0c15

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a105e

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v8, 0x7f0a116f

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f0a1170

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    const v10, 0x7f0a1171

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    const v11, 0x7f0a1172

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    const v12, 0x7f0a116e

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0a1173

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0a1174

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const v15, 0x7f0a1175

    invoke-virtual {v2, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v24, v6

    const v6, 0x7f0a1176

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v25, v5

    const v5, 0x7f0a0f81

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v26, v2

    if-eqz v23, :cond_a

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDomesticModel()Z

    move-result v27

    if-eqz v27, :cond_0

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v7, 0x7f14331a

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v7, 0x7f14331b

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v7, 0x7f14331c

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v7, 0x7f14331d

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v4

    const v6, 0x7f143372

    const-string v7, "TMO"

    const v8, 0x7f143381

    const v9, 0x7f143380

    const v10, 0x7f143339

    const v11, 0x7f143338

    iget-object v12, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mPrimaryTextColor:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v4

    const/4 v13, 0x5

    if-ne v4, v13, :cond_2

    :cond_1
    move-object/from16 v6, v18

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-object/from16 v4, v21

    move-object/from16 v13, v22

    move-object/from16 v8, v24

    move-object/from16 v2, v25

    goto/16 :goto_1

    :cond_2
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {v4, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v13, v22

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {v4, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v4, 0x7f143350

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v21

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v12, v4}, [Ljava/lang/Object;

    move-result-object v4

    const v6, 0x7f143352

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object/from16 v14, v20

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v12, v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    const v6, 0x7f143354

    invoke-virtual {v3, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    move-object/from16 v15, v19

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v4, 0x7f143356

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, v18

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v25

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {v1, v8}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v24

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_4
    move-object/from16 v7, v18

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move-object/from16 v4, v21

    move-object/from16 v13, v22

    move-object/from16 v28, v24

    move-object/from16 v2, v25

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {v8, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v8, 0x7f14333f

    invoke-static {v3, v8}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v4, 0x7f143344

    invoke-static {v4}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v4

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    filled-new-array {v12, v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v4, 0x7f143347

    invoke-static {v4}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v4

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v12, v8, v10}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mMHSCustomerList:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v2, 0x7f143381

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v8, v28

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :goto_1
    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->isHiddenSsid()Z

    move-result v21

    if-eqz v21, :cond_7

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {v9, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v9, 0x7f143378

    invoke-static {v3, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v12, v4}, [Ljava/lang/Object;

    move-result-object v4

    const v9, 0x7f14337a

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v12, v4}, [Ljava/lang/Object;

    move-result-object v4

    const v9, 0x7f14337c

    invoke-virtual {v3, v9, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v3, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v4, 0x7f14337e

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_6
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v3, 0x7f143380

    invoke-static {v1, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v2, 0x7f143381

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v7, 0x7f143367

    invoke-static {v3, v7}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v4, 0x7f14336c

    invoke-static {v4}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v4

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v12, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v4, 0x7f14336f

    invoke-static {v4}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v4

    invoke-virtual/range {v23 .. v23}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v12, v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v15, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mMHSCustomerList:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v4, 0x7f143372

    invoke-static {v3, v4}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_8
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v3, 0x7f143380

    invoke-static {v1, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    const v2, 0x7f143381

    invoke-static {v1, v2}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const-string v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, 0x7f143358

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    :goto_3
    const v2, 0x7f143337

    move-object/from16 v3, v17

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$2;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const v4, 0x7f140d33

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v2, v26

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semDesktopModeEnabled:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    move v5, v3

    goto :goto_4

    :cond_b
    move v5, v1

    :goto_4
    const-string/jumbo v1, "showInfoDialog() - isDexMode:"

    move-object/from16 v2, v16

    invoke-static {v1, v2, v5}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v5, :cond_c

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mInfoButton:Landroid/view/MenuItem;

    if-eqz v3, :cond_c

    invoke-interface {v3}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mInfoButton:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->semSetAnchor(Landroid/view/View;)V

    goto :goto_5

    :cond_c
    invoke-static {v1, v2, v5}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_5
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
