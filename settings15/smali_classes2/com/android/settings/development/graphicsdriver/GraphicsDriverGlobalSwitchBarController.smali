.class public final Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;
.implements Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field mGraphicsDriverContentObserver:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

.field public final mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/widget/MainSwitchBarController;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2, p0}, Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;-><init>(Landroid/os/Handler;Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver$OnGraphicsDriverContentChangedListener;)V

    iput-object v1, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mGraphicsDriverContentObserver:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

    iput-object p2, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/MainSwitchBarController;->setEnabled(Z)V

    const-string p1, "updatable_driver_all_apps"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p2, v1}, Lcom/android/settings/widget/MainSwitchBarController;->setChecked(Z)V

    iput-object p0, p2, Lcom/android/settings/widget/SwitchWidgetController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    return-void
.end method


# virtual methods
.method public final onGraphicsDriverContentChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "updatable_driver_all_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p0, v2}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    return-void
.end method

.method public final onStart()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mGraphicsDriverContentObserver:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "updatable_driver_all_apps"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mSwitchWidgetController:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mGraphicsDriverContentObserver:Lcom/android/settings/development/graphicsdriver/GraphicsDriverContentObserver;

    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final onSwitchToggled(Z)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "updatable_driver_all_apps"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :cond_0
    return v3

    :cond_1
    const/4 v4, 0x3

    if-nez p1, :cond_2

    if-ne v0, v4, :cond_2

    return v3

    :cond_2
    iget-object p0, p0, Lcom/android/settings/development/graphicsdriver/GraphicsDriverGlobalSwitchBarController;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3
.end method
