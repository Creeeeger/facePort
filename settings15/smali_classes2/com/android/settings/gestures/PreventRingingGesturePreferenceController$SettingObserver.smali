.class public final Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final VOLUME_HUSH_GESTURE:Landroid/net/Uri;

.field public final mPreference:Landroidx/preference/Preference;

.field public final synthetic this$0:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;Landroidx/preference/Preference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "volume_hush_gesture"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->VOLUME_HUSH_GESTURE:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->VOLUME_HUSH_GESTURE:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->this$0:Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;

    iget-object p0, p0, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController$SettingObserver;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Lcom/android/settings/gestures/PreventRingingGesturePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method
