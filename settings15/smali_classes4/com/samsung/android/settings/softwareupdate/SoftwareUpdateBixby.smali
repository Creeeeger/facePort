.class public final Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateBixby;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final packageEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;-><init>(Landroid/content/Context;)V

    iget-object p1, v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;->intent:Landroid/content/Intent;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SoftwareUpdateBixby"

    const-string v1, "failed to initialize"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateBixby;->intent:Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateBixby;->packageEnabled:Z

    return-void
.end method
