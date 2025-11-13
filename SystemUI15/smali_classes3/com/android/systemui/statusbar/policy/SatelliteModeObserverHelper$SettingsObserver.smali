.class public final Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$SettingsObserver;->context:Landroid/content/Context;

    const-string/jumbo p1, "satellite_mode_enabled"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$SettingsObserver;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$SettingsObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "satellite_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p1, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->isEnabled:Z

    const-string p1, "SatelliteModeObserver"

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->isEnabled:Z

    const-string v1, "onChange: "

    invoke-static {v1, p1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->callbacks:Ljava/util/List;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->isEnabled:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;->onSatelliteModeChanged(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1

    throw p0
.end method
