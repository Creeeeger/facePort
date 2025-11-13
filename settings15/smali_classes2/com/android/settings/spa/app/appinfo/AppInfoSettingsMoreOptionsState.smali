.class public final Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final shouldShowAccessRestrictedSettings:Z

.field public final shownUninstallForAllUsers:Z

.field public final shownUninstallUpdates:Z


# direct methods
.method public constructor <init>(ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallUpdates:Z

    iput-boolean p2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallForAllUsers:Z

    iput-boolean p3, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shouldShowAccessRestrictedSettings:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;

    iget-boolean v1, p1, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallUpdates:Z

    iget-boolean v3, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallUpdates:Z

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallForAllUsers:Z

    iget-boolean v3, p1, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallForAllUsers:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shouldShowAccessRestrictedSettings:Z

    iget-boolean p1, p1, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shouldShowAccessRestrictedSettings:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallUpdates:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallForAllUsers:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shouldShowAccessRestrictedSettings:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppInfoSettingsMoreOptionsState(shownUninstallUpdates="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallUpdates:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shownUninstallForAllUsers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shownUninstallForAllUsers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowAccessRestrictedSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/spa/app/appinfo/AppInfoSettingsMoreOptionsState;->shouldShowAccessRestrictedSettings:Z

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
