.class public final Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final callbacks:Ljava/util/List;

.field public isEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$SettingsObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->callbacks:Ljava/util/List;

    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$SettingsObserver;->uri:Landroid/net/Uri;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$SettingsObserver;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object p1, v0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper$SettingsObserver;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->callbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->callbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->isEnabled:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;->onSatelliteModeChanged(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final removeCallback(Lcom/android/systemui/statusbar/policy/SatelliteModeObserver$SatelliteModeCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->callbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/SatelliteModeObserverHelper;->callbacks:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
