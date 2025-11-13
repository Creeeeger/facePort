.class public final Lcom/samsung/android/settings/asbase/utils/SystemBooleanSettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final context:Landroid/content/Context;

.field public final onChanged:Lkotlin/jvm/functions/Function1;

.field public settingValue:Z

.field public final systemSettingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/asbase/audio/SecSoundEffectSoundController$$ExternalSyntheticLambda0;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/utils/SystemBooleanSettingObserver;->context:Landroid/content/Context;

    const-string p1, "buds_enable"

    iput-object p1, p0, Lcom/samsung/android/settings/asbase/utils/SystemBooleanSettingObserver;->systemSettingName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/asbase/utils/SystemBooleanSettingObserver;->onChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/asbase/utils/SystemBooleanSettingObserver;->updateValue()V

    return-void
.end method

.method public final updateValue()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/utils/SystemBooleanSettingObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/asbase/utils/SystemBooleanSettingObserver;->systemSettingName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/asbase/utils/SystemBooleanSettingObserver;->settingValue:Z

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/asbase/utils/SystemBooleanSettingObserver;->onChanged:Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-boolean v2, p0, Lcom/samsung/android/settings/asbase/utils/SystemBooleanSettingObserver;->settingValue:Z

    const-string/jumbo p0, "updateValue : settingValue="

    const-string v0, "SoundCraft.SystemBooleanSettingObserver"

    invoke-static {p0, v0, v2}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
