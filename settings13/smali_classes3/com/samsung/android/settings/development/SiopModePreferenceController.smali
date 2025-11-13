.class public Lcom/samsung/android/settings/development/SiopModePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SiopModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final TAG:Ljava/lang/String; = "SiopModePreferenceController"

.field private static sIsShipBinary:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ro.product_ship"

    const/4 v1, 0x1

    .line 43
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/development/SiopModePreferenceController;->sIsShipBinary:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/samsung/android/settings/development/SiopModePreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "disable_siop"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 52
    sget-boolean p0, Lcom/samsung/android/settings/development/SiopModePreferenceController;->sIsShipBinary:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onDeveloperOptionsDisabled()V
    .locals 0

    .line 90
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsDisabled()V

    return-void
.end method

.method public onDeveloperOptionsEnabled()V
    .locals 0

    .line 85
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 62
    sget-boolean p1, Lcom/samsung/android/settings/development/SiopModePreferenceController;->sIsShipBinary:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/development/SiopModePreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 63
    move-object p1, p2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 64
    sget-object v0, Lcom/samsung/android/settings/development/SiopModePreferenceController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switch event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.intent.action.SDHMS_SIOP_DISABLE"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "disable_siop"

    .line 66
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 67
    iget-object p0, p0, Lcom/samsung/android/settings/development/SiopModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 69
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.sys.siop.disable"

    .line 68
    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 76
    sget-boolean p1, Lcom/samsung/android/settings/development/SiopModePreferenceController;->sIsShipBinary:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "persist.sys.siop.disable"

    .line 77
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
