.class public final Lcom/android/settingslib/dream/DreamBackend;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sInstance:Lcom/android/settingslib/dream/DreamBackend;


# instance fields
.field public final mComparator:Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

.field public final mContext:Landroid/content/Context;

.field public final mDisabledDreams:Ljava/util/Set;

.field public final mDreamManager:Landroid/service/dreams/IDreamManager;

.field public final mDreamsActivatedOnDockByDefault:Z

.field public final mDreamsActivatedOnSleepByDefault:Z

.field public final mDreamsEnabledByDefault:Z

.field public final mLoggableDreamPrefixes:Ljava/util/List;

.field public mSupportedComplications:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    new-instance v2, Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-interface {v1, p1}, Landroid/service/dreams/IDreamManager;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "DreamBackend"

    const-string v4, "Failed to get default dream"

    invoke-static {v1, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-direct {v2, v3}, Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;-><init>(Landroid/content/ComponentName;)V

    iput-object v2, p0, Lcom/android/settingslib/dream/DreamBackend;->mComparator:Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

    const p1, 0x1110157

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsEnabledByDefault:Z

    const p1, 0x1110155

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    const p1, 0x1110154

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    const p1, 0x10700d3

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/settingslib/dream/DreamBackend$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDisabledDreams:Ljava/util/Set;

    const p1, 0x1070119

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mLoggableDreamPrefixes:Ljava/util/List;

    const p1, 0x1070168

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mSupportedComplications:Ljava/util/Set;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;
    .locals 1

    sget-object v0, Lcom/android/settingslib/dream/DreamBackend;->sInstance:Lcom/android/settingslib/dream/DreamBackend;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/dream/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingslib/dream/DreamBackend;->sInstance:Lcom/android/settingslib/dream/DreamBackend;

    :cond_0
    sget-object p0, Lcom/android/settingslib/dream/DreamBackend;->sInstance:Lcom/android/settingslib/dream/DreamBackend;

    return-object p0
.end method


# virtual methods
.method public final getActiveDream()Landroid/content/ComponentName;
    .locals 3

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, p0, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    :goto_1
    const-string v1, "DreamBackend"

    const-string v2, "Failed to get active dream"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public final getComplicationsEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screensaver_complications_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final getDreamInfos()Ljava/util/List;
    .locals 12

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.dreams.DreamService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    :goto_1
    move-object v6, v5

    :goto_2
    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/android/settingslib/dream/DreamBackend;->mDisabledDreams:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_3
    new-instance v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->supportsComplications:Z

    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-nez v8, :cond_4

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    goto :goto_3

    :cond_4
    move-object v9, v5

    :goto_3
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v10, v10, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v10, :cond_5

    invoke-virtual {v1, v8, v10, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_5
    iput-object v5, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->description:Ljava/lang/CharSequence;

    iput-object v6, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    iget-object v5, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v5, v4}, Landroid/service/dreams/DreamService;->getDreamMetadata(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v5, v4, Landroid/service/dreams/DreamService$DreamMetadata;->settingsActivity:Landroid/content/ComponentName;

    iput-object v5, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    iget-object v5, v4, Landroid/service/dreams/DreamService$DreamMetadata;->previewImage:Landroid/graphics/drawable/Drawable;

    iput-object v5, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->previewImage:Landroid/graphics/drawable/Drawable;

    iget-boolean v5, v4, Landroid/service/dreams/DreamService$DreamMetadata;->showComplications:Z

    iput-boolean v5, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->supportsComplications:Z

    iget v4, v4, Landroid/service/dreams/DreamService$DreamMetadata;->dreamCategory:I

    iput v4, v7, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->dreamCategory:I

    :cond_6
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mComparator:Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v3
.end method

.method public final getHomeControlsEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_show_controls"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screensaver_home_controls_enabled"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public final getWhenToDreamSetting()I
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screensaver_activate_on_dock"

    iget-boolean v2, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-boolean v3, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    const-string v4, "screensaver_activate_on_sleep"

    const/4 v5, 0x1

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v5, :cond_2

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x3

    :goto_0
    return v5
.end method

.method public final isEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screensaver_enabled"

    iget-boolean p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsEnabledByDefault:Z

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final logDreamSettingChangeToStatsd(I)V
    .locals 8

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isEnabled()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    move-object v4, v0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/android/settingslib/dream/DreamBackend;->mLoggableDreamPrefixes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v5, p0, Lcom/android/settingslib/dream/DreamBackend;->mLoggableDreamPrefixes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "other"

    goto :goto_0

    :goto_2
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getWhenToDreamSetting()I

    move-result v0

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    const/4 v6, 0x2

    if-eq v0, v5, :cond_4

    if-eq v0, v6, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    const/4 v0, 0x3

    move v5, v0

    goto :goto_3

    :cond_4
    move v5, v6

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getComplicationsEnabled()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getHomeControlsEnabled()Z

    move-result p0

    const/16 v0, 0x2c1

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, p0

    move v7, p1

    invoke-static/range {v0 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZLjava/lang/String;IZZI)V

    return-void
.end method

.method public final setActiveDream(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-interface {v0, v1}, Landroid/service/dreams/IDreamManager;->setDreamComponents([Landroid/content/ComponentName;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settingslib/dream/DreamBackend;->logDreamSettingChangeToStatsd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to set active dream to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DreamBackend"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setSupportedComplications(Ljava/util/Set;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mSupportedComplications:Ljava/util/Set;

    return-void
.end method
