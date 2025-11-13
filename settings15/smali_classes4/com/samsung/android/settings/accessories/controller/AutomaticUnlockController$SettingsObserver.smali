.class public final Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final AUTO_SCREEN_ON:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;->this$0:Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "auto_screen_on"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;->AUTO_SCREEN_ON:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;->this$0:Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;

    invoke-static {p1}, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;->this$0:Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;

    invoke-static {p0}, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->-$$Nest$fgetmPreference(Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;)Landroidx/preference/SecSwitchPreference;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;->this$0:Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;

    invoke-static {p1}, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->access$000(Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;->AUTO_SCREEN_ON:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController$SettingsObserver;->this$0:Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;

    invoke-static {p1}, Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;->access$100(Lcom/samsung/android/settings/accessories/controller/AutomaticUnlockController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
