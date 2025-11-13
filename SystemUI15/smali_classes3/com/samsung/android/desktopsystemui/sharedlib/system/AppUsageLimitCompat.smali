.class public Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final mWrapper:Landroid/content/pm/LauncherApps$AppUsageLimit;


# direct methods
.method public constructor <init>(Landroid/content/pm/LauncherApps$AppUsageLimit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;->mWrapper:Landroid/content/pm/LauncherApps$AppUsageLimit;

    return-void
.end method


# virtual methods
.method public getTotalUsageLimit()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;->mWrapper:Landroid/content/pm/LauncherApps$AppUsageLimit;

    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$AppUsageLimit;->getTotalUsageLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUsageRemaining()J
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/desktopsystemui/sharedlib/system/AppUsageLimitCompat;->mWrapper:Landroid/content/pm/LauncherApps$AppUsageLimit;

    invoke-virtual {p0}, Landroid/content/pm/LauncherApps$AppUsageLimit;->getUsageRemaining()J

    move-result-wide v0

    return-wide v0
.end method
