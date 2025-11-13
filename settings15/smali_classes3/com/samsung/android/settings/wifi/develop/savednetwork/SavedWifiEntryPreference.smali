.class public Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mLastConnected:Landroid/widget/TextView;

.field public mSecurityPoint:Landroid/widget/ImageView;

.field public mSecuritySummary:Landroid/widget/TextView;

.field public mTitle:Landroid/widget/TextView;

.field public final mType:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType;

.field public final mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    new-instance p1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType;

    invoke-direct {p1, p2}, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mType:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType;

    const p1, 0x7f0d0a94

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 12

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    iput-boolean v0, p1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    const v0, 0x7f0a05d0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0d86

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mSecurityPoint:Landroid/widget/ImageView;

    const v0, 0x7f0a0d8c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mSecuritySummary:Landroid/widget/TextView;

    const v0, 0x7f0a0d87

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mLastConnected:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mSecurityPoint:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mContext:Landroid/content/Context;

    const v2, 0x7f080ae0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mType:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType;->mType:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;

    iget v3, v3, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    const v3, 0x7f060765

    goto :goto_0

    :pswitch_0
    const v3, 0x7f060764

    goto :goto_0

    :pswitch_1
    const v3, 0x7f060762

    goto :goto_0

    :pswitch_2
    const v3, 0x7f060761

    goto :goto_0

    :pswitch_3
    const v3, 0x7f060760

    goto :goto_0

    :pswitch_4
    const v3, 0x7f06075f

    goto :goto_0

    :pswitch_5
    const v3, 0x7f060763

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mSecuritySummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mType:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType;->mType:Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;

    iget v1, v1, Lcom/samsung/android/settings/wifi/develop/savednetwork/WifiLabsSecurityType$UndefinedType;->$r8$classId:I

    packed-switch v1, :pswitch_data_1

    const-string v1, "WPA2/3"

    goto :goto_1

    :pswitch_6
    const-string v1, "WEP"

    goto :goto_1

    :pswitch_7
    const-string v1, "WPA3"

    goto :goto_1

    :pswitch_8
    const-string v1, "OWE"

    goto :goto_1

    :pswitch_9
    const-string v1, "Open"

    goto :goto_1

    :pswitch_a
    const-string v1, "EAP"

    goto :goto_1

    :pswitch_b
    const-string v1, "Undefined"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    sget-object v2, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    const v3, 0x7f142894

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_0
    const-string/jumbo v2, "sem_wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/samsung/android/wifi/SemWifiManager;->getNetworkLastUpdatedTimeMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, ""

    if-nez v6, :cond_2

    :cond_1
    move-object v0, v7

    goto :goto_2

    :cond_2
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, -0x1

    cmp-long v6, v8, v10

    if-nez v6, :cond_3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide v10, 0x39ef8b000L

    cmp-long v3, v8, v10

    if-lez v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v4, v1

    const-wide v1, 0x9a7ec800L

    div-long/2addr v4, v1

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f142893

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mLastConnected:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mLastConnected:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;->mLastConnected:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const v0, 0x7f0a0cf5

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference$1;-><init>(Lcom/samsung/android/settings/wifi/develop/savednetwork/SavedWifiEntryPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
