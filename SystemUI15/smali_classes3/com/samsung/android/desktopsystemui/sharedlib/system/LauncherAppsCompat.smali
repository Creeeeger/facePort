.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/LauncherAppsCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final mWrapper:Landroid/content/pm/LauncherApps;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LauncherAppsCompat;->mWrapper:Landroid/content/pm/LauncherApps;

    return-void
.end method


# virtual methods
.method public getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/LauncherAppsCompat;->mWrapper:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/LauncherApps$AppUsageLimit;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;

    invoke-direct {p1, p0}, Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;-><init>(Landroid/content/pm/LauncherApps$AppUsageLimit;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
