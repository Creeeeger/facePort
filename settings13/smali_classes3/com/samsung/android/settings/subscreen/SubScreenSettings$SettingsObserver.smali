.class final Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "SubScreenSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/subscreen/SubScreenSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final SHOW_NOTIFICATIONS:Landroid/net/Uri;

.field final synthetic this$0:Lcom/samsung/android/settings/subscreen/SubScreenSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/subscreen/SubScreenSettings;Landroid/os/Handler;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/subscreen/SubScreenSettings;

    .line 267
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "cover_screen_show_notification"

    .line 264
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;->SHOW_NOTIFICATIONS:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 272
    iget-object p1, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/subscreen/SubScreenSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->-$$Nest$fgetmSubScreenNotificationController(Lcom/samsung/android/settings/subscreen/SubScreenSettings;)Lcom/samsung/android/settings/subscreen/controller/SubScreenNotificationController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/subscreen/controller/SubScreenNotificationController;->updateVisible()V

    .line 273
    iget-object p0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/subscreen/SubScreenSettings;

    invoke-static {p0}, Lcom/samsung/android/settings/subscreen/SubScreenSettings;->-$$Nest$mupdateSummaryVisibility(Lcom/samsung/android/settings/subscreen/SubScreenSettings;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/subscreen/SubScreenSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;->SHOW_NOTIFICATIONS:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/subscreen/SubScreenSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/subscreen/SubScreenSettings;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
