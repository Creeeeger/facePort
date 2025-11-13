.class public final Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsMetricsFeatureProvider;
.super Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public logWriter:Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsLogWriter;


# virtual methods
.method public final action(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsMetricsFeatureProvider;->logWriter:Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsLogWriter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsLogWriter;->refineCategory(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p2, p3, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    :cond_0
    return-void
.end method

.method public final actionBackground(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsMetricsFeatureProvider;->logWriter:Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsLogWriter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsLogWriter;->refineCategory(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-static {p0, p2, p3, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    :cond_0
    return-void
.end method

.method public final installLogWriters()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;->installLogWriters()V

    new-instance v0, Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsLogWriter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsMetricsFeatureProvider;->logWriter:Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsLogWriter;

    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final visible(Landroid/content/Context;III)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsMetricsFeatureProvider;->logWriter:Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsLogWriter;

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/settings/accessibility/base/logging/A11ySettingsLogWriter;->visible(III)V

    return-void
.end method
