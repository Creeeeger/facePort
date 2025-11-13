.class public final Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final bioFailUri:Landroid/net/Uri;

.field public final faceAcquireInfoUri:Landroid/net/Uri;

.field public final faceErrorsUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/keyguard/ActiveUnlockConfig;

.field public final unlockIntentLegacyUri:Landroid/net/Uri;

.field public final unlockIntentUri:Landroid/net/Uri;

.field public final unlockIntentWhenBiometricEnrolledUri:Landroid/net/Uri;

.field public final wakeUri:Landroid/net/Uri;

.field public final wakeupsConsideredUnlockIntentsUri:Landroid/net/Uri;

.field public final wakeupsToForceDismissKeyguardUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ActiveUnlockConfig;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iget-object p2, p1, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v0, "active_unlock_on_wake"

    invoke-interface {p2, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeUri:Landroid/net/Uri;

    const-string p2, "active_unlock_on_unlock_intent_legacy"

    iget-object p1, p1, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    invoke-interface {p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->unlockIntentLegacyUri:Landroid/net/Uri;

    const-string p2, "active_unlock_on_unlock_intent"

    invoke-interface {p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->unlockIntentUri:Landroid/net/Uri;

    const-string p2, "active_unlock_on_biometric_fail"

    invoke-interface {p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->bioFailUri:Landroid/net/Uri;

    const-string p2, "active_unlock_on_face_errors"

    invoke-interface {p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->faceErrorsUri:Landroid/net/Uri;

    const-string p2, "active_unlock_on_face_acquire_info"

    invoke-interface {p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->faceAcquireInfoUri:Landroid/net/Uri;

    const-string p2, "active_unlock_on_unlock_intent_when_biometric_enrolled"

    invoke-interface {p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->unlockIntentWhenBiometricEnrolledUri:Landroid/net/Uri;

    const-string p2, "active_unlock_wakeups_considered_unlock_intents"

    invoke-interface {p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeupsConsideredUnlockIntentsUri:Landroid/net/Uri;

    const-string p2, "active_unlock_wakeups_to_force_dismiss_keyguard"

    invoke-interface {p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeupsToForceDismissKeyguardUri:Landroid/net/Uri;

    return-void
.end method

.method public static processStringArray(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    if-eqz p0, :cond_1

    const-string/jumbo p2, "|"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p0, p2, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Passed an invalid setting="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActiveUnlockConfig"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public final onChange(ZLjava/util/Collection;II)V
    .locals 4

    iget-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object p3, p3, Lcom/android/keyguard/ActiveUnlockConfig;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p3

    if-eq p3, p4, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    if-nez p1, :cond_1

    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeUri:Landroid/net/Uri;

    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    :cond_1
    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object v1, p4, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v2, p4, Lcom/android/keyguard/ActiveUnlockConfig;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    const-string v3, "active_unlock_on_wake"

    invoke-interface {v1, v3, v0, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, p3, :cond_2

    move v1, p3

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    iput-boolean v1, p4, Lcom/android/keyguard/ActiveUnlockConfig;->requestActiveUnlockOnWakeup:Z

    :cond_3
    if-nez p1, :cond_4

    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->unlockIntentLegacyUri:Landroid/net/Uri;

    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    :cond_4
    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object v1, p4, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v2, p4, Lcom/android/keyguard/ActiveUnlockConfig;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    const-string v3, "active_unlock_on_unlock_intent_legacy"

    invoke-interface {v1, v3, v0, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, p3, :cond_5

    move v1, p3

    goto :goto_1

    :cond_5
    move v1, v0

    :goto_1
    iput-boolean v1, p4, Lcom/android/keyguard/ActiveUnlockConfig;->requestActiveUnlockOnUnlockIntentLegacy:Z

    :cond_6
    if-nez p1, :cond_7

    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->unlockIntentUri:Landroid/net/Uri;

    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_9

    :cond_7
    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object v1, p4, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v2, p4, Lcom/android/keyguard/ActiveUnlockConfig;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    const-string v3, "active_unlock_on_unlock_intent"

    invoke-interface {v1, v3, v0, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, p3, :cond_8

    move v1, p3

    goto :goto_2

    :cond_8
    move v1, v0

    :goto_2
    iput-boolean v1, p4, Lcom/android/keyguard/ActiveUnlockConfig;->requestActiveUnlockOnUnlockIntent:Z

    :cond_9
    if-nez p1, :cond_a

    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->bioFailUri:Landroid/net/Uri;

    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_c

    :cond_a
    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object v1, p4, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object v2, p4, Lcom/android/keyguard/ActiveUnlockConfig;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v2

    const-string v3, "active_unlock_on_biometric_fail"

    invoke-interface {v1, v3, v0, v2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result v1

    if-ne v1, p3, :cond_b

    goto :goto_3

    :cond_b
    move p3, v0

    :goto_3
    iput-boolean p3, p4, Lcom/android/keyguard/ActiveUnlockConfig;->requestActiveUnlockOnBioFail:Z

    :cond_c
    if-nez p1, :cond_d

    iget-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->faceErrorsUri:Landroid/net/Uri;

    invoke-interface {p2, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_e

    :cond_d
    iget-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object p4, p3, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p3, p3, Lcom/android/keyguard/ActiveUnlockConfig;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p3, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p3

    const-string v1, "active_unlock_on_face_errors"

    invoke-interface {p4, v1, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object p4, p4, Lcom/android/keyguard/ActiveUnlockConfig;->faceErrorsToTriggerBiometricFailOn:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p3, p4, v1}, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->processStringArray(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    :cond_e
    if-nez p1, :cond_f

    iget-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->faceAcquireInfoUri:Landroid/net/Uri;

    invoke-interface {p2, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_10

    :cond_f
    iget-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object p4, p3, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p3, p3, Lcom/android/keyguard/ActiveUnlockConfig;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p3, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p3

    const-string v1, "active_unlock_on_face_acquire_info"

    invoke-interface {p4, v1, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object p4, p4, Lcom/android/keyguard/ActiveUnlockConfig;->faceAcquireInfoToTriggerBiometricFailOn:Ljava/util/Set;

    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    invoke-static {p3, p4, v1}, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->processStringArray(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    :cond_10
    if-nez p1, :cond_11

    iget-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->unlockIntentWhenBiometricEnrolledUri:Landroid/net/Uri;

    invoke-interface {p2, p3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_12

    :cond_11
    iget-object p3, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object p4, p3, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p3, p3, Lcom/android/keyguard/ActiveUnlockConfig;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p3, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p3

    const-string v1, "active_unlock_on_unlock_intent_when_biometric_enrolled"

    invoke-interface {p4, v1, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object p4, p4, Lcom/android/keyguard/ActiveUnlockConfig;->onUnlockIntentWhenBiometricEnrolled:Ljava/util/Set;

    sget-object v1, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->NONE:Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;

    invoke-virtual {v1}, Lcom/android/keyguard/ActiveUnlockConfig$BiometricType;->getIntValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p3, p4, v1}, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->processStringArray(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    :cond_12
    const/16 p3, 0xc

    if-nez p1, :cond_13

    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeupsConsideredUnlockIntentsUri:Landroid/net/Uri;

    invoke-interface {p2, p4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_14

    :cond_13
    iget-object p4, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object v1, p4, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p4, p4, Lcom/android/keyguard/ActiveUnlockConfig;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p4, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p4

    const-string v2, "active_unlock_wakeups_considered_unlock_intents"

    invoke-interface {v1, v2, p4}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    iget-object v1, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object v1, v1, Lcom/android/keyguard/ActiveUnlockConfig;->wakeupsConsideredUnlockIntents:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p4, v1, v2}, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->processStringArray(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    :cond_14
    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->wakeupsToForceDismissKeyguardUri:Landroid/net/Uri;

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    :cond_15
    iget-object p1, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object p2, p1, Lcom/android/keyguard/ActiveUnlockConfig;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iget-object p1, p1, Lcom/android/keyguard/ActiveUnlockConfig;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p1

    const-string p4, "active_unlock_wakeups_to_force_dismiss_keyguard"

    invoke-interface {p2, p4, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->this$0:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object p0, p0, Lcom/android/keyguard/ActiveUnlockConfig;->wakeupsToForceDismissKeyguard:Ljava/util/Set;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/android/keyguard/ActiveUnlockConfig$settingsObserver$1;->processStringArray(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    :cond_16
    return-void
.end method
