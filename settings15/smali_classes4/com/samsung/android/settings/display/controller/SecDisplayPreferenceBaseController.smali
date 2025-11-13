.class public abstract Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field public final mBaseObserver:Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController$1;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mPreferenceKey:Ljava/lang/String;

.field public mUriList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController$1;-><init>(Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mBaseObserver:Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController$1;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    iput-object p2, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mPreferenceKey:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public abstract getUriListRequiringObservation()Ljava/util/ArrayList;
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->updatePreference$12()V

    return-void
.end method

.method public onStart()V
    .locals 5
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->getUriListRequiringObservation()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mUriList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mPreferenceKey:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string/jumbo p0, "null"

    :cond_0
    const-string/jumbo v0, "registerObserver() mUriList is null - key = "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecDisplayPreferenceBaseController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mBaseObserver:Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController$1;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onStop()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mBaseObserver:Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public abstract updatePreference$12()V
.end method
