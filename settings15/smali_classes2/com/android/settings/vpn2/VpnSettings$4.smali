.class public final Lcom/android/settings/vpn2/VpnSettings$4;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/GearPreference$OnGearClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/vpn2/VpnSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$4;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    return-void
.end method


# virtual methods
.method public final onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 7

    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings$4;->this$0:Lcom/android/settings/vpn2/VpnSettings;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    iget-object v2, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v1, Lcom/android/settings/vpn2/VpnSettings;->userCert:[Ljava/lang/String;

    iget-object v6, v1, Lcom/android/settings/vpn2/VpnSettings;->caCert:[Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/android/settings/vpn2/AppPreference;

    sget-boolean p0, Lcom/android/settings/vpn2/VpnSettings;->DEBUG:Z

    invoke-virtual {v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, Lcom/android/settings/vpn2/AppPreference;->mPackageName:Ljava/lang/String;

    const-string v2, "package"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/vpn2/AppManagementFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    iget-object p0, p1, Lcom/android/settings/vpn2/AppPreference;->mName:Ljava/lang/String;

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    const/16 p0, 0x64

    iput p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    new-instance p0, Landroid/os/UserHandle;

    iget p1, p1, Lcom/android/settings/vpn2/ManageablePreference;->mUserId:I

    invoke-direct {p0, p1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object p0, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_1
    :goto_0
    return-void
.end method
