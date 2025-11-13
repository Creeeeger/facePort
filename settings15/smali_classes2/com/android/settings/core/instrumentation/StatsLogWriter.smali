.class public final Lcom/android/settings/core/instrumentation/StatsLogWriter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/LogWriter;


# virtual methods
.method public final action(IIIILjava/lang/String;)V
    .locals 8

    int-to-long v3, p4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->getElapsedTime(J)J

    move-result-wide v5

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIIJJLjava/lang/String;)V

    return-void
.end method

.method public final action(ILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/StatsLogWriter;->action(IIIILjava/lang/String;)V

    return-void
.end method

.method public final varargs action(I[Landroid/util/Pair;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/StatsLogWriter;->action(IIIILjava/lang/String;)V

    return-void
.end method

.method public final action(Landroid/content/Context;II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/StatsLogWriter;->action(IIIILjava/lang/String;)V

    return-void
.end method

.method public final action(Landroid/content/Context;IZ)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/core/instrumentation/StatsLogWriter;->action(IIIILjava/lang/String;)V

    return-void
.end method

.method public final changed(IILjava/lang/String;)V
    .locals 8

    int-to-long v3, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->getElapsedTime(J)J

    move-result-wide v5

    const/16 v1, 0x355

    const/4 v2, 0x0

    move v0, p1

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIIJJLjava/lang/String;)V

    return-void
.end method

.method public final clicked(ILjava/lang/String;)V
    .locals 10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->getElapsedTime(J)J

    move-result-wide v7

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/16 v3, 0x33e

    move v2, p1

    move-object v9, p2

    invoke-static/range {v2 .. v9}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIIJJLjava/lang/String;)V

    return-void
.end method

.method public final hidden(II)V
    .locals 8

    int-to-long v3, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->getElapsedTime(J)J

    move-result-wide v5

    const/4 v1, 0x2

    const-string v7, ""

    const/4 v0, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIIJJLjava/lang/String;)V

    return-void
.end method

.method public final visible(III)V
    .locals 8

    int-to-long v3, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settings/core/instrumentation/ElapsedTimeUtils;->getElapsedTime(J)J

    move-result-wide v5

    const/4 v1, 0x1

    const-string v7, ""

    move v0, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lcom/android/settings/core/instrumentation/SettingsStatsLog;->write(IIIJJLjava/lang/String;)V

    return-void
.end method
