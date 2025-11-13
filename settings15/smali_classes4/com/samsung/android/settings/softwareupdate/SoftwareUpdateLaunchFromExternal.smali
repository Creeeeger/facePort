.class public final Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->get(Landroid/content/Context;)Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->intent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    invoke-virtual {p1}, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateVariant;->topLevelKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const v0, 0x10008000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SoftwareUpdateLaunchFromExternal"

    const-string v1, "failed to initialize"

    invoke-static {v0, v1, p1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/samsung/android/settings/softwareupdate/SoftwareUpdateLaunchFromExternal;->intent:Landroid/content/Intent;

    return-void
.end method
