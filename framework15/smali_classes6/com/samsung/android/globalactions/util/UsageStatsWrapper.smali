.class public Lcom/samsung/android/globalactions/util/UsageStatsWrapper;
.super Ljava/lang/Object;
.source "UsageStatsWrapper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UsageStatsWrapper"


# instance fields
.field private blacklist mAppUsageStats:Landroid/app/usage/IUsageStatsManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/util/UsageStatsWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/util/UsageStatsWrapper;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v0, "usagestats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactions/util/UsageStatsWrapper;->mAppUsageStats:Landroid/app/usage/IUsageStatsManager;

    return-void
.end method

.method private blacklist dump(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public blacklist restartDump(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[restart]"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/globalactions/util/UsageStatsWrapper;->dump(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist shutdownDump(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[shutdown]"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/globalactions/util/UsageStatsWrapper;->dump(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
