.class Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$NonByPassingAppsFilter;
.super Ljava/lang/Object;
.source "AddZenByPassingAppsSettings.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonByPassingAppsFilter"
.end annotation


# instance fields
.field private mBackEnd:Lcom/android/settings/notification/NotificationBackend;

.field final synthetic this$0:Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$NonByPassingAppsFilter;->this$0:Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p2, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$NonByPassingAppsFilter;->mBackEnd:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method private hasNonBypassingChannels(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$NonByPassingAppsFilter;->mBackEnd:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/notification/NotificationBackend;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 222
    iget-object p0, p0, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$NonByPassingAppsFilter;->mBackEnd:Lcom/android/settings/notification/NotificationBackend;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2

    .line 211
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_0

    .line 212
    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 214
    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isAutoDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 215
    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isManualDisabled(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/notification/zen/AddZenByPassingAppsSettings$NonByPassingAppsFilter;->hasNonBypassingChannels(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public init()V
    .locals 0

    return-void
.end method
