.class public final Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCallback:Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsStateCallback;


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsObserver;->mCallback:Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsStateCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p2}, Lcom/android/settings/gestures/PowerMenuSettingsUtils$SettingsStateCallback;->onChange(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
