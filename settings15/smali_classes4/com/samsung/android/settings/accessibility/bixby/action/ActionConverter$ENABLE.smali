.class final enum Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public static $r8$lambda$hsgX7AkMywH_SP79qLuWRgHpLsA(Ljava/lang/String;Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;)Z
    .locals 0

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    const-string/jumbo v1, "viv.accessibilityApp.EnableAccessibilityMenu"

    const-string v2, "ENABLE_ACCESSIBILITY_MENU"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    const-string/jumbo v2, "viv.accessibilityApp.TurnOnDirectAccessOptions"

    const-string v3, "TURN_ON_DIRECT_ACCESS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v2, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    const-string/jumbo v3, "viv.accessibilityApp.TurnOnFlashNotification"

    const-string v4, "TURN_ON_FLASH_NOTIFICATIONS"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v3, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    const-string/jumbo v4, "viv.accessibilityApp.TurnOnVoiceAssistant"

    const-string v5, "TURN_ON_VOICE_ASSISTANT"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v4, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    const-string/jumbo v5, "viv.accessibilityApp.TurnOnAccessibilityMenuWithConfirmation"

    const-string v6, "TURN_ON_WITH_CONFIRM"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v5, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    const-string/jumbo v6, "viv.accessibilityApp.TurnOnMuteAllSounds"

    const-string v7, "TURN_ON_MUTE_ALL_SOUNDS"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v6, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    const-string/jumbo v7, "viv.accessibilityApp.TurnOnSoundDetector"

    const-string v8, "TURN_ON_SOUND_DETECTOR"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array/range {v0 .. v6}, [Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;->$VALUES:[Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;->$VALUES:[Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    return-object v0
.end method
