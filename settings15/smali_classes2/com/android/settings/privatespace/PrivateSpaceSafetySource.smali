.class public abstract Lcom/android/settings/privatespace/PrivateSpaceSafetySource;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public static setSafetySourceData(Landroid/content/Context;Landroid/safetycenter/SafetyEvent;)V
    .locals 7

    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "PrivateSpaceSafetySrc"

    if-nez v0, :cond_0

    const-string p0, "Safety Center disabled"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {p0}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object v2

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/multiuser/Flags;->blockPrivateSpaceCreation()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->canAddPrivateProfile()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->doesPrivateSpaceExist()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Private Space not allowed for user "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/UserManager;->isMainUser()Z

    move-result v0

    if-nez v0, :cond_3

    const-string p0, "setSafetySourceData not main user"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    const-string v2, "AndroidPrivateSpace"

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/privatespace/PrivateSpaceAuthenticationActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setIdentifier(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    const/high16 v4, 0x4000000

    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v3, Landroid/safetycenter/SafetySourceStatus$Builder;

    const v4, 0x7f141d7e

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f141d7c

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x64

    invoke-direct {v3, v4, v5, v6}, Landroid/safetycenter/SafetySourceStatus$Builder;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v0}, Landroid/safetycenter/SafetySourceStatus$Builder;->setPendingIntent(Landroid/app/PendingIntent;)Landroid/safetycenter/SafetySourceStatus$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/safetycenter/SafetySourceStatus$Builder;->build()Landroid/safetycenter/SafetySourceStatus;

    move-result-object v0

    new-instance v3, Landroid/safetycenter/SafetySourceData$Builder;

    invoke-direct {v3}, Landroid/safetycenter/SafetySourceData$Builder;-><init>()V

    invoke-virtual {v3, v0}, Landroid/safetycenter/SafetySourceData$Builder;->setStatus(Landroid/safetycenter/SafetySourceStatus;)Landroid/safetycenter/SafetySourceData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/safetycenter/SafetySourceData$Builder;->build()Landroid/safetycenter/SafetySourceData;

    move-result-object v0

    const-string v3, "Setting safety source data"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2, v0, p1}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->setSafetySourceData(Landroid/content/Context;Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V

    return-void

    :cond_5
    :goto_1
    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p0, v2, v0, p1}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->setSafetySourceData(Landroid/content/Context;Ljava/lang/String;Landroid/safetycenter/SafetySourceData;Landroid/safetycenter/SafetyEvent;)V

    return-void
.end method
