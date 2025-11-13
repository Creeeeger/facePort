.class public final synthetic Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/NetworkProviderSettings;

.field public final synthetic f$1:Lcom/android/wifitrackerlib/WifiEntry;

.field public final synthetic f$2:Lcom/android/settings/wifi/ConnectedWifiEntryPreference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/NetworkProviderSettings;Lcom/android/wifitrackerlib/WifiEntry;Lcom/android/settings/wifi/ConnectedWifiEntryPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda7;->f$0:Lcom/android/settings/network/NetworkProviderSettings;

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda7;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    iput-object p3, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda7;->f$2:Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    sget-object p1, Lcom/android/settings/network/NetworkProviderSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;

    iget-object p1, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda7;->f$0:Lcom/android/settings/network/NetworkProviderSettings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda7;->f$1:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->signIn()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$$ExternalSyntheticLambda7;->f$2:Lcom/android/settings/wifi/ConnectedWifiEntryPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/network/NetworkProviderSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/LongPressWifiEntryPreference;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
