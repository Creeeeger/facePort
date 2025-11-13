.class public final Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$startActivityForCoverLauncher$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $packageName:Ljava/lang/String;

.field public final synthetic $profileId:I

.field public final synthetic $reason:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;


# direct methods
.method public constructor <init>(Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$startActivityForCoverLauncher$1;->this$0:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    iput-object p2, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$startActivityForCoverLauncher$1;->$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$startActivityForCoverLauncher$1;->$reason:Ljava/lang/String;

    iput p4, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$startActivityForCoverLauncher$1;->$profileId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$startActivityForCoverLauncher$1;->this$0:Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;

    iget-object v1, v1, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$startActivityForCoverLauncher$1;->$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$startActivityForCoverLauncher$1;->$reason:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$startActivityForCoverLauncher$1;->$profileId:I

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager;->startActivityForCoverLauncherAsUser(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/android/systemui/coverlauncher/utils/CoverLauncherPackageUtils$startActivityForCoverLauncher$1;->$packageName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to launch package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CoverLauncherPackageUtils"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
