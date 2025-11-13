.class public interface abstract Lcom/android/systemui/util/settings/SettingsProxy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->$$INSTANCE:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    sput-object v0, Lcom/android/systemui/util/settings/SettingsProxy;->Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    return-void
.end method

.method public static parseFloat(Ljava/lang/String;F)F
    .locals 1

    sget-object v0, Lcom/android/systemui/util/settings/SettingsProxy;->Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->parseFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public static parseFloatOrThrow(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/util/settings/SettingsProxy;->Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->parseFloatOrThrow(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static parseLongOrThrow(Ljava/lang/String;Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/util/settings/SettingsProxy;->Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->parseLongOrThrow(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseLongOrUseDefault(Ljava/lang/String;J)J
    .locals 1

    sget-object v0, Lcom/android/systemui/util/settings/SettingsProxy;->Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->parseLongOrUseDefault(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public getBool(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBool(Ljava/lang/String;Z)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract getContentResolver()Landroid/content/ContentResolver;
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/util/settings/SettingsProxy;->Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->parseFloatOrThrow(Ljava/lang/String;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/util/settings/SettingsProxy;->Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    invoke-virtual {p1, p0, p2}, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->parseFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

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

.method public getInt(Ljava/lang/String;I)I
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/util/settings/SettingsProxy;->Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->parseLongOrThrow(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/util/settings/SettingsProxy;->Companion:Lcom/android/systemui/util/settings/SettingsProxy$Companion;

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/systemui/util/settings/SettingsProxy$Companion;->parseLongOrUseDefault(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public abstract getString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getUriFor(Ljava/lang/String;)Landroid/net/Uri;
.end method

.method public putBool(Ljava/lang/String;Z)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->putInt(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public putFloat(Ljava/lang/String;F)Z
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public putInt(Ljava/lang/String;I)Z
    .locals 0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public putLong(Ljava/lang/String;J)Z
    .locals 0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract putString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end method

.method public registerContentObserverSync(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public registerContentObserverSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 3

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SP#registerObserver#["

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

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

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

.method public registerContentObserverSync(Ljava/lang/String;Landroid/database/ContentObserver;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public registerContentObserverSync(Ljava/lang/String;ZLandroid/database/ContentObserver;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public unregisterContentObserverSync(Landroid/database/ContentObserver;)V
    .locals 2

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SP#unregisterObserver"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/android/systemui/util/settings/SettingsProxy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

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
