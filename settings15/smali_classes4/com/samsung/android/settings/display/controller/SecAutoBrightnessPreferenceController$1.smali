.class public final Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string p2, "CameraSensorModel\'s onChange = "

    const-string v0, "SecAutoBrightnessPreferenceController"

    invoke-static {p2, v0, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string/jumbo p2, "onChange = "

    const-string v0, "SecAutoBrightnessPreferenceController"

    invoke-static {p2, v0, p1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController$1;->this$0:Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;)Lcom/samsung/android/settings/widget/SecRestrictedSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/controller/SecAutoBrightnessPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
