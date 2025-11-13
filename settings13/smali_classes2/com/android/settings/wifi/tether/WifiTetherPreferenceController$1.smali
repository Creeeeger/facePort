.class Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiTetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->initWifiTetherSoftApManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedClientsChanged(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    iget-object v1, v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->-$$Nest$fgetmSoftApState(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 153
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)Landroid/content/Context;

    move-result-object p0

    .line 154
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 153
    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiUtils;->getWifiTetherSummaryForConnectedDevices(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 152
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStateChanged(II)V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->-$$Nest$fputmSoftApState(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;I)V

    .line 144
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->handleWifiApStateChanged(II)V

    return-void
.end method
