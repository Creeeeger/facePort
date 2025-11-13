.class public abstract Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SecDisplayPreferenceBaseController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field private mBaseObserver:Landroid/database/ContentObserver;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public mPreferenceKey:Ljava/lang/String;

.field private mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance p1, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController$1;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController$1;-><init>(Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mBaseObserver:Landroid/database/ContentObserver;

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 59
    :cond_0
    iput-object p3, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mPreferenceKey:Ljava/lang/String;

    .line 60
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private registerObserver()V
    .locals 5

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->getUriListRequiringObservation()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mUriList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerObserver() mUriList is null - key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mPreferenceKey:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecDisplayPreferenceBaseController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
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

    .line 100
    iget-object v2, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mBaseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private unRegisterObserver()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mUriList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->mBaseObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getUriListRequiringObservation()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->updatePreference(Landroid/net/Uri;)V

    return-void
.end method

.method public onStart()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->registerObserver()V

    return-void
.end method

.method public onStop()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/settings/display/controller/SecDisplayPreferenceBaseController;->unRegisterObserver()V

    return-void
.end method

.method public abstract updatePreference(Landroid/net/Uri;)V
.end method
