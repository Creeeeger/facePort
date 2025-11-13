.class Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ImeiInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 98
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p2, "phone"

    .line 100
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 101
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p2

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->imei_information_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_6

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 106
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportFeatureHideSimTab(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ImeiInformation"

    const-string v3, "Hide IMEI_Info for Opportunistic subscription"

    .line 107
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 110
    :cond_0
    invoke-static {p1, v1}, Lcom/samsung/android/settings/deviceinfo/SecDeviceInfoUtils;->getImeiTitleSuffix(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 112
    invoke-static {p1, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->-$$Nest$smsupportMinNumber(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    new-instance v3, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v4, "min_number"

    .line 114
    invoke-static {v4, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->-$$Nest$smgetNewKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 115
    iput-object v0, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->-$$Nest$smgetMinNumberTitleText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 117
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_1
    invoke-static {p1, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->-$$Nest$smsupportPrlVersion(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    new-instance v3, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v4, "prl_version"

    .line 122
    invoke-static {v4, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->-$$Nest$smgetNewKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 123
    iput-object v0, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->status_prl_version:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 125
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_2
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->-$$Nest$smsupportEriVersion()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    new-instance v3, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v4, "eri_version"

    .line 130
    invoke-static {v4, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->-$$Nest$smgetNewKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 131
    iput-object v0, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->status_eri_version:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 133
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_3
    invoke-static {p1, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->-$$Nest$smsupportMeid(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 137
    new-instance v3, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v4, "meid_number"

    .line 138
    invoke-static {v4, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->-$$Nest$smgetNewKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 139
    iput-object v0, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->status_meid_number:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 141
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_4
    new-instance v3, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v4, "imei"

    .line 145
    invoke-static {v4, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->-$$Nest$smgetNewKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 146
    iput-object v0, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->status_imei:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 148
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->-$$Nest$smsupportImeiSV()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 151
    new-instance v3, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v3, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string v4, "imei_sv"

    .line 152
    invoke-static {v4, v1}, Lcom/samsung/android/settings/deviceinfo/statusinfo/imei/ImeiInformation;->-$$Nest$smgetNewKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 153
    iput-object v0, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->status_imei_sv:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 155
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-object p0
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 92
    const-class p0, Landroid/os/UserManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 93
    invoke-static {p1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
