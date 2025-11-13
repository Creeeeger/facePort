.class public final Lcom/android/settingslib/applications/ApplicationsState$12;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState$12;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$12()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$18()V
    .locals 0

    return-void
.end method

.method private final init$com$android$settingslib$applications$ApplicationsState$23()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 4

    iget p0, p0, Lcom/android/settingslib/applications/ApplicationsState$12;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hideInQuietMode:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p0, p1}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v1, p1}, Lcom/android/settingslib/applications/AppUtils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0

    :pswitch_0
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-nez p0, :cond_4

    iget-boolean p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hideInQuietMode:Z

    if-nez p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget-boolean p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hideInQuietMode:Z

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_3

    :cond_6
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v1, 0x80

    invoke-static {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_7

    :goto_2
    move v0, v1

    goto :goto_3

    :cond_7
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    iget-boolean p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    if-eqz p0, :cond_9

    goto :goto_2

    :cond_9
    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result p0

    if-eqz p0, :cond_a

    iget-boolean p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isHomeApp:Z

    if-eqz p0, :cond_a

    goto :goto_2

    :cond_a
    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final init()V
    .locals 0

    iget p0, p0, Lcom/android/settingslib/applications/ApplicationsState$12;->$r8$classId:I

    return-void
.end method

.method public final refreshAppEntryOnRebuild(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Z)V
    .locals 0

    iget p0, p0, Lcom/android/settingslib/applications/ApplicationsState$12;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iput-boolean p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hideInQuietMode:Z

    return-void

    :pswitch_0
    iput-boolean p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hideInQuietMode:Z

    return-void

    :pswitch_1
    iput-boolean p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hideInQuietMode:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
