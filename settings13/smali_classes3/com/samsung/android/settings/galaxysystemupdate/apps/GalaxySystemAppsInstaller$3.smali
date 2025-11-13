.class Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$3;
.super Ljava/lang/Object;
.source "GalaxySystemAppsInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->notifyProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;I)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$3;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

    iput p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$3;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 367
    iget-object v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$3;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

    invoke-static {v0}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$fgetlisteners(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$Listener;

    .line 368
    iget v2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$3;->val$value:I

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$Listener;->onProgressUpdate(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
