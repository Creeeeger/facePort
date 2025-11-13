.class public final Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final COLOR_CORRECTION_OPTION:[Ljava/lang/String;

.field public final mAccessibilityDaltonizerKeyToValueMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;->mAccessibilityDaltonizerKeyToValueMap:Ljava/util/Map;

    const-string v0, "Tritan"

    const-string v1, "Grayscale"

    const-string v2, "Deutan"

    const-string v3, "Protan"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;->COLOR_CORRECTION_OPTION:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addCustomAction(Ljava/util/Map;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;I)V

    const-string/jumbo v1, "viv.accessibilityApp.GetColorAdjustmentCurrentValue"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;I)V

    const-string/jumbo p0, "viv.accessibilityApp.GetPersonalizedColorSetUpStatus"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final doChangeAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 12

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->unit:Ljava/lang/String;

    const-string v1, "Intensity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "accessibility_display_daltonizer_saturation_level"

    const/4 v2, 0x7

    const-string v3, "fail"

    const-string v4, "ColorCorrectionAction"

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

    const/16 v8, 0xa

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

    const-string v0, "ColorCorrection Intensity : "

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

    const-string p2, "accessibility_display_daltonizer_enabled"

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo p1, "success"

    goto :goto_0

    :cond_0
    const-string p1, "fail"

    :goto_0
    const-string/jumbo p2, "result"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final doGetCurrentStatus(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 3

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->menuValue:Ljava/lang/String;

    invoke-static {p2, v2}, Lcom/samsung/android/settings/accessibility/bixby/BixbyUtils;->getStateAlreadyChecked(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_display_daltonizer_saturation_level"

    const/4 v1, 0x7

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "result"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "levelValue"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final doGetExclusivePopup(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 5

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x7f1400cb

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1409b1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "color_lens_switch"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const v0, 0x7f142c72

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "true"

    goto :goto_0

    :cond_0
    const-string v0, "false"

    const/4 p1, 0x0

    :goto_0
    const-string/jumbo v1, "result"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final doGetSupportFeature(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportColorCorrection(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ColorCorrection"

    const-string v2, "accessibilityMenu"

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;->doGetSupportFeature(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p1, "result"

    const-string p2, "false"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final doSetAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 8

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;->getColorCorrectionType(Landroid/content/Context;)I

    move-result v2

    const-string v3, "accessibility_display_daltonizer_enabled"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;->COLOR_CORRECTION_OPTION:[Ljava/lang/String;

    const-string v7, "00"

    if-eqz v5, :cond_0

    aget-object v2, v6, v2

    iget-object v5, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->menuValue:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "already_set"

    goto/16 :goto_3

    :cond_0
    array-length v2, v6

    invoke-static {v4, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v5, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p2}, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)V

    invoke-interface {v2, v5}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    const-string/jumbo v2, "success"

    if-ne p0, p2, :cond_1

    const-string p0, "ColorCorrectionAction"

    const-string p2, "menuValue is wrong value"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 p2, 0x3

    if-gt p0, p2, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v5, 0x7f0300bd

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    if-ltz p0, :cond_2

    array-length v5, p2

    if-ge p0, v5, :cond_2

    aget p0, p2, p0

    goto :goto_0

    :cond_2
    const/16 p0, 0xc

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v5, "accessibility_display_daltonizer"

    invoke-static {p2, v5, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object p0, v2

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, "fail"

    :goto_2
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "color_lens_switch"

    invoke-static {v1, p2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    sget-object v1, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    sget-object p2, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "accessibility_display_daltonizer_saturation_level"

    const/4 v1, 0x7

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    :cond_5
    :goto_3
    const-string/jumbo p1, "result"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "levelValue"

    invoke-virtual {v0, p0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getColorCorrectionType(Landroid/content/Context;)I
    .locals 6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;->mAccessibilityDaltonizerKeyToValueMap:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0300bd

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;->mAccessibilityDaltonizerKeyToValueMap:Ljava/util/Map;

    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorCorrectionAction;->mAccessibilityDaltonizerKeyToValueMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final getControllerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.android.settings.accessibility.DaltonizerPreferenceController"

    return-object p0
.end method

.method public final getPunchoutIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.android.settings.ACCESSIBILITY_COLOR_SPACE_SETTINGS"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
