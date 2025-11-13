.class public Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SamsungCoreServicesPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.scs.ai.search"

.field private static final CALENDAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.calendar"

.field private static final FILES_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.myfiles"

.field private static final GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.providers.media"

.field private static final KEY_SAMSUNG_CORE_SERVICES:Ljava/lang/String; = "samsung_core_services"

.field private static final METHOD_UPDATE_DATA_CONFIG_STATUS:Ljava/lang/String; = "update_data_config_status"

.field private static final SCS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.scs"

.field private static final SEARCH_URI:Landroid/net/Uri;

.field private static final SETTINGS_DB_DATA_CONFIG_ENABLED:Ljava/lang/String; = "scs_search_data_config_enabled"

.field private static final TAG:Ljava/lang/String; = "SamsungCoreServicesPreferenceController"


# instance fields
.field private final mDisabledFilesMediaCallendar:I

.field private mIsChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 29
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.samsung.android.scs.ai.search"

    .line 30
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;->SEARCH_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "samsung_core_services"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p1, p1, [I

    .line 46
    fill-array-data p1, :array_0

    const p2, 0x7fffffff

    invoke-static {p2, p1}, Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;->turnOffKthBit(I[I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;->mDisabledFilesMediaCallendar:I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x6
        0x7
    .end array-data
.end method

.method private static varargs turnOffKthBit(I[I)I
    .locals 4

    .line 76
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    const/4 v3, 0x1

    shl-int v2, v3, v2

    not-int v2, v2

    and-int/2addr p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 67
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "com.samsung.android.scs"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x3

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public isChecked()Z
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "scs_search_data_config_enabled"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 53
    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;->mDisabledFilesMediaCallendar:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 85
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;->mIsChecked:Z

    goto :goto_0

    .line 87
    :cond_0
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    iget-boolean p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;->mIsChecked:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;->isChecked()Z

    move-result p2

    if-eq p1, p2, :cond_1

    .line 89
    sget-object p1, Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;->TAG:Ljava/lang/String;

    const-string p2, "Preference is updated. call SCS to update"

    invoke-static {p1, p2}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;->SEARCH_URI:Landroid/net/Uri;

    const-string v0, "update_data_config_status"

    const-string v1, "com.google.android.providers.media"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 92
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "com.sec.android.app.myfiles"

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 94
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "com.samsung.android.calendar"

    invoke-virtual {p0, p2, v0, p1, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 58
    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;->mDisabledFilesMediaCallendar:I

    .line 59
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "scs_search_data_config_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    sget-object p0, Lcom/samsung/android/settings/usefulfeature/controller/SamsungCoreServicesPreferenceController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updated SCS config to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
