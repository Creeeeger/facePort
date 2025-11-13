.class public abstract Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

.field public final mKey:Ljava/lang/String;

.field public mZenMode:Lcom/android/settings/notification/modes/ZenMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/notification/modes/ZenModesBackend;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    iput-object p2, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public final getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->getSummary(Lcom/android/settings/notification/modes/ZenMode;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSummary(Lcom/android/settings/notification/modes/ZenMode;)Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->isAvailable(Lcom/android/settings/notification/modes/ZenMode;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-static {}, Landroid/app/Flags;->modesUi()Z

    move-result p0

    return p0
.end method

.method public isAvailable(Lcom/android/settings/notification/modes/ZenMode;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final saveMode(Ljava/util/function/Function;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/modes/ZenModesBackend;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot save mode, it hasn\'t been loaded ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AbstractZenModePreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/notification/modes/ZenMode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p0, Lcom/android/settings/notification/modes/ZenMode;->mIsManualDnd:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {p1}, Landroid/service/notification/ZenModeConfig;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/notification/modes/ZenMode;->getPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/service/notification/ZenModeConfig;->toNotificationPolicy(Landroid/service/notification/ZenPolicy;)Landroid/app/NotificationManager$Policy;

    move-result-object p1

    iget-object v2, v0, Lcom/android/settings/notification/modes/ZenModesBackend;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, p1, v1}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;Z)V

    iget-object p1, v0, Lcom/android/settings/notification/modes/ZenModesBackend;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getDeviceEffects()Landroid/service/notification/ZenDeviceEffects;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->setManualZenRuleDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ZenModeBackend"

    const-string v0, "Error updating manual mode"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/android/settings/notification/modes/ZenModesBackend;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z

    :goto_0
    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final savePolicy(Ljava/util/function/Function;)Z
    .locals 1

    new-instance v0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Function;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->saveMode(Ljava/util/function/Function;)Z

    move-result p0

    return p0
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->mZenMode:Lcom/android/settings/notification/modes/ZenMode;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/notification/modes/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V

    :cond_0
    return-void
.end method

.method public abstract updateState(Landroidx/preference/Preference;Lcom/android/settings/notification/modes/ZenMode;)V
.end method
