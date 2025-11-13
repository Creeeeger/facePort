.class public final Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final DEBUG:Z

.field public static final FILTER_BATTERY_OPTIMIZED_APPS:Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;

.field public static final FILTER_BATTERY_RESTRICTED_APPS:Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;

.field public static final FILTER_BATTERY_UNRESTRICTED_APPS:Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;

.field static final MODE_OPTIMIZED:I = 0x2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MODE_RESTRICTED:I = 0x3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MODE_UNKNOWN:I = 0x0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MODE_UNRESTRICTED:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mContext:Landroid/content/Context;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPowerAllowlistBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->DEBUG:Z

    new-instance v0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->FILTER_BATTERY_UNRESTRICTED_APPS:Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;

    new-instance v0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->FILTER_BATTERY_OPTIMIZED_APPS:Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;

    new-instance v0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;-><init>(I)V

    sput-object v0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->FILTER_BATTERY_RESTRICTED_APPS:Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$1;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/AppOpsManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p1, p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->mPowerAllowlistBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    return-void
.end method

.method public static getAppBatteryUsageDetailsMode(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)I
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$AppBatteryUsageDetails;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$AppBatteryUsageDetails;

    iget v0, p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$AppBatteryUsageDetails;->mMode:I

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final loadAllExtraInfo()V
    .locals 4

    const-string v0, "AppStateAppBatteryUsageBridge"

    sget-boolean v1, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v2, "Start loadAllExtraInfo()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    if-eqz v1, :cond_1

    const-string p0, "End loadAllExtraInfo()"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->mPowerAllowlistBackend:Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;

    invoke-virtual {v0, p3, p2}, Lcom/android/settingslib/fuelgauge/PowerAllowlistBackend;->isAllowlisted(ILjava/lang/String;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x46

    invoke-virtual {p0, v1, p3, p2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    sget-boolean p3, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge;->DEBUG:Z

    const-string v1, ""

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    if-nez v0, :cond_0

    const/4 p0, 0x3

    if-eqz p3, :cond_5

    const-string v1, "RESTRICTED"

    goto :goto_3

    :cond_0
    if-nez p0, :cond_4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    if-eqz p3, :cond_3

    if-eqz v0, :cond_2

    const-string p0, "UNRESTRICTED"

    :goto_1
    move-object v1, p0

    goto :goto_2

    :cond_2
    const-string p0, "OPTIMIZED"

    goto :goto_1

    :cond_3
    :goto_2
    move p0, v2

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :cond_5
    :goto_3
    if-eqz p3, :cond_6

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Pkg: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mode: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AppStateAppBatteryUsageBridge"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance p2, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$AppBatteryUsageDetails;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput p0, p2, Lcom/android/settings/applications/AppStateAppBatteryUsageBridge$AppBatteryUsageDetails;->mMode:I

    iput-object p2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
