.class public final Lcom/samsung/android/settings/usefulfeature/labs/appallowedoncoverscreen/AppAllowedOnCoverScreenSettings$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/picker/widget/AppPickerState$OnStateChangeListener;


# virtual methods
.method public final onStateAllChanged(Z)V
    .locals 0

    return-void
.end method

.method public final onStateChanged(Landroidx/picker/model/AppInfo;Z)V
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    iget-object p2, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroidx/picker/model/AppInfo;->user:I

    invoke-interface {p0, p2, p1}, Landroid/app/IActivityTaskManager;->setCoverLauncherPackageEnabled(Ljava/lang/String;I)I

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    iget-object p2, p1, Landroidx/picker/model/AppInfo;->packageName:Ljava/lang/String;

    iget p1, p1, Landroidx/picker/model/AppInfo;->user:I

    invoke-interface {p0, p2, p1}, Landroid/app/IActivityTaskManager;->setCoverLauncherPackageDisabled(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can not set app enable/disable : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppsAllowedOnCoverScreenSettings"

    invoke-static {p1, p0}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
