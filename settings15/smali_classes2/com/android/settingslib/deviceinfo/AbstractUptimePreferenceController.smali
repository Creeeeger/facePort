.class public abstract Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field static final KEY_UPTIME:Ljava/lang/String; = "up_time"


# instance fields
.field public mHandler:Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;

.field public mUptime:Landroidx/preference/Preference;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "up_time"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mUptime:Landroidx/preference/Preference;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "up_time"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onStop()V
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;->mStatus:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;

    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->mHandler:Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController$MyHandler;

    const/16 v0, 0x1f4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
