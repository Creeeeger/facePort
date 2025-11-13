.class public final Lcom/samsung/android/settings/accessibility/bixby/action/visibility/AddColorFilterAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final COLORS:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;-><init>()V

    const-string v10, "Magenta"

    const-string v11, "Violet"

    const-string v0, "Blue"

    const-string v1, "Azure"

    const-string v2, "Cyan"

    const-string v3, "SpringGreen"

    const-string v4, "Green"

    const-string v5, "ChartreuseGreen"

    const-string v6, "Yellow"

    const-string v7, "Orange"

    const-string v8, "Red"

    const-string v9, "Rose"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/AddColorFilterAction;->COLORS:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final doChangeAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 12

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->unit:Ljava/lang/String;

    const-string v1, "Opacity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "color_lens_opacity"

    const/4 v2, 0x2

    const-string v3, "fail"

    const-string v4, "AddColorFilterAction"

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v5, "Increase"

    iget-object v6, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->level:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "Maximum"

    const/16 v8, 0x8

    const-string/jumbo v9, "success"

    if-eqz v5, :cond_3

    if-ne v0, v8, :cond_0

    :goto_0
    move-object v3, v7

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v0, v0, 0x1

    if-le v0, v8, :cond_2

    :cond_1
    :goto_1
    move-object v3, v9

    goto/16 :goto_6

    :cond_2
    move v8, v0

    goto :goto_1

    :cond_3
    const-string v5, "Decrease"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v10, "Minimum"

    const/4 v11, 0x0

    if-eqz v5, :cond_6

    if-nez v0, :cond_4

    :goto_2
    move-object v3, v10

    :goto_3
    move v8, v11

    goto :goto_6

    :cond_4
    add-int/lit8 v8, v0, -0x1

    if-gez v8, :cond_1

    :cond_5
    move-object v3, v9

    goto :goto_3

    :cond_6
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v0, :cond_5

    goto :goto_2

    :cond_7
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-ne v0, v8, :cond_1

    goto :goto_0

    :cond_8
    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->levelValue:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    const-string/jumbo v5, "undefined"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-gt p2, v8, :cond_b

    if-gez p2, :cond_9

    goto :goto_5

    :cond_9
    if-ne v0, p2, :cond_a

    const-string v3, "already_set"

    :goto_4
    move v8, p2

    goto :goto_6

    :cond_a
    move v8, p2

    goto :goto_1

    :cond_b
    :goto_5
    const-string v0, "invalid value"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_c
    const-string p2, "Level is wrong"

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_6
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v1, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ColorLens Opacity : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Result : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_e
    const-string p2, "Unit is wrong"

    invoke-static {v4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "result"

    invoke-virtual {p0, p2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "levelValue"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final doEnableAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;Z)Landroid/os/Bundle;
    .locals 0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-nez p3, :cond_0

    sget-object p2, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "color_lens_switch"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo p1, "result"

    const-string/jumbo p2, "success"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public final doGetCurrentStatus(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->doGetCurrentStatus(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "color_lens_opacity"

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "levelValue"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final doGetExclusivePopup(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 7

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const v0, 0x7f14097c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1409b1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "greyscale_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    const-string v6, "color_blind"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v4, v5

    :cond_1
    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, ""

    const-string v0, "false"

    goto :goto_2

    :cond_3
    :goto_1
    const v2, 0x7f142c72

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "true"

    :goto_2
    const-string v1, "description"

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "result"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final doSetAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "color_lens_type"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const-string v5, "color_lens_switch"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/AddColorFilterAction;->COLORS:[Ljava/lang/String;

    const-string v8, ""

    if-eqz v6, :cond_0

    aget-object v4, v7, v4

    iget-object v6, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->menuValue:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p0, "already_set"

    goto :goto_1

    :cond_0
    array-length v4, v7

    invoke-static {v3, v4}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v6, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/AddColorFilterAction$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, p2}, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/AddColorFilterAction$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/visibility/AddColorFilterAction;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)V

    invoke-interface {v4, v6}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    const-string/jumbo v4, "success"

    if-ne p0, p2, :cond_1

    const-string p0, "AddColorFilterAction"

    const-string p2, "menuValue is wrong value"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "fail"

    goto :goto_0

    :cond_1
    invoke-static {v1, v2, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object p0, v4

    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "color_blind"

    invoke-static {v1, p2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setColorAdjustment(Landroid/content/Context;)V

    :cond_2
    sget-object p2, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p2, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "color_lens_opacity"

    const/4 v1, 0x2

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    :cond_3
    :goto_1
    const-string/jumbo p1, "result"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "levelValue"

    invoke-virtual {v0, p0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getControllerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.vision.controllers.ColorLensPreferenceController"

    return-object p0
.end method

.method public final getDestinationFragment()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.vision.color.ColorLensFragment"

    return-object p0
.end method

.method public final getTitleRes()I
    .locals 0

    const p0, 0x7f1409b1

    return p0
.end method
