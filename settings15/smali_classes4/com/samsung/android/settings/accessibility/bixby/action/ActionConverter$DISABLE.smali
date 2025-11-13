.class final enum Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public static $r8$lambda$sPvglS0ey0XlsSZN6X36PC3QdVo(Ljava/lang/String;Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;)Z
    .locals 0

    iget-object p1, p1, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;

    const-string/jumbo v1, "viv.accessibilityApp.DisableAccessibilityMenu"

    const-string v2, "DISABLE_ACCESSIBILITY_MENU"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;

    const-string/jumbo v2, "viv.accessibilityApp.TurnOffFlashNotification"

    const-string v3, "TURN_OFF_FLASH_NOTIFICATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    filled-new-array {v0, v1}, [Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;->$VALUES:[Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;->$VALUES:[Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;

    return-object v0
.end method
