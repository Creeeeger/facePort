.class Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mStayAwakeUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/settings/development/StayAwakePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/development/StayAwakePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->this$0:Lcom/android/settings/development/StayAwakePreferenceController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "stay_on_while_plugged_in"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->mStayAwakeUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->mStayAwakeUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/development/StayAwakePreferenceController$SettingsObserver;->this$0:Lcom/android/settings/development/StayAwakePreferenceController;

    iget-object p1, p0, Lcom/android/settings/development/StayAwakePreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/StayAwakePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method
