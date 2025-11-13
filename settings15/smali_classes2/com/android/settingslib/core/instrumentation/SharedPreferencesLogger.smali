.class public final Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/SharedPreferences;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mMetricCategory:I

.field public final mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field public final mPreferenceKeySet:Ljava/util/Set;

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/core/instrumentation/SettingsMetricsFeatureProvider;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->mTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iput p4, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->mMetricCategory:I

    new-instance p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->mPreferenceKeySet:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    new-instance v0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger$EditorLogger;-><init>(Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;)V

    return-object v0
.end method

.method public final getAll()Ljava/util/Map;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 0

    return p2
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 0

    return p2
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 0

    return p2
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 0

    return-wide p2
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public final getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    return-object p2
.end method

.method public logPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget v1, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->mMetricCategory:I

    const-string p0, ":"

    invoke-static {p1, p0, p2}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/16 v2, 0x355

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(IIIILjava/lang/String;)V

    return-void
.end method

.method public final logValue(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->mTag:Ljava/lang/String;

    const-string v1, "/"

    invoke-static {v0, v1, p2}, Landroidx/apppickerview/features/applabel/AbstractAppLabelMapFactory$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->mPreferenceKeySet:Ljava/util/Set;

    check-cast p3, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->mPreferenceKeySet:Ljava/util/Set;

    check-cast p0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    instance-of p3, p1, Ljava/lang/Long;

    const/high16 v0, -0x80000000

    const v1, 0x7fffffff

    if-eqz p3, :cond_3

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long p3, v2, v4

    if-lez p3, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, -0x80000000

    cmp-long p3, v1, v3

    if-gez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    instance-of p3, p1, Ljava/lang/Integer;

    if-eqz p3, :cond_4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_4
    instance-of p3, p1, Ljava/lang/Boolean;

    if-eqz p3, :cond_5

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_1

    :cond_5
    instance-of p3, p1, Ljava/lang/Float;

    if-eqz p3, :cond_8

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p3, 0x4f000000

    cmpl-float p3, p1, p3

    if-lez p3, :cond_6

    goto :goto_0

    :cond_6
    const/high16 p3, -0x31000000

    cmpg-float p3, p1, p3

    if-gez p3, :cond_7

    goto :goto_1

    :cond_7
    float-to-int v0, p1

    goto :goto_1

    :cond_8
    instance-of p3, p1, Ljava/lang/String;

    const-string v0, "Tried to log unloggable object="

    const-string v1, "SharedPreferencesLogger"

    if-eqz p3, :cond_9

    :try_start_0
    move-object p3, p1

    check-cast p3, Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object p1, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->mMetricsFeature:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget p0, p0, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->mMetricCategory:I

    invoke-virtual {p1, p0, v0, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->changed(IILjava/lang/String;)V

    return-void

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/settingslib/core/instrumentation/SharedPreferencesLogger;->logValue(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public final registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    return-void
.end method

.method public final unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0

    return-void
.end method
