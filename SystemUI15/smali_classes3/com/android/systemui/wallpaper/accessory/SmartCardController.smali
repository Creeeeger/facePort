.class public final Lcom/android/systemui/wallpaper/accessory/SmartCardController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final context:Landroid/content/Context;

.field public mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

.field public final pluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

.field public final settingObserver:Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;

.field private final settingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/pluginlock/PluginWallpaperManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->settingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iput-object p3, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p4, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->pluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    const-string p1, "SmartCardController"

    const-string p2, "init"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->updateState(Z)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;-><init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;-><init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->settingObserver:Lcom/android/systemui/wallpaper/accessory/SmartCardController$settingObserver$1;

    return-void
.end method

.method public static decodeHex(Ljava/lang/String;)[B
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "["

    invoke-static {p0, v2, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "]"

    invoke-static {p0, v2, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, " "

    invoke-static {p0, v2, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p0, v0, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2}, Lkotlin/text/CharsKt__CharJVMKt;->checkRadix(I)V

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->byteValue()B

    move-result v3

    add-int/lit8 v4, v2, 0x1

    aput-byte v3, p0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_1

    :catch_0
    new-array p0, v1, [B

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final onDetached()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "smart_card_wallpaper_uri"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    if-nez v0, :cond_0

    move-object v0, v3

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const-string v5, "SmartCardController"

    if-lez v4, :cond_1

    const-string v4, "onDetached: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.samsung.dressroom.intent.action.SMART_CARD_DETACHED"

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->smartCardServiceStart(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v3, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const-string p0, "onDetached, ignore"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final sendUpdateState(JZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;-><init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    const v1, 0x134b17e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, v1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final smartCardServiceStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "smartCardServiceStart, "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartCardController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.samsung.android.app.dressroom"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "URI"

    invoke-static {p2}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->decodeHex(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;-><init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    :cond_0
    iget-object p2, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->mainHandler:Lcom/android/systemui/wallpaper/accessory/SmartCardController$getMainHandler$1;

    new-instance v0, Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController$smartCardServiceStart$2$1;-><init>(Lcom/android/systemui/wallpaper/accessory/SmartCardController;Landroid/content/Intent;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "smartCardServiceStart, error: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final updateState(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->updateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isUserUnlocked$1()Z

    move-result v0

    const-string v1, "SmartCardController"

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateState cancelled, user is not unlocked"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    iget-object v0, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "accessory_cover_uri"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "updateState: "

    invoke-static {v4, v0, v1}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->pluginWallpaperManager:Lcom/android/systemui/pluginlock/PluginWallpaperManager;

    invoke-interface {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isDynamicWallpaperEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1}, Lcom/android/systemui/pluginlock/PluginWallpaperManager;->isServiceWallpaperApplied()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v5

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "onRemoveContent: "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    if-eqz v2, :cond_3

    const-string p1, "onRemoveContent, start service: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "com.samsung.dressroom.intent.action.SMART_CARD_REMOVE_CONTENT"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->smartCardServiceStart(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "smart_card_wallpaper_uri"

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v4, ""

    if-nez p1, :cond_5

    move-object p1, v4

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string p1, "onAttached, ignore same uri"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    const-string v5, "Saved uri is not empty "

    const-string v6, ", Let\'s detach first"

    invoke-static {v5, p1, v6, v1}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "com.samsung.dressroom.intent.action.SMART_CARD_DETACHED"

    invoke-virtual {p0, v5, p1}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->smartCardServiceStart(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v4, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_9

    const-string p1, "onAttached, start service: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string p1, "com.samsung.dressroom.intent.action.SMART_CARD_ATTACHED"

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->smartCardServiceStart(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->onDetached()V

    :cond_9
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2

    :cond_a
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/accessory/SmartCardController;->onDetached()V

    :cond_b
    return-void

    :cond_c
    const-string/jumbo p0, "updateState cancelled, setup wizard is not completed"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
