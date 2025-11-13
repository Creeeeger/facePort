.class public Lcom/samsung/android/settings/security/SecureWifiManager;
.super Ljava/lang/Object;
.source "SecureWifiManager.java"


# static fields
.field private static final PREFERENCE_URI:Landroid/net/Uri;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.fast.securewifiprovider/preference"

    .line 30
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/security/SecureWifiManager;->PREFERENCE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/samsung/android/settings/security/SecureWifiManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static insertSALog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    .line 57
    invoke-virtual {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    .line 58
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object p0

    .line 56
    invoke-virtual {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    return-void
.end method


# virtual methods
.method public getAdvancedSettingsScreenId()Ljava/lang/String;
    .locals 0

    const-string p0, "SWIFI001"

    return-object p0
.end method

.method public getAdvancedSettingsSwifiEventId()Ljava/lang/String;
    .locals 0

    const-string p0, "0010"

    return-object p0
.end method
