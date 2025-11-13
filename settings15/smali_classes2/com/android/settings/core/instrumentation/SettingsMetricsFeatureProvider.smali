.class public Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;
.super Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->installLogWriters()V

    return-void
.end method


# virtual methods
.method public final varargs action(Landroid/content/Context;I[Landroid/util/Pair;)V
    .locals 1

    const-string p1, "SettingsMetricsFeature"

    const-string v0, "action(Pair<Integer, Object>... taggedData) is deprecated, Use action(int, int, int, String, int) instead."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    invoke-interface {p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(I[Landroid/util/Pair;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public installLogWriters()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    new-instance v1, Lcom/android/settings/core/instrumentation/StatsLogWriter;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    new-instance v0, Lcom/android/settings/core/instrumentation/SettingsEventLogWriter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
