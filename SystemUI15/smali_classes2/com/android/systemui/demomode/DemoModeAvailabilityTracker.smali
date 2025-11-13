.class public abstract Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final allowedObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$allowedObserver$1;

.field public final context:Landroid/content/Context;

.field public final globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public isDemoModeAvailable:Z

.field public isInDemoMode:Z

.field public final onObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string/jumbo p1, "sysui_tuner_demo_on"

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isInDemoMode:Z

    const-string/jumbo p1, "sysui_demo_allowed"

    invoke-interface {p2, p1, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->isDemoModeAvailable:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$allowedObserver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$allowedObserver$1;-><init>(Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->allowedObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$allowedObserver$1;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;-><init>(Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->onObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;

    return-void
.end method


# virtual methods
.method public abstract onDemoModeAvailabilityChanged()V
.end method

.method public abstract onDemoModeFinished()V
.end method

.method public abstract onDemoModeStarted()V
.end method

.method public final startTracking()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sysui_demo_allowed"

    iget-object v2, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->globalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    invoke-interface {v2, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->allowedObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$allowedObserver$1;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "sysui_tuner_demo_on"

    invoke-interface {v2, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/demomode/DemoModeAvailabilityTracker;->onObserver:Lcom/android/systemui/demomode/DemoModeAvailabilityTracker$onObserver$1;

    invoke-virtual {v0, v1, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
