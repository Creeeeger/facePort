.class public Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "FloatingIconsNotificationSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/notification/FloatingIconDependentFieldListener;


# static fields
.field public static final STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;


# instance fields
.field private mControllerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/notification/FloatingIconDependentControllerFieldListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->STATUS_LOGGING_PROVIDER:Lcom/samsung/android/settings/logging/status/StatusLogger$StatusLoggingProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mControllerListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    new-instance v1, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;

    const-string v2, "floating_icon_illustration"

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/notification/FloatingIconAnimationPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/samsung/android/settings/notification/FloatingIconDescriptionController;

    const-string v2, "floating_icon_description"

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/notification/FloatingIconDescriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v1, Lcom/samsung/android/settings/notification/BubbleFloatingIconStylePreferenceController;

    const-string v2, "floating_icon_bubble"

    invoke-direct {v1, p1, v2, p0}, Lcom/samsung/android/settings/notification/BubbleFloatingIconStylePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/notification/FloatingIconDependentFieldListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    new-instance v1, Lcom/samsung/android/settings/notification/PopupFloatingIconStylePreferenceController;

    const-string v2, "floating_icon_popup"

    invoke-direct {v1, p1, v2, p0}, Lcom/samsung/android/settings/notification/PopupFloatingIconStylePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/notification/FloatingIconDependentFieldListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v1, Lcom/samsung/android/settings/notification/NoFloatingIconStylePreferenceController;

    const-string v2, "floating_icon_off"

    invoke-direct {v1, p1, v2, p0}, Lcom/samsung/android/settings/notification/NoFloatingIconStylePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/settings/notification/FloatingIconDependentFieldListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v1, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;

    const-string v2, "included_apps"

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/settings/notification/FloatingPopupAppsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 91
    instance-of v2, v1, Lcom/samsung/android/settings/notification/FloatingIconDependentControllerFieldListener;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mControllerListeners:Ljava/util/List;

    check-cast v1, Lcom/samsung/android/settings/notification/FloatingIconDependentControllerFieldListener;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "FloatingIconNotiSettings"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x6a3

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 72
    sget p0, Lcom/android/settings/R$xml;->sec_floating_icon_notification_settings:I

    return p0
.end method

.method public notifyChange(I)V
    .locals 1

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/notification/FloatingIconsNotificationSettings;->mControllerListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/notification/FloatingIconDependentControllerFieldListener;

    .line 101
    invoke-interface {v0, p1}, Lcom/samsung/android/settings/notification/FloatingIconDependentControllerFieldListener;->updateValues(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->setAutoRemoveInsetCategory(Z)V

    return-void
.end method
