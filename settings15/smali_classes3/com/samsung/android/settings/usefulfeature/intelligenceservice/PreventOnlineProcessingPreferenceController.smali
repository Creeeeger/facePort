.class public final Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0019\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0010\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u000fH\u0016J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u000e\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u000fJ\u0008\u0010\u001b\u001a\u00020\u0016H\u0016J\u0008\u0010\u001c\u001a\u00020\u0016H\u0016J\u0008\u0010\u001d\u001a\u00020\u0011H\u0016J\u0008\u0010\u001e\u001a\u00020\u0011H\u0016J\u0006\u0010\u001f\u001a\u00020\u0011J\u0010\u0010 \u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u0016H\u0016R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;",
        "Lcom/android/settings/core/TogglePreferenceController;",
        "Lcom/android/settingslib/core/lifecycle/LifecycleObserver;",
        "Lcom/android/settingslib/core/lifecycle/events/OnResume;",
        "Lcom/android/settingslib/core/lifecycle/events/OnPause;",
        "context",
        "Landroid/content/Context;",
        "preferenceKey",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "mPreference",
        "Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceSwitchPreferenceScreen;",
        "mPreventOnlineProcessingObserver",
        "Landroid/database/ContentObserver;",
        "mUserId",
        "",
        "displayPreference",
        "",
        "screen",
        "Landroidx/preference/PreferenceScreen;",
        "getAvailabilityStatus",
        "handlePreferenceTreeClick",
        "",
        "preference",
        "Landroidx/preference/Preference;",
        "init",
        "userId",
        "isChecked",
        "isControllable",
        "onPause",
        "onResume",
        "refreshPreferenceAsPerKnoxPolicy",
        "setChecked",
        "applications__sources__apps__SecSettings__android_common__SecSettings-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private mPreference:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceSwitchPreferenceScreen;

.field private mPreventOnlineProcessingObserver:Landroid/database/ContentObserver;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mUserId:I

    return-void
.end method

.method public static final synthetic access$getMPreference$p(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;)Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceSwitchPreferenceScreen;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mPreference:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceSwitchPreferenceScreen;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string/jumbo v0, "screen"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceSwitchPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mPreference:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceSwitchPreferenceScreen;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController$displayPreference$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController$displayPreference$1;-><init>(Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mPreventOnlineProcessingObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->refreshPreferenceAsPerKnoxPolicy()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "getExtras(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "USER_ID"

    iget v2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public final init(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mUserId:I

    return-void
.end method

.method public isChecked()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mUserId:I

    const-string v1, "prevent_online_processing"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mPreference:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mPreventOnlineProcessingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mPreventOnlineProcessingObserver:Landroid/database/ContentObserver;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->refreshPreferenceAsPerKnoxPolicy()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mPreference:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mPreventOnlineProcessingObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prevent_online_processing"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mPreventOnlineProcessingObserver:Landroid/database/ContentObserver;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v3, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mUserId:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserverAsUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;Landroid/os/UserHandle;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->refreshPreferenceAsPerKnoxPolicy()V

    :cond_1
    return-void
.end method

.method public final refreshPreferenceAsPerKnoxPolicy()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mUserId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy"

    const-string v3, "isIntelligenceOnlineProcessingAllowed"

    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mPreference:Lcom/samsung/android/settings/usefulfeature/intelligenceservice/SecIntelligenceSwitchPreferenceScreen;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "prevent_online_processing"

    iget p0, p0, Lcom/samsung/android/settings/usefulfeature/intelligenceservice/PreventOnlineProcessingPreferenceController;->mUserId:I

    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    int-to-long p0, p1

    const v0, 0x13881

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AI003"

    invoke-static {p0, p1, v2, v0, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
