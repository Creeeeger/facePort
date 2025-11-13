.class public final Lcom/android/settingslib/location/InjectedSetting$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mClassName:Ljava/lang/String;

.field public mIconId:I

.field public mPackageName:Ljava/lang/String;

.field public mSettingsActivity:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUserHandle:Landroid/os/UserHandle;

.field public mUserRestriction:Ljava/lang/String;


# virtual methods
.method public final build()Lcom/android/settingslib/location/InjectedSetting;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/location/InjectedSetting$Builder;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/location/InjectedSetting$Builder;->mClassName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/location/InjectedSetting$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/location/InjectedSetting$Builder;->mSettingsActivity:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/settingslib/location/InjectedSetting;

    invoke-direct {v0, p0}, Lcom/android/settingslib/location/InjectedSetting;-><init>(Lcom/android/settingslib/location/InjectedSetting$Builder;)V

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "SettingsInjector"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal setting specification: package="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settingslib/location/InjectedSetting$Builder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/location/InjectedSetting$Builder;->mClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/location/InjectedSetting$Builder;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", settingsActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settingslib/location/InjectedSetting$Builder;->mSettingsActivity:Ljava/lang/String;

    invoke-static {v1, p0, v0}, Lcom/android/settings/MainClear$$ExternalSyntheticOutline0;->m$1(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
