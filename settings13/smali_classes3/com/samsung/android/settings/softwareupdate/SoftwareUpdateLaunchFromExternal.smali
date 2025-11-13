.class public Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;
.super Ljava/lang/Object;
.source "SoftwareUpdateLaunchFromExternal.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;->context:Landroid/content/Context;

    .line 24
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->get(Landroid/content/Context;)Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->intent()Landroid/content/Intent;

    move-result-object p1

    const v0, 0x10008000

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    const-string v1, "SoftwareUpdateLaunchFromExternal"

    const-string v2, "failed to initialize"

    .line 31
    invoke-static {v1, v2, p1}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v0

    .line 33
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public intent()Landroid/content/Intent;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public launch()V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
