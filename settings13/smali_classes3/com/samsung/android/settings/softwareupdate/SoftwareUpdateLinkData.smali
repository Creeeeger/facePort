.class public Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;
.super Ljava/lang/Object;
.source "SoftwareUpdateLinkData.java"


# instance fields
.field private final intent:Landroid/content/Intent;

.field private final packageEnabled:Z

.field private final softwareUpdateVariant:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

.field private final topLevelKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->get(Landroid/content/Context;)Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    move-result-object p1

    const/4 v1, 0x1

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->intent()Landroid/content/Intent;

    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->topLevelKey()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v1, 0x0

    const-string v2, "SoftwareUpdateLinkData"

    const-string v3, "failed to initialize"

    .line 38
    invoke-static {v2, v3, p1}, Lcom/samsung/android/settings/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v0

    move-object v2, p1

    .line 41
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;->softwareUpdateVariant:Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    .line 42
    iput-boolean v1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;->packageEnabled:Z

    .line 43
    iput-object v2, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;->intent:Landroid/content/Intent;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;->topLevelKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fotaPackageEnabled()Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;->packageEnabled:Z

    return p0
.end method

.method public intent()Landroid/content/Intent;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method public topLevelKey()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLinkData;->topLevelKey:Ljava/lang/String;

    return-object p0
.end method
