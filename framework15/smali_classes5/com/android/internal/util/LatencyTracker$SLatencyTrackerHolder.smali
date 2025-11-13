.class final Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;
.super Ljava/lang/Object;
.source "LatencyTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/LatencyTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SLatencyTrackerHolder"
.end annotation


# static fields
.field private static final blacklist sLatencyTracker:Lcom/android/internal/util/LatencyTracker;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsLatencyTracker()Lcom/android/internal/util/LatencyTracker;
    .locals 1

    sget-object v0, Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/util/LatencyTracker;

    invoke-direct {v0}, Lcom/android/internal/util/LatencyTracker;-><init>()V

    sput-object v0, Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    sget-object v0, Lcom/android/internal/util/LatencyTracker$SLatencyTrackerHolder;->sLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/util/LatencyTracker;->startListeningForLatencyTrackerConfigChanges()V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
