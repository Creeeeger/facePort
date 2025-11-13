.class public abstract Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mLoggerWriters:Ljava/util/List;


# direct methods
.method public static getAttribution(Landroid/app/Activity;)I
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string v1, ":settings:source_metrics"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getMetricsCategory(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    return p0
.end method


# virtual methods
.method public final action(IIIILjava/lang/String;)V
    .locals 7

    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/settingslib/core/instrumentation/LogWriter;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(IIIILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public action(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public final action(Landroid/content/Context;II)V
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final action(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

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

    invoke-interface {p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final action(Landroid/content/Context;IZ)V
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->action(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs abstract action(Landroid/content/Context;I[Landroid/util/Pair;)V
.end method

.method public actionBackground(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public final changed(IILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/LogWriter;->changed(IILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final clicked(ILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->mLoggerWriters:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/instrumentation/LogWriter;

    invoke-interface {v0, p1, p2}, Lcom/android/settingslib/core/instrumentation/LogWriter;->clicked(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final logClickedPreference(Landroidx/preference/Preference;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logSettingsTileClick(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logStartedIntent(ILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logSettingsTileClick(ILjava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public final logSettingsTileClick(ILjava/lang/String;)Z
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->clicked(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final logSettingsTileClickWithProfile(ILjava/lang/String;Z)Z
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p2}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    if-eqz p3, :cond_1

    const-string p3, "/work"

    goto :goto_0

    :cond_1
    const-string p3, "/personal"

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->clicked(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final logStartedIntent(ILandroid/content/Intent;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->logSettingsTileClick(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public visible(Landroid/content/Context;III)V
    .locals 0

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

    invoke-interface {p1, p2, p3, p4}, Lcom/android/settingslib/core/instrumentation/LogWriter;->visible(III)V

    goto :goto_0

    :cond_0
    return-void
.end method
