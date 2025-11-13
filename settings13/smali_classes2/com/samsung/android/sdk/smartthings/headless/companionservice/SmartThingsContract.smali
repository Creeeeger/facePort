.class final Lcom/samsung/android/sdk/smartthings/headless/companionservice/SmartThingsContract;
.super Ljava/lang/Object;
.source "SmartThingsContract.java"


# direct methods
.method static getFlagsToBindService()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method static getIntentToBindService(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.smartthings.headless.action.BIND_COMPANION_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.smartthings.headless"

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "from"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
