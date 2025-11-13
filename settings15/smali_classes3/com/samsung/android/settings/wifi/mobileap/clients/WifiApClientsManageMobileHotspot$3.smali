.class public final Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$wifiApClientConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;

.field public final synthetic val$wifiApClientPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$3;->val$wifiApClientPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$3;->val$wifiApClientConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$3;->val$wifiApClientPreference:Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/clients/WifiApClientsManageMobileHotspot$3;->val$wifiApClientConfig:Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;

    iget p0, p0, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApClientConfig;->mProgressbarColorId:I

    iput p0, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgressColor:I

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
