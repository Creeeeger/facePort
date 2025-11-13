.class Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$1;
.super Ljava/lang/Object;
.source "DeleteGalaxySystemAppsFragment.java"

# interfaces
.implements Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->downgradeGalaxySystemApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$1;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressUpdate(I)V
    .locals 2

    .line 166
    invoke-static {}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressUpdate : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResult(Z)V
    .locals 3

    .line 160
    invoke-static {}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment$1;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;

    invoke-static {p0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;->-$$Nest$mdowngradeGalaxySystemApps(Lcom/samsung/android/settings/galaxysystemupdate/apps/DeleteGalaxySystemAppsFragment;)V

    return-void
.end method
