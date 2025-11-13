.class public final Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final BRIGHTEN_UP_VIDEO:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "hdr_effect"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;->BRIGHTEN_UP_VIDEO:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "hdr_effect"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v0, p2

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;->loadAppsList(Z)V

    return-void
.end method

.method public final setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;->BRIGHTEN_UP_VIDEO:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/usefulfeature/videoenhancer/HDReffectSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
