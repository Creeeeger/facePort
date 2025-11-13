.class public final Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;

.field public final onChanged:Lkotlin/jvm/functions/Function1;

.field public settingValue:Z

.field public final systemSettingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->systemSettingName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->onChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->updateValue(Z)V

    return-void
.end method

.method public final updateValue(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->systemSettingName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->settingValue:Z

    if-eq p1, v2, :cond_1

    iget-object p1, p0, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->onChanged:Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/audio/soundcraft/utils/SystemBooleanSettingObserver;->settingValue:Z

    const-string/jumbo p0, "updateValue : settingValue="

    const-string p1, "SoundCraft.SystemBooleanSettingObserver"

    invoke-static {p0, p1, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
