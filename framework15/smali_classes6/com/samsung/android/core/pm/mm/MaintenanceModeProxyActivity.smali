.class public Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;
.super Landroid/app/Activity;
.source "MaintenanceModeProxyActivity.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MaintenanceMode"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsTablet:Z

.field private blacklist mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mIsTablet:Z

    return-void
.end method

.method private blacklist showToast(I)V
    .locals 5

    const-string v0, ""

    const v1, 0x10407a8

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x10407a9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x10407b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x10407b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x104079e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x10407ac

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    iget-boolean v2, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mIsTablet:Z

    if-eqz v2, :cond_0

    const v2, 0x10407ab

    goto :goto_0

    :cond_0
    const v2, 0x10407aa

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist startIntroActivity()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/core/pm/mm/MaintenanceModeIntroActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start Intro activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MaintenanceMode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mResources:Landroid/content/res/Resources;

    invoke-static {}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mIsTablet:Z

    iget-object v0, p0, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/core/pm/mm/MaintenanceModeUtils;->checkRequiredConditions(Landroid/content/Context;Z)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->showToast(I)V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->finish()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->startIntroActivity()V

    invoke-virtual {p0}, Lcom/samsung/android/core/pm/mm/MaintenanceModeProxyActivity;->finish()V

    return-void
.end method
