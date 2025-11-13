.class Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mPackagePolicyUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/settings/development/PackagePolicyPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/PackagePolicyPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;->this$0:Lcom/android/settings/development/PackagePolicyPreferenceController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "package_policy_disabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;->mPackagePolicyUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;->mPackagePolicyUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/development/PackagePolicyPreferenceController$SettingsObserver;->this$0:Lcom/android/settings/development/PackagePolicyPreferenceController;

    iget-object p1, p0, Lcom/android/settings/development/PackagePolicyPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/PackagePolicyPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
