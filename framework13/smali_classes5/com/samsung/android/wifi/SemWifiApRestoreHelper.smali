.class public Lcom/samsung/android/wifi/SemWifiApRestoreHelper;
.super Ljava/lang/Object;
.source "SemWifiApRestoreHelper.java"


# static fields
.field public static final blacklist KEY_OPEN_INDEX:Ljava/lang/String; = "open_index"

.field public static final blacklist KEY_PASSWORD:Ljava/lang/String; = "shared_password"

.field public static final blacklist KEY_SECURITY_TYPE:Ljava/lang/String; = "security_type"

.field public static final blacklist KEY_SSID:Ljava/lang/String; = "shared_ssid"

.field public static final blacklist KEY_WPA_INDEX:Ljava/lang/String; = "wpa_index"

.field private static blacklist TAG:Ljava/lang/String; = null

.field public static final blacklist WPA2_INDEX:Ljava/lang/String; = "wpa2_index"

.field public static final blacklist WPA3_INDEX:Ljava/lang/String; = "wpa3_index"

.field public static final blacklist WPA3_TRANSITION_INDEX:Ljava/lang/String; = "wpa3_transition_index"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 33
    const-string v0, "SemWifiApRestoreHelper"

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 64
    const-string/jumbo v0, "shared_password"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "valuePassword":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v2, "getPassword() - is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :cond_0
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v2, "got Password() sucess"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-object v0
.end method

.method public static blacklist getSSID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 49
    const-string/jumbo v0, "shared_ssid"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "valueSSID":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSSID() - Getting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-object v0
.end method

.method public static blacklist getSecurityType(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 101
    invoke-static {p0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->getSecurityTypeAsString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "securityType":Ljava/lang/String;
    const-string/jumbo v1, "wpa2_index"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/4 v1, 0x1

    .line 105
    .local v1, "valueSecurityType":I
    sget-object v2, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v3, "getSecurityType() - Getting: KeyMgmt.WPA2_PSK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    .end local v1    # "valueSecurityType":I
    :cond_0
    const-string/jumbo v1, "wpa3_index"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const/4 v1, 0x3

    .line 108
    .restart local v1    # "valueSecurityType":I
    sget-object v2, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v3, "getSecurityType() - Getting: KeyMgmt.SOFTAP_WPA3_SAE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v1    # "valueSecurityType":I
    :cond_1
    const-string/jumbo v1, "wpa3_transition_index"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    const/4 v1, 0x2

    .line 111
    .restart local v1    # "valueSecurityType":I
    sget-object v2, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v3, "getSecurityType() - Getting: KeyMgmt.SOFTAP_WPA3_SAE_TRANSITION"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    .end local v1    # "valueSecurityType":I
    :cond_2
    const/4 v1, 0x0

    .line 114
    .restart local v1    # "valueSecurityType":I
    sget-object v2, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string v3, "getSecurityType() - Getting: KeyMgmt.NONE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :goto_0
    return v1
.end method

.method private static blacklist getSecurityTypeAsString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 95
    const-string/jumbo v0, "security_type"

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "SecurityTypeString":Ljava/lang/String;
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSecurityTypeAsString() - Getting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-object v0
.end method

.method public static blacklist setApConfiguration(Landroid/content/Context;Landroid/net/wifi/SoftApConfiguration;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "softApConfiguration"    # Landroid/net/wifi/SoftApConfiguration;

    .line 129
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setApConfiguration(softApConfiguration) - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSSID(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSecurityTypeIndex(Landroid/content/Context;I)V

    .line 133
    return-void
.end method

.method public static blacklist setCurrentApConfiguration(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 120
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setCurrentApConfiguration() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 122
    .local v0, "mSemWifiManager":Lcom/samsung/android/wifi/SemWifiManager;
    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    .line 123
    .local v1, "softApConfiguration":Landroid/net/wifi/SoftApConfiguration;
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSSID(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getPassphrase()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v2

    invoke-static {p0, v2}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSecurityTypeIndex(Landroid/content/Context;I)V

    .line 126
    return-void
.end method

.method public static blacklist setPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "valuePassword"    # Ljava/lang/String;

    .line 55
    move-object v0, p1

    .line 56
    .local v0, "spr":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    const-string/jumbo v0, "xxxxxx"

    .line 59
    :cond_0
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPassword() - Setting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string/jumbo v1, "shared_password"

    invoke-static {p0, v1, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static blacklist setSSID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "valueSSID"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSSID() - Setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const-string/jumbo v0, "shared_ssid"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method private static blacklist setSecurityType(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "securityType"    # Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecurityType() - Setting securityType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string/jumbo v0, "security_type"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static blacklist setSecurityTypeIndex(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "securityTypeIndex"    # I

    .line 79
    sget-object v0, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSecurityType() - Setting securityTypeIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 82
    const-string/jumbo v0, "wpa2_index"

    .local v0, "securityType":Ljava/lang/String;
    goto :goto_0

    .line 83
    .end local v0    # "securityType":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 84
    const-string/jumbo v0, "wpa3_index"

    .restart local v0    # "securityType":Ljava/lang/String;
    goto :goto_0

    .line 85
    .end local v0    # "securityType":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 86
    const-string/jumbo v0, "wpa3_transition_index"

    .restart local v0    # "securityType":Ljava/lang/String;
    goto :goto_0

    .line 88
    .end local v0    # "securityType":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "open_index"

    .line 90
    .restart local v0    # "securityType":Ljava/lang/String;
    :goto_0
    invoke-static {p0, v0}, Lcom/samsung/android/wifi/SemWifiApRestoreHelper;->setSecurityType(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    return-void
.end method
