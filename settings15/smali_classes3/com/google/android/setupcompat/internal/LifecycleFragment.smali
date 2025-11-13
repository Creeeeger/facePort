.class public final Lcom/google/android/setupcompat/internal/LifecycleFragment;
.super Landroid/app/Fragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public durationInNanos:J

.field public metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

.field public startInNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->durationInNanos:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method


# virtual methods
.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "ScreenDuration"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/setupcompat/logging/MetricKey;->get(Landroid/app/Activity;Ljava/lang/String;)Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    return-void
.end method

.method public final onDetach()V
    .locals 6

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->durationInNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget p0, Lcom/google/android/setupcompat/logging/SetupMetricsLogger;->$r8$clinit:I

    const-string p0, "Context cannot be null."

    invoke-static {v0, p0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "Timer name cannot be null."

    invoke-static {v1, p0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string v4, "Duration cannot be negative."

    invoke-static {v4, p0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1}, Lcom/google/android/setupcompat/logging/MetricKey;->fromMetricKey(Lcom/google/android/setupcompat/logging/MetricKey;)Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "MetricKey_bundle"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "timeMillis"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->logMetricEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public final onPause()V
    .locals 6

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-wide v0, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->durationInNanos:J

    sget-object v2, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    invoke-interface {v2}, Lcom/google/android/setupcompat/internal/Ticker;->read()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->startInNanos:J

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->durationInNanos:J

    return-void
.end method

.method public final onResume()V
    .locals 8

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    invoke-interface {v0}, Lcom/google/android/setupcompat/internal/Ticker;->read()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->startInNanos:J

    new-instance v6, Landroid/os/PersistableBundle;

    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    const-string v0, "onScreenResume"

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "ScreenActivity"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/google/android/setupcompat/logging/MetricKey;->get(Landroid/app/Activity;Ljava/lang/String;)Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object v5

    sget-object p0, Lcom/google/android/setupcompat/logging/CustomEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    sget-object v7, Landroid/os/PersistableBundle;->EMPTY:Landroid/os/PersistableBundle;

    new-instance p0, Lcom/google/android/setupcompat/logging/CustomEvent;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v2, Lcom/google/android/setupcompat/internal/ClockProvider;->ticker:Lcom/google/android/setupcompat/internal/Ticker;

    invoke-interface {v2}, Lcom/google/android/setupcompat/internal/Ticker;->read()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v6}, Lcom/google/android/setupcompat/internal/PersistableBundles;->assertIsValid(Landroid/os/PersistableBundle;)V

    invoke-static {v7}, Lcom/google/android/setupcompat/internal/PersistableBundles;->assertIsValid(Landroid/os/PersistableBundle;)V

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/setupcompat/logging/CustomEvent;-><init>(JLcom/google/android/setupcompat/logging/MetricKey;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    invoke-static {v0, p0}, Lcom/google/android/setupcompat/logging/SetupMetricsLogger;->logCustomEvent(Landroid/content/Context;Lcom/google/android/setupcompat/logging/CustomEvent;)V

    return-void
.end method
