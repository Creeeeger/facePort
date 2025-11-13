.class Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;
.super Ljava/lang/Object;
.source "InteractionJankMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/jank/InteractionJankMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackerResult"
.end annotation


# instance fields
.field private blacklist mResult:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->mResult:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResult(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;->mResult:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/jank/InteractionJankMonitor$TrackerResult;-><init>()V

    return-void
.end method
