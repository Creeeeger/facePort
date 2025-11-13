.class public Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecEthernetTetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;
.implements Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;,
        Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$OnStartTetheringCallback;,
        Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$mEthernetTetherReceiver;
    }
.end annotation


# static fields
.field private static CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String; = null

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
.method public static synthetic $r8$lambda$9RMnbOfx8nvqDzzYrOy36nyW2Jg(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->lambda$updateController$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LDXYslB5388pbi3-UZziAh04Tu8(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->lambda$onStart$0(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAvailableInterfaces(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mAvailableInterfaces:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 55
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigOpBrandingForMobileAp"

    const-string v2, "ALL"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mAvailableInterfaces:Ljava/util/HashSet;

    return-void
.end method

.method private synthetic lambda$onStart$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$updateController$1(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 196
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 198
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mFragment:Lcom/samsung/android/settings/connection/tether/SecTetherSettings;

    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->startEthernetTetherProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)Z

    move-result p1

    if-eqz p1, :cond_0

    return p2

    .line 201
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->startTethering()V

    goto :goto_0

    .line 203
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->setEthernetTethering(Z)V

    :goto_0
    return p2
.end method

.method private setEthernetTethering(Z)V
    .locals 3

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    .line 212
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "mEthernetTether onPreferenceTreeClick startTethering "

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    goto :goto_0

    .line 215
    :cond_0
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "mEthernetTether onPreferenceTreeClick stopTethering"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    :goto_0
    return-void
.end method

.method private startEthernetTetherProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)Z
    .locals 4

    .line 298
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result p0

    const/4 p2, 0x0

    if-eqz p0, :cond_3

    .line 299
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v0, "startEthernetTetherProvisioningIfNecessary TetherUtil.isProvisioningNeeded : TRUE"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " provisioning app is not set in CSCfeature, operator:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_0
    const-string v1, ","

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "startEthernetTetherProvisioningIfNecessary provisionApp == null return"

    .line 308
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 311
    :cond_1
    array-length v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const-string p1, "startEthernetTetherProvisioningIfNecessary provisionApp.length != 2 return"

    .line 312
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    .line 315
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProvisionApp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    aget-object v3, v0, p2

    aget-object v0, v0, v2

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x5

    const-string v3, "TETHER_TYPE"

    .line 320
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "Intent putExtra key : TETHER_TYPE , value : 5"

    .line 321
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x3e9

    .line 323
    :try_start_0
    invoke-virtual {p1, v1, p0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    .line 325
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    return p2

    .line 330
    :cond_3
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string p1, "startEthernetTetherProvisioningIfNecessary TetherUtil.isProvisioningNeeded : FALSE"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method private updateController([Ljava/lang/String;)V
    .locals 7

    .line 174
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v0, :cond_2

    aget-object v5, p1, v2

    .line 175
    iget-object v6, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mAvailableInterfaces:Ljava/util/HashSet;

    invoke-virtual {v6, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEm:Landroid/net/EthernetManager;

    invoke-virtual {v6}, Landroid/net/EthernetManager;->getInterfaceList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 181
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverEnabled:Z

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 182
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v4}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 183
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    sget v0, Lcom/android/settings/R$string;->interact_across_profiles_summary_allowed:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 184
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mAvailableInterfaces:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-gtz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEm:Landroid/net/EthernetManager;

    invoke-virtual {p1}, Landroid/net/EthernetManager;->getInterfaceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_1

    .line 189
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 190
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 191
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    sget v0, Lcom/android/settings/R$string;->ethernet_tethering_subtext:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 185
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    iget-boolean v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverEnabled:Z

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 187
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    sget v0, Lcom/android/settings/R$string;->ethernet_tethering_subtext:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 193
    :goto_2
    sget-object p1, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEthernetTether updateEthernetState isTethered:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAvailableInterfaces.size(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mAvailableInterfaces:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_6

    move v2, v4

    goto :goto_3

    :cond_6
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

    if-lez v2, :cond_7

    move v1, v4

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 137
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 138
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

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

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

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

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

    .line 229
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->startTethering()V

    goto :goto_0

    .line 233
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    .line 234
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

    .line 88
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 89
    invoke-virtual {p1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverEnabled:Z

    .line 90
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    .line 91
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "tethering"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/TetheringManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    .line 92
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "ethernet"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/EthernetManager;

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEm:Landroid/net/EthernetManager;

    .line 93
    iget-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 94
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 3

    .line 143
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataSaverChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-boolean p1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverEnabled:Z

    .line 145
    iget-object p0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mPreference:Landroidx/preference/SecSwitchPreference;

    if-eqz p0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    .line 146
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

    .line 99
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 104
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$OnStartTetheringCallback;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$OnStartTetheringCallback;-><init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mStartTetheringCallback:Landroid/net/ConnectivityManager$OnStartTetheringCallback;

    .line 106
    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$mEthernetTetherReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$mEthernetTetherReceiver;-><init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$mEthernetTetherReceiver-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 115
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;-><init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener-IA;)V

    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetListener:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;

    .line 116
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_1

    .line 117
    new-instance v1, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;)V

    iget-object v2, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetListener:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/EthernetManager;->addInterfaceStateListener(Ljava/util/concurrent/Executor;Landroid/net/EthernetManager$InterfaceStateListener;)V

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->updateController()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 124
    sget-object v0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetTetherReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEm:Landroid/net/EthernetManager;

    if-eqz v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetListener:Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController$EthernetListener;

    invoke-virtual {v0, v1}, Landroid/net/EthernetManager;->removeInterfaceStateListener(Landroid/net/EthernetManager$InterfaceStateListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mEthernetTetherReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

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

    .line 78
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

    .line 223
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->setEthernetTethering(Z)V

    return-void
.end method

.method public updateController()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->mTm:Landroid/net/TetheringManager;

    invoke-virtual {v0}, Landroid/net/TetheringManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 168
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/connection/tether/SecEthernetTetherPreferenceController;->updateController([Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
