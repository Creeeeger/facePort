.class public final Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic $this_apply:Landroidx/preference/SwitchPreferenceCompat;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/fragment/SettingFragment;Landroidx/preference/SwitchPreferenceCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    iput-object p2, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;->$this_apply:Landroidx/preference/SwitchPreferenceCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;->this$0:Lcom/android/systemui/controls/ui/fragment/SettingFragment;

    iget-object v0, p1, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->saLogger:Lcom/android/systemui/controls/util/SALogger;

    new-instance v1, Lcom/android/systemui/controls/util/SALogger$Event$SettingsShowDevicesOnOff;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/fragment/SettingFragment$onCreatePreferences$1$1;->$this_apply:Landroidx/preference/SwitchPreferenceCompat;

    iget-boolean v2, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-direct {v1, v2}, Lcom/android/systemui/controls/util/SALogger$Event$SettingsShowDevicesOnOff;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/util/SALogger;->sendEvent(Lcom/android/systemui/controls/util/SALogger$Event;)V

    iget-object v0, p0, Landroidx/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    const-string v2, "lockscreen_show_controls"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean p0, p0, Landroidx/preference/TwoStatePreference;->mChecked:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/controls/ui/fragment/SettingFragment;->updatePreference(Z)V

    return-void
.end method
