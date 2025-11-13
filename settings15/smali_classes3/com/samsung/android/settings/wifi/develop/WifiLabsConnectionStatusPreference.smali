.class public Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final MONTHS:[Ljava/lang/String;


# instance fields
.field public mCurrentState:I

.field public mHolder:Landroidx/preference/PreferenceViewHolder;

.field public final mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v10, "November"

    const-string v11, "December"

    const-string v0, "January"

    const-string v1, "February"

    const-string v2, "March"

    const-string v3, "April"

    const-string v4, "May"

    const-string v5, "June"

    const-string v6, "July"

    const-string v7, "August"

    const-string v8, "September"

    const-string v9, "October"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->MONTHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mCurrentState:I

    const p2, 0x7f0d0a76

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo p2, "sem_wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-void
.end method


# virtual methods
.method public final launchNetworkDetailsFragment(Ljava/lang/String;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_chosen_wifientry_key"

    invoke-virtual {p2}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object p0, p2, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    const-class p1, Lcom/samsung/android/settings/wifi/develop/details/WifiNetworkDetailsFragmentForLabs;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    invoke-virtual {p2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const-string v0, "WifiLabsConnectionStatus.Preference"

    const-string v1, "onBindViewHolder"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->updatePreference(Z)V

    return-void
.end method

.method public final updatePreference(Z)V
    .locals 38

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v5, 0x7f0a02c3

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v6, 0x7f0a1063

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v7, 0x7f0a1064

    invoke-virtual {v6, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v8, 0x7f0a1065

    invoke-virtual {v7, v8}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iget-object v8, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v9, 0x7f0a1066

    invoke-virtual {v8, v9}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v9, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v10, 0x7f0a0487

    invoke-virtual {v9, v10}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v11, 0x7f0a03d4

    invoke-virtual {v10, v11}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iget-object v11, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v12, 0x7f0a03d3

    invoke-virtual {v11, v12}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iget-object v12, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v13, 0x7f0a03f9

    invoke-virtual {v12, v13}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iget-object v13, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v14, 0x7f0a03fd

    invoke-virtual {v13, v14}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iget-object v14, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v15, 0x7f0a03fa

    invoke-virtual {v14, v15}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    iget-object v15, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    move-wide/from16 v16, v2

    const v2, 0x7f0a03fe

    invoke-virtual {v15, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v15, 0x7f0a045c

    invoke-virtual {v3, v15}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v15, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    move-object/from16 v18, v3

    const v3, 0x7f0a045b

    invoke-virtual {v15, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v15, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    move-object/from16 v19, v3

    const v3, 0x7f0a0387

    invoke-virtual {v15, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v15, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    move-object/from16 v20, v13

    const v13, 0x7f0a03f3

    invoke-virtual {v15, v13}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v15, v15, 0x30

    move-object/from16 v21, v12

    const/16 v12, 0x20

    move-object/from16 v22, v2

    if-ne v15, v12, :cond_1

    const/4 v12, 0x1

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    :goto_0
    if-eqz v12, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    const v2, 0x7f0608f2

    invoke-virtual {v15, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f080ade

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v15, 0x7f0608f3

    invoke-virtual {v2, v15}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const v0, 0x7f080add

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getCurrentStateAndEnterTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "NumberFormatException "

    const-string v13, "WifiLabsConnectionStatus.Preference"

    const-string v15, " "

    move-object/from16 v23, v14

    const/4 v14, 0x2

    if-nez v2, :cond_5

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-lt v2, v14, :cond_5

    const/4 v2, 0x0

    aget-object v14, v0, v2

    const-string v2, "Connected"

    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_2
    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    aget-object v14, v0, v2

    const-string v2, "Enabled"

    invoke-static {v14, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    goto :goto_2

    :goto_3
    :try_start_0
    aget-object v0, v0, v14

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v16
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    move-object v14, v10

    :goto_5
    move-wide/from16 v36, v16

    move-object/from16 v16, v11

    move-wide/from16 v10, v36

    goto :goto_6

    :catch_0
    move-exception v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    move-object v14, v10

    const/4 v2, 0x2

    goto :goto_5

    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    const-string v14, "currentState: "

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", enterTime:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mCurrentState:I

    if-eq v0, v2, :cond_8

    iput v2, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mCurrentState:I

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v14, 0x7f0a0406

    invoke-virtual {v0, v14}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v2, :cond_6

    const-string/jumbo v14, "sec_wifi_labs_ani_connected.json"

    invoke-virtual {v0, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    const/4 v14, 0x1

    if-ne v2, v14, :cond_7

    const-string/jumbo v14, "sec_wifi_labs_ani_enabled.json"

    invoke-virtual {v0, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    const-string/jumbo v14, "sec_wifi_labs_ani_disabled.json"

    invoke-virtual {v0, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_7
    const/4 v14, -0x1

    invoke-virtual {v0, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    :cond_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->MONTHS:[Ljava/lang/String;

    move/from16 v25, v12

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v26

    aget-object v12, v24, v26

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/samsung/android/wifi/SemWifiManager;->getDailyUsageInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const-wide/16 v26, 0x0

    if-nez v14, :cond_9

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v14, v0

    const/4 v12, 0x2

    if-le v14, v12, :cond_9

    :try_start_1
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v28
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-wide/from16 v28, v26

    :goto_8
    const-wide/16 v30, 0x3c

    div-long v28, v28, v30

    div-long v32, v28, v30

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    div-long v28, v28, v34

    rem-long v28, v28, v30

    cmp-long v0, v32, v26

    const-string v4, "h"

    const-string v12, "m"

    const-string v14, ""

    if-nez v0, :cond_a

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_a
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    cmp-long v0, v28, v26

    if-nez v0, :cond_b

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_b
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    move-wide/from16 v5, v26

    const/4 v0, 0x1

    :goto_a
    const/4 v7, 0x7

    if-gt v0, v7, :cond_e

    iget-object v7, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    invoke-virtual {v7, v0}, Lcom/samsung/android/wifi/SemWifiManager;->getDailyUsageInfo(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    move-wide/from16 v28, v10

    goto :goto_b

    :cond_c
    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move-wide/from16 v28, v10

    const/4 v10, 0x2

    if-lt v8, v10, :cond_d

    const/4 v8, 0x0

    :try_start_2
    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    add-long/2addr v5, v7

    goto :goto_b

    :catch_2
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v5, v26

    goto :goto_c

    :cond_d
    :goto_b
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v10, v28

    goto :goto_a

    :cond_e
    move-wide/from16 v28, v10

    int-to-long v7, v7

    div-long/2addr v5, v7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "getDailyConnectionTimeAverage - 7 days, ave: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-long v7, v5, v34

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " seconds"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    div-long v5, v5, v30

    div-long v7, v5, v30

    div-long v7, v7, v34

    div-long v5, v5, v34

    rem-long v5, v5, v30

    cmp-long v0, v7, v26

    const-string v10, "h "

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v7, v5, v26

    if-eqz v7, :cond_10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_10
    :goto_d
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/samsung/android/wifi/SemWifiManager;->getDailyUsageInfo(I)Ljava/lang/String;

    move-result-object v0

    :try_start_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_11

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    const/4 v7, 0x2

    if-lt v6, v7, :cond_11

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_e

    :catch_3
    move-exception v0

    move-wide/from16 v5, v26

    goto :goto_f

    :cond_11
    move-wide/from16 v5, v26

    :goto_e
    :try_start_4
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/samsung/android/wifi/SemWifiManager;->getDailyUsageInfo(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v7, v0

    const/4 v8, 0x2

    if-lt v7, v8, :cond_12

    const/4 v7, 0x0

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_10

    :catch_4
    move-exception v0

    :goto_f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-wide/from16 v7, v26

    :goto_10
    sub-long/2addr v5, v7

    cmp-long v0, v5, v26

    if-gez v0, :cond_13

    const-wide/16 v7, -0x1

    mul-long/2addr v5, v7

    const-string v0, " less than yesterday"

    move-object/from16 v11, v16

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_11

    :cond_13
    move-object/from16 v11, v16

    const-string v0, " more than yesterday"

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_11
    div-long v5, v5, v30

    div-long v7, v5, v30

    div-long v7, v7, v34

    div-long v5, v5, v34

    rem-long v5, v5, v30

    cmp-long v0, v7, v26

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v17

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_14
    move-object/from16 v3, v17

    cmp-long v0, v5, v26

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_12
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v3, 0x7f0a045d

    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v4, 0x7f0a03fb

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mHolder:Landroidx/preference/PreferenceViewHolder;

    const v5, 0x7f0a03fc

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const-string v5, ":"

    const-string v6, ", "

    const/16 v7, 0xc

    const/16 v8, 0xb

    const-string v9, "0"

    const/16 v10, 0xa

    const/16 v11, 0x8

    if-nez v2, :cond_1b

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v12, 0x2

    if-le v2, v12, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v12, 0x1

    sub-int/2addr v2, v12

    invoke-virtual {v0, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_16
    const/4 v0, 0x0

    :cond_17
    :goto_13
    new-instance v2, Ljava/util/Date;

    move-wide/from16 v12, v28

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v12, v8}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v12, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v13

    aget-object v13, v24, v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v2, v10, :cond_18

    move-object v6, v9

    goto :goto_14

    :cond_18
    move-object v6, v14

    :goto_14
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v7, v10, :cond_19

    move-object v14, v9

    :cond_19
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v25, :cond_1a

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v14, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v3, v22

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference$1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference$1;-><init>(Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;I)V

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_17

    :cond_1a
    const/4 v5, 0x0

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v12, v21

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v13, v20

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference$1;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference$1;-><init>(Lcom/samsung/android/settings/wifi/develop/WifiLabsConnectionStatusPreference;I)V

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_17

    :cond_1b
    move-wide/from16 v12, v28

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v4, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1c

    const-string v0, "Wi-Fi enabled at "

    move-object/from16 v3, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_15

    :cond_1c
    move-object/from16 v3, v18

    const-string v0, "Wi-Fi disabled at "

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v2, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    aget-object v7, v24, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1d

    move-object v6, v9

    goto :goto_16

    :cond_1d
    move-object v6, v14

    :goto_16
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v3, v2, :cond_1e

    move-object v14, v9

    :cond_1e
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v19

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_17
    if-eqz p1, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_1f
    return-void
.end method
