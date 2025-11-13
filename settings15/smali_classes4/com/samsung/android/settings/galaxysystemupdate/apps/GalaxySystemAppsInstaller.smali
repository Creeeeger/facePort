.class public final Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public apexPath:Landroid/net/Uri;

.field public context:Landroid/content/Context;

.field public handler:Landroid/os/Handler;

.field public listeners:Ljava/util/List;

.field public packageInstaller:Landroid/content/pm/PackageInstaller;

.field public packageInstallerListener:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$PackageInstallerListener;


# virtual methods
.method public final notifyResult(Z)V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
