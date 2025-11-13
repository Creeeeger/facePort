.class Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "GalaxySystemAppsInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->createSessionDowngrade()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

.field final synthetic val$sessionId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;I)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

    iput p2, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->val$sessionId:I

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 1

    .line 137
    iget v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->val$sessionId:I

    if-ne v0, p1, :cond_0

    .line 138
    invoke-static {}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->val$sessionId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " onActiveChanged : "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 1

    .line 130
    iget v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->val$sessionId:I

    if-ne v0, p1, :cond_0

    .line 131
    invoke-static {}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->val$sessionId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " onBadgingChanged"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onCreated(I)V
    .locals 1

    .line 123
    iget v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->val$sessionId:I

    if-ne v0, p1, :cond_0

    .line 124
    invoke-static {}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->val$sessionId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " onCreated"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onFinished(IZ)V
    .locals 2

    .line 152
    iget v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->val$sessionId:I

    if-ne v0, p1, :cond_0

    .line 153
    invoke-static {}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->val$sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " onFinished : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

    invoke-static {p1, p2}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$mnotifyResult(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;Z)V

    .line 155
    iget-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

    invoke-static {p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$fgetpackageInstaller(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;)Landroid/content/pm/PackageInstaller;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/pm/PackageInstaller;->unregisterSessionCallback(Landroid/content/pm/PackageInstaller$SessionCallback;)V

    :cond_0
    return-void
.end method

.method public onProgressChanged(IF)V
    .locals 2

    .line 144
    iget v0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->val$sessionId:I

    if-ne v0, p1, :cond_0

    .line 145
    invoke-static {}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->val$sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " onProgressChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller$1;->this$0:Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-static {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;->-$$Nest$mnotifyProgress(Lcom/samsung/android/settings/galaxysystemupdate/apps/GalaxySystemAppsInstaller;I)V

    :cond_0
    return-void
.end method
