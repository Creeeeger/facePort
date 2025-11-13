.class public final synthetic Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

    iput-boolean p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

    iget-boolean p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v1, v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->$r8$clinit:I

    const-string/jumbo v3, "onResult : "

    const-string v4, "DeleteGalaxySystemAppsFragment"

    invoke-static {v3, v4, p0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, v2, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$1;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;

    invoke-virtual {v3}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->downgradeGalaxySystemApps()V

    iget-object v3, v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->listeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, v0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
