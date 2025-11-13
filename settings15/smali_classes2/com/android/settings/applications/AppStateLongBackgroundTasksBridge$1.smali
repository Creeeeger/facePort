.class public final Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# virtual methods
.method public final filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 0

    iget-object p0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of p1, p0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;

    iget-boolean p0, p0, Lcom/android/settings/applications/AppStateLongBackgroundTasksBridge$LongBackgroundTasksState;->mPermissionRequested:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final init()V
    .locals 0

    return-void
.end method
