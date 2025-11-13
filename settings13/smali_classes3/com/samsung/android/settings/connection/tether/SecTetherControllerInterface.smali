.class public interface abstract Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;
.super Ljava/lang/Object;
.source "SecTetherControllerInterface.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SecTetherControllerInterface"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract onDataSaverChanged(Z)V
.end method

.method public startProvisioningIfNecessary(Lcom/samsung/android/settings/connection/tether/SecTetherSettings;I)V
    .locals 6

    .line 26
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sput p2, Lcom/samsung/android/settings/connection/tether/SecTetherSettings;->sTetherChoice:I

    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10700f5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 31
    aget-object v2, p0, v1

    const/4 v3, 0x1

    aget-object v4, p0, v3

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    sget-object v2, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " : Provision pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Provision activity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "TETHER_TYPE"

    .line 33
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    sget-object p0, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;->TAG:Ljava/lang/String;

    const-string p1, "startProvisioningIfNecessary: Activity Not Found"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/settings/connection/tether/SecTetherControllerInterface;->startTethering()V

    :goto_0
    return-void
.end method

.method public abstract startTethering()V
.end method

.method public abstract updateController()V
.end method
