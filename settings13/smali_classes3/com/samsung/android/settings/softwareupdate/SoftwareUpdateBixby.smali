.class Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateBixby;
.super Ljava/lang/Object;
.source "SoftwareUpdateBixby.java"


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final packageEnabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_0
    new-instance v0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;->intent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "SoftwareUpdateBixby"

    const-string v3, "failed to initialize"

    .line 30
    invoke-static {v2, v3, p1}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v0

    move v0, v1

    .line 33
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateBixby;->intent:Landroid/content/Intent;

    .line 34
    iput-boolean v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateBixby;->packageEnabled:Z

    return-void
.end method


# virtual methods
.method fotaPackageEnabled()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateBixby;->packageEnabled:Z

    return p0
.end method

.method intent()Landroid/content/Intent;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateBixby;->intent:Landroid/content/Intent;

    return-object p0
.end method
