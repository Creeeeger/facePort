.class public Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# static fields
.field private static final ETHERNET_TETHER_PROVISION_REQUEST:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "SecEthernetTetherPreferenceController"

.field private static final TETHER_CHOICE:Ljava/lang/String; = "TETHER_TYPE"


# instance fields
.field private final mAvailableInterfaces:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCm:Landroid/net/ConnectivityManager;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private mEm:Landroid/net/EthernetManager;

.field private mEthernetListener:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;

.field private mEthernetTetherReceiver:Landroid/content/BroadcastReceiver;

.field private mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

.field private mHandler:Landroid/os/Handler;

.field private mPreference:Landroidx/preference/SecSwitchPreference;

.field private mStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

.field private mTm:Landroid/net/TetheringManager;


# direct methods
.method public static synthetic $r8$lambda$kNyCGoZnjKDOnWms72zPg7_jHa4(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->lambda$onStart$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qHu8-k6PyrKLYojjmCzbd--spTw(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->lambda$updateController$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAvailableInterfaces(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mAvailableInterfaces:Ljava/util/HashSet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mAvailableInterfaces:Ljava/util/HashSet;

    return-void
.end method

.method private synthetic lambda$onStart$0(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$updateController$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->startEthernetTetherProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->startTethering()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->setEthernetTethering(Z)V

    :goto_0
    return p2
.end method

.method private setEthernetTethering(Z)V
    .locals 3

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "mEthernetTether onPreferenceTreeClick startTethering "

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "mEthernetTether onPreferenceTreeClick stopTethering"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :goto_0
    return-void
.end method

.method private startEthernetTetherProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)Z
    .locals 4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/settings/connection/tether/SecTetherUtils;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    sget-object p2, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startEthernetTetherProvisioningIfNecessary SecTetherUtils.isProvisioningNeeded : TRUE"

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string/jumbo p0, "startEthernetTetherProvisioningIfNecessary provisionApp == null return"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    array-length v1, p0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const-string/jumbo p0, "startEthernetTetherProvisioningIfNecessary provisionApp.length != 2 return"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ProvisionApp : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v0

    aget-object p0, p0, v2

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "TETHER_TYPE"

    const/4 v3, 0x5

    invoke-virtual {v1, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "Intent putExtra key : TETHER_TYPE , value : 5"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x3e9

    :try_start_0
    invoke-virtual {p1, v1, p0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    return v0

    :cond_3
    :goto_0
    const-string p0, " provisioning app is not set in CSCfeature"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startEthernetTetherProvisioningIfNecessary SecTetherUtils.isProvisioningNeeded : FALSE"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private updateController([Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSatelliteNetworksOn(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "Tethering is disabled by UsingNonTerrestrialNetwork"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_0
    array-length v0, p1

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    aget-object v5, p1, v2

    iget-object v6, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mAvailableInterfaces:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEm:Landroid/net/EthernetManager;

    invoke-virtual {v6}, Landroid/net/EthernetManager;->getInterfaceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverEnabled:Z

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    const v0, 0x7f141258

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mAvailableInterfaces:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    const v0, 0x7f142371

    if-gtz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEm:Landroid/net/EthernetManager;

    invoke-virtual {p1}, Landroid/net/EthernetManager;->getInterfaceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    iget-boolean v2, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverEnabled:Z

    xor-int/2addr v2, v4

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :goto_2
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "mEthernetTether updateEthernetState isTethered:  "

    const-string v2, " mAvailableInterfaces.size(): "

    invoke-static {v0, v2, v3}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mAvailableInterfaces:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_7

    move v2, v4

    goto :goto_3

    :cond_7
    move v2, v1

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mEm.getInterfaceList().size(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEm:Landroid/net/EthernetManager;

    invoke-virtual {v2}, Landroid/net/EthernetManager;->getInterfaceList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_8

    move v1, v4

    :cond_8
    invoke-static {v0, v1, p1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(II)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->startTethering()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onAllowlistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object p1, p1, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverEnabled:Z

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "tethering"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "ethernet"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/EthernetManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEm:Landroid/net/EthernetManager;

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDataSaverChanged : "

    invoke-static {v1, v0, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverEnabled:Z

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onDenylistStatusChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$OnStartTetheringCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$OnStartTetheringCallback;-><init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$mEthernetTetherReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$mEthernetTetherReceiver;-><init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetTetherReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetTetherReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;-><init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetListener:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEm:Landroid/net/EthernetManager;

    if-eqz v1, :cond_1

    new-instance v2, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)V

    invoke-virtual {v1, v2, v0}, Landroid/net/EthernetManager;->addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->updateController()V

    return-void
.end method

.method public onStop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetTetherReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetListener:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;

    invoke-virtual {v0, v1}, Landroid/net/EthernetManager;->removeInterfaceStateListener(Landroid/net/EthernetManager$InterfaceStateListener;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetTetherReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setHost(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    return-void
.end method

.method public bridge synthetic startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;->startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V

    return-void
.end method

.method public startTethering()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->setEthernetTethering(Z)V

    return-void
.end method

.method public updateController()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->updateController([Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
