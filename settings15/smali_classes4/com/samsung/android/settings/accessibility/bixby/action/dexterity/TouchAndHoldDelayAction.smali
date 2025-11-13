.class public final Lcom/samsung/android/settings/accessibility/bixby/action/dexterity/TouchAndHoldDelayAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final OPTION:[Ljava/lang/String;

.field public final OPTION_VALUE:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;-><init>()V

    const-string v0, "Medium"

    const-string v1, "Long"

    const-string v2, "VeryShort"

    const-string v3, "Short"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/dexterity/TouchAndHoldDelayAction;->OPTION:[Ljava/lang/String;

    const/16 v0, 0x3e8

    const/16 v1, 0x5dc

    const/16 v2, 0x12c

    const/16 v3, 0x1f4

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/dexterity/TouchAndHoldDelayAction;->OPTION_VALUE:[I

    return-void
.end method


# virtual methods
.method public final doSetAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->menuValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0x1f4

    const-string v3, "long_press_timeout"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/bixby/action/dexterity/TouchAndHoldDelayAction;->OPTION:[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget-object v4, v4, v2

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/dexterity/TouchAndHoldDelayAction;->OPTION_VALUE:[I

    aget p2, p0, v2

    if-ne p2, v1, :cond_0

    const-string p0, "already_set"

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    aget p0, p0, v2

    invoke-static {p1, v3, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo p0, "success"

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "fail"

    :goto_1
    const-string/jumbo p1, "result"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getControllerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.dexterity.controllers.TouchAndHoldPreferenceController"

    return-object p0
.end method

.method public final getDestinationFragment()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.dexterity.TouchAndHoldFragment"

    return-object p0
.end method

.method public final getTitleRes()I
    .locals 0

    const p0, 0x7f142f4e

    return p0
.end method
