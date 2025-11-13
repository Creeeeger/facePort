.class public interface abstract Lcom/android/systemui/util/settings/UserSettingsProxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/settings/SettingsProxy;


# virtual methods
.method public getBool(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getBoolForUser(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getBool(Ljava/lang/String;Z)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getBoolForUser(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public getBoolForUser(Ljava/lang/String;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBoolForUser(Ljava/lang/String;ZI)Z
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFloatForUser(Ljava/lang/String;FI)F
    .locals 0

    invoke-interface {p0, p1, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/util/settings/SettingsProxy;->Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->parseFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getFloatForUser(Ljava/lang/String;I)F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/android/systemui/util/settings/SettingsProxy;->Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->parseFloatOrThrow(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public getIntForUser(Ljava/lang/String;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance p0, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {p0, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getIntForUser(Ljava/lang/String;II)I
    .locals 0

    invoke-interface {p0, p1, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p2
.end method

.method public getLongForUser(Ljava/lang/String;I)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/android/systemui/util/settings/SettingsProxy;->Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->parseLongOrThrow(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLongForUser(Ljava/lang/String;JI)J
    .locals 0

    invoke-interface {p0, p1, p4}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/util/settings/SettingsProxy;->Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->parseLongOrUseDefault(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getRealUserHandle(I)I
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getUserTracker()Lcom/android/systemui/settings/UserTracker;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    :goto_0
    return p1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getStringForUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getStringForUser(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public getUserId()I
    .locals 0

    invoke-interface {p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result p0

    return p0
.end method

.method public abstract getUserTracker()Lcom/android/systemui/settings/UserTracker;
.end method

.method public putBool(Ljava/lang/String;Z)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putBoolForUser(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public putBoolForUser(Ljava/lang/String;ZI)Z
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putIntForUser(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public putFloatForUser(Ljava/lang/String;FI)Z
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putInt(Ljava/lang/String;I)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putIntForUser(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public putIntForUser(Ljava/lang/String;II)Z
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putLongForUser(Ljava/lang/String;JI)Z
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2, p4}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public abstract putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method public abstract putStringForUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z
.end method

.method public registerContentObserverForUserSync(Landroid/net/Uri;Landroid/database/ContentObserver;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerContentObserverForUserSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .locals 3

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "USP#registerObserver#["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {p0, p4}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getRealUserHandle(I)I

    move-result p0

    invoke-virtual {v1, p1, p2, p3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_2
    throw p0
.end method

.method public registerContentObserverForUserSync(Ljava/lang/String;Landroid/database/ContentObserver;I)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerContentObserverForUserSync(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerContentObserverSync(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, p2, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    return-void
.end method

.method public registerContentObserverSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 1

    invoke-interface {p0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getUserId()I

    move-result v0

    invoke-interface {p0, p1, p2, p3, v0}, Lcom/android/systemui/util/settings/UserSettingsProxy;->registerContentObserverForUserSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "userId cannot be set in interface, use setter from an implementation instead."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
