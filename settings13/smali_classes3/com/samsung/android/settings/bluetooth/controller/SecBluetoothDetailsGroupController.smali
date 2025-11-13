.class public Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;
.super Lcom/android/settings/bluetooth/BluetoothDetailsController;
.source "SecBluetoothDetailsGroupController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final DBG:Z


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field mProfileContainer:Landroidx/preference/PreferenceGroup;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/settings/bluetooth/BluetoothDetailsController;-><init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 73
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 74
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 75
    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 77
    invoke-virtual {p5, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private createPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPreference :: cachedDevice : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothDetailsGroupController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->PreferenceThemeOverlay:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 137
    new-instance v1, Landroidx/preference/Preference;

    invoke-direct {v1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getNameForLog()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMaxConnectionState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->getConnectionStatus(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 141
    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 142
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method private getConnectionStatus(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "disconnected"

    goto :goto_0

    :cond_0
    const-string p0, "disconnecting"

    goto :goto_0

    :cond_1
    const-string p0, "connected"

    goto :goto_0

    :cond_2
    const-string p0, "connecting"

    :goto_0
    return-object p0
.end method

.method private setGroupMember()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 121
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMemberDevice()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v1, :cond_1

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGroupMember: createPreference = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SecBluetoothDetailsGroupController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->createPreference(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setProfileContainer()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioProfile()Lcom/android/settingslib/bluetooth/LeAudioProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Group ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getGroupId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->getConnectionStatus(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_group"

    return-object p0
.end method

.method protected init(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->screen_device_profiles_setting:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mScreenId:Ljava/lang/String;

    const-string v0, "bluetooth_group"

    .line 83
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->setProfileContainer()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onServiceConnected()V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    return-void
.end method

.method public refresh()V
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh: member size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMemberDevice()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothDetailsGroupController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->mProfileContainer:Landroidx/preference/PreferenceGroup;

    if-eqz v0, :cond_0

    .line 92
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->setGroupMember()V

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsGroupController;->setProfileContainer()V

    return-void
.end method
