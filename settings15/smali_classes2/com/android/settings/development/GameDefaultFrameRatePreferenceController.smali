.class public final Lcom/android/settings/development/GameDefaultFrameRatePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field public final mGameDefaultFrameRateValue:I

.field public final mGameManagerService:Landroid/app/IGameManagerService;

.field public final mSysProps:Lcom/android/settings/development/GameDefaultFrameRatePreferenceController$Injector$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string p1, "game"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IGameManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController;->mGameManagerService:Landroid/app/IGameManagerService;

    new-instance p1, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController$Injector;

    invoke-direct {p1}, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController$Injector;-><init>()V

    new-instance p1, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController$Injector$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController;->mSysProps:Lcom/android/settings/development/GameDefaultFrameRatePreferenceController$Injector$1;

    const-string p1, "ro.surface_flinger.game_default_frame_rate_override"

    const/16 v0, 0x3c

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController;->mGameDefaultFrameRateValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IGameManagerService;Lcom/android/settings/development/GameDefaultFrameRatePreferenceController$Injector;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController;->mGameManagerService:Landroid/app/IGameManagerService;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController$Injector$1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController;->mSysProps:Lcom/android/settings/development/GameDefaultFrameRatePreferenceController$Injector$1;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "disable_game_default_frame_rate"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController;->mGameManagerService:Landroid/app/IGameManagerService;

    xor-int/2addr p1, p2

    invoke-interface {v0, p1}, Landroid/app/IGameManagerService;->toggleGameDefaultFrameRate(Z)V

    invoke-virtual {p0}, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController;->updateGameDefaultPreferenceSetting()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p2
.end method

.method public final updateGameDefaultPreferenceSetting()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController;->mSysProps:Lcom/android/settings/development/GameDefaultFrameRatePreferenceController$Injector$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "debug.graphics.game_default_frame_rate.disabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController;->mGameDefaultFrameRateValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v2, 0x7f140cfc

    invoke-virtual {v1, v2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/settings/development/GameDefaultFrameRatePreferenceController;->updateGameDefaultPreferenceSetting()V

    return-void
.end method
