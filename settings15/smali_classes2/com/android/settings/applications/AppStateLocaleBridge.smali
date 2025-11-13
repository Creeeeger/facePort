.class public final Lcom/android/settings/applications/AppStateLocaleBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final FILTER_APPS_LOCALE:Lcom/android/settings/applications/AppStateLocaleBridge$1;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mUserIdToAppInfoByProfiles:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/AppStateLocaleBridge$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateLocaleBridge;->FILTER_APPS_LOCALE:Lcom/android/settings/applications/AppStateLocaleBridge$1;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Landroid/os/UserManager;)V
    .locals 2

    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/applications/AppStateLocaleBridge;->mUserIdToAppInfoByProfiles:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/settings/applications/AppStateLocaleBridge;->mContext:Landroid/content/Context;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p1

    invoke-static {p4, p1}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    const/16 p3, -0x2710

    if-eq p1, p3, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iget-object p4, p0, Lcom/android/settings/applications/AppStateLocaleBridge;->mUserIdToAppInfoByProfiles:Ljava/util/Map;

    check-cast p4, Landroid/util/ArrayMap;

    invoke-virtual {p4, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/android/settings/applications/AppStateLocaleBridge;->mUserIdToAppInfoByProfiles:Ljava/util/Map;

    new-instance v0, Lcom/android/settings/applications/AppStateLocaleBridge$AppInfoByProfiles;

    iget-object v1, p0, Lcom/android/settings/applications/AppStateLocaleBridge;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p3}, Lcom/android/settings/applications/AppStateLocaleBridge$AppInfoByProfiles;-><init>(Landroid/content/Context;I)V

    check-cast p4, Landroid/util/ArrayMap;

    invoke-virtual {p4, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getAppInfo(I)Lcom/android/settings/applications/AppStateLocaleBridge$AppInfoByProfiles;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppStateLocaleBridge;->mUserIdToAppInfoByProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/AppStateLocaleBridge;->mUserIdToAppInfoByProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/AppStateLocaleBridge$AppInfoByProfiles;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settings/applications/AppStateLocaleBridge$AppInfoByProfiles;

    iget-object v1, p0, Lcom/android/settings/applications/AppStateLocaleBridge;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/applications/AppStateLocaleBridge$AppInfoByProfiles;-><init>(Landroid/content/Context;I)V

    iget-object p0, p0, Lcom/android/settings/applications/AppStateLocaleBridge;->mUserIdToAppInfoByProfiles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public final loadAllExtraInfo()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/AppStateLocaleBridge;->getAppInfo(I)Lcom/android/settings/applications/AppStateLocaleBridge$AppInfoByProfiles;

    move-result-object v3

    iget-object v4, v3, Lcom/android/settings/applications/AppStateLocaleBridge$AppInfoByProfiles;->mContextAsUser:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Lcom/android/settings/applications/AppStateLocaleBridge$AppInfoByProfiles;->mListInfos:Ljava/util/List;

    invoke-static {v4, v5, v3}, Lcom/android/settings/applications/AppLocaleUtil;->canDisplayLocaleUi(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    iput-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/AppStateLocaleBridge;->getAppInfo(I)Lcom/android/settings/applications/AppStateLocaleBridge$AppInfoByProfiles;

    move-result-object p0

    iget-object p2, p0, Lcom/android/settings/applications/AppStateLocaleBridge$AppInfoByProfiles;->mContextAsUser:Landroid/content/Context;

    iget-object p3, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/settings/applications/AppStateLocaleBridge$AppInfoByProfiles;->mListInfos:Ljava/util/List;

    invoke-static {p2, p3, p0}, Lcom/android/settings/applications/AppLocaleUtil;->canDisplayLocaleUi(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    iput-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
