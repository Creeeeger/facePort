.class public Lcom/android/settingslib/dream/DreamBackend;
.super Ljava/lang/Object;
.source "DreamBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;,
        Lcom/android/settingslib/dream/DreamBackend$DreamInfo;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/settingslib/dream/DreamBackend;


# instance fields
.field private final mComparator:Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultEnabledComplications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledDreams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mDreamManager:Landroid/service/dreams/IDreamManager;

.field private final mDreamsActivatedOnDockByDefault:Z

.field private final mDreamsActivatedOnSleepByDefault:Z

.field private final mDreamsEnabledByDefault:Z

.field private final mSupportedComplications:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "dreams"

    .line 129
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 128
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 130
    new-instance v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getDefaultDream()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;-><init>(Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mComparator:Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

    const v0, 0x1110125

    .line 131
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsEnabledByDefault:Z

    const v0, 0x1110124

    .line 133
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    const v0, 0x1110123

    .line 135
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    const v0, 0x10700a7

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settingslib/dream/DreamBackend$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/settingslib/dream/DreamBackend$$ExternalSyntheticLambda1;-><init>()V

    .line 139
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 140
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDisabledDreams:Ljava/util/Set;

    const v0, 0x1070123

    .line 142
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    .line 145
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mSupportedComplications:Ljava/util/Set;

    const v1, 0x10700bf

    .line 147
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p1

    .line 149
    invoke-interface {p1}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p1

    .line 151
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settingslib/dream/DreamBackend$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/settingslib/dream/DreamBackend$$ExternalSyntheticLambda2;-><init>(Ljava/util/Set;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 152
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/android/settingslib/dream/DreamBackend;->mDefaultEnabledComplications:Ljava/util/Set;

    return-void
.end method

.method private static convertToString(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 356
    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder$$ExternalSyntheticLambda0;-><init>()V

    .line 357
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    const-string v0, ","

    .line 358
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 400
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static getDescription(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4

    .line 189
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 193
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, v2

    move-object v2, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 195
    :goto_0
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget p0, p0, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz p0, :cond_1

    .line 196
    invoke-virtual {p1, v0, p0, v2}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method private static getDreamComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 2

    if-eqz p0, :cond_1

    .line 471
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 474
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;
    .locals 1

    .line 118
    sget-object v0, Lcom/android/settingslib/dream/DreamBackend;->sInstance:Lcom/android/settingslib/dream/DreamBackend;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/android/settingslib/dream/DreamBackend;

    invoke-direct {v0, p0}, Lcom/android/settingslib/dream/DreamBackend;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingslib/dream/DreamBackend;->sInstance:Lcom/android/settingslib/dream/DreamBackend;

    .line 121
    :cond_0
    sget-object p0, Lcom/android/settingslib/dream/DreamBackend;->sInstance:Lcom/android/settingslib/dream/DreamBackend;

    return-object p0
.end method

.method private static varargs logd(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method private static parseFromString(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 362
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    :cond_0
    const-string v0, ","

    .line 365
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/settingslib/dream/DreamBackend$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settingslib/dream/DreamBackend$$ExternalSyntheticLambda0;-><init>()V

    .line 366
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 367
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public getActiveDream()Landroid/content/ComponentName;
    .locals 3

    .line 420
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 423
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->getDreamComponents()[Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 424
    array-length v1, p0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget-object v0, p0, v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    const-string v1, "DreamBackend"

    const-string v2, "Failed to get active dream"

    .line 426
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public getActiveDreamName()Ljava/lang/CharSequence;
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 220
    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public getDefaultDream()Landroid/content/ComponentName;
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 208
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, p0}, Landroid/service/dreams/IDreamManager;->getDefaultDreamComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DreamBackend"

    const-string v2, "Failed to get default dream"

    .line 210
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public getDreamInfos()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/dream/DreamBackend$DreamInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getDreamInfos()"

    .line 156
    invoke-static {v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDream()Landroid/content/ComponentName;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 159
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.dreams.DreamService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    .line 160
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 164
    invoke-static {v4}, Lcom/android/settingslib/dream/DreamBackend;->getDreamComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 165
    iget-object v6, p0, Lcom/android/settingslib/dream/DreamBackend;->mDisabledDreams:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 169
    :cond_1
    new-instance v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-direct {v6}, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;-><init>()V

    .line 170
    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->caption:Ljava/lang/CharSequence;

    .line 171
    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 172
    invoke-static {v4, v1}, Lcom/android/settingslib/dream/DreamBackend;->getDescription(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->description:Ljava/lang/CharSequence;

    .line 173
    iput-object v5, v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->componentName:Landroid/content/ComponentName;

    .line 174
    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    .line 176
    iget-object v5, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v5, v4}, Landroid/service/dreams/DreamService;->getDreamMetadata(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)Landroid/service/dreams/DreamService$DreamMetadata;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 179
    iget-object v5, v4, Landroid/service/dreams/DreamService$DreamMetadata;->settingsActivity:Landroid/content/ComponentName;

    iput-object v5, v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    .line 180
    iget-object v4, v4, Landroid/service/dreams/DreamService$DreamMetadata;->previewImage:Landroid/graphics/drawable/Drawable;

    iput-object v4, v6, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->previewImage:Landroid/graphics/drawable/Drawable;

    .line 182
    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_3
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mComparator:Lcom/android/settingslib/dream/DreamBackend$DreamInfoComparator;

    invoke-interface {v3, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v3
.end method

.method public getEnabledComplications()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    .line 290
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screensaver_enabled_complications"

    .line 289
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 294
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDefaultEnabledComplications:Ljava/util/Set;

    return-object p0

    .line 297
    :cond_0
    invoke-static {v0}, Lcom/android/settingslib/dream/DreamBackend;->parseFromString(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedComplications()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 302
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mSupportedComplications:Ljava/util/Set;

    return-object p0
.end method

.method public getWhenToDreamSetting()I
    .locals 1

    .line 251
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnDock()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->isActivatedOnSleep()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public isActivatedOnDock()Z
    .locals 2

    .line 380
    iget-boolean v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnDockByDefault:Z

    const-string/jumbo v1, "screensaver_activate_on_dock"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isActivatedOnSleep()Z
    .locals 2

    .line 390
    iget-boolean v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsActivatedOnSleepByDefault:Z

    const-string/jumbo v1, "screensaver_activate_on_sleep"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 2

    .line 371
    iget-boolean v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamsEnabledByDefault:Z

    const-string/jumbo v1, "screensaver_enabled"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public launchSettings(Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V
    .locals 1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p0, v0

    const-string v0, "launchSettings(%s)"

    .line 432
    invoke-static {v0, p0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 433
    iget-object p0, p2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-nez p0, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    iget-object p2, p2, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    .line 437
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p2, 0x10800000

    .line 438
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 440
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public preview(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string/jumbo v1, "preview(%s)"

    .line 447
    invoke-static {v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 452
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Landroid/service/dreams/IDreamManager;->testDream(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to preview "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DreamBackend"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setActivatedOnDock(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 385
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "setActivatedOnDock(%s)"

    invoke-static {v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "screensaver_activate_on_dock"

    .line 386
    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/dream/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setActivatedOnSleep(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 395
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "setActivatedOnSleep(%s)"

    invoke-static {v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "screensaver_activate_on_sleep"

    .line 396
    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/dream/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setActiveDream(Landroid/content/ComponentName;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string/jumbo v3, "setActiveDream(%s)"

    .line 408
    invoke-static {v3, v1}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-array v0, v0, [Landroid/content/ComponentName;

    aput-object p1, v0, v2

    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 413
    :cond_1
    invoke-interface {p0, v0}, Landroid/service/dreams/IDreamManager;->setDreamComponents([Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to set active dream to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DreamBackend"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setComplicationEnabled(IZ)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/android/settingslib/dream/DreamBackend;->mSupportedComplications:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getEnabledComplications()Ljava/util/Set;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 316
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 321
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 323
    invoke-static {v0}, Lcom/android/settingslib/dream/DreamBackend;->convertToString(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "screensaver_enabled_complications"

    .line 321
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 375
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "setEnabled(%s)"

    invoke-static {v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "screensaver_enabled"

    .line 376
    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/dream/DreamBackend;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setWhenToDream(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 258
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settingslib/dream/DreamBackend;->setEnabled(Z)V

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 272
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnDock(Z)V

    .line 273
    invoke-virtual {p0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnSleep(Z)V

    goto :goto_1

    .line 267
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnDock(Z)V

    .line 268
    invoke-virtual {p0, v0}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnSleep(Z)V

    goto :goto_1

    .line 262
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnDock(Z)V

    .line 263
    invoke-virtual {p0, v1}, Lcom/android/settingslib/dream/DreamBackend;->setActivatedOnSleep(Z)V

    :goto_1
    return-void
.end method

.method public startDreaming()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "startDreaming()"

    .line 459
    invoke-static {v1, v0}, Lcom/android/settingslib/dream/DreamBackend;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 460
    iget-object p0, p0, Lcom/android/settingslib/dream/DreamBackend;->mDreamManager:Landroid/service/dreams/IDreamManager;

    if-nez p0, :cond_0

    return-void

    .line 464
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/service/dreams/IDreamManager;->dream()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DreamBackend"

    const-string v1, "Failed to dream"

    .line 466
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
