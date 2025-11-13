.class public final Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;
.super Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final COLOR_ADUSTMENT_OPTION:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyControllerAction;-><init>()V

    const-string v0, "Tritan"

    const-string v1, "PersonalizedColor"

    const-string v2, "Grayscale"

    const-string v3, "Protan"

    const-string v4, "Deutan"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;->COLOR_ADUSTMENT_OPTION:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addCustomAction(Ljava/util/Map;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;I)V

    const-string/jumbo v1, "viv.accessibilityApp.GetColorAdjustmentCurrentValue"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;I)V

    const-string/jumbo p0, "viv.accessibilityApp.GetPersonalizedColorSetUpStatus"

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final doChangeAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 22

    move-object/from16 v0, p2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "SEC_FLOATING_FEATURE_LCD_SUPPORT_MDNIE_HW"

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->getFloatingFeatureBooleanValue(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "fail"

    const-string v4, "00"

    if-eqz v2, :cond_23

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "color_adjustment_type"

    const/4 v6, 0x2

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v5, 0x4

    const-string v6, "Unit is wrong"

    const-string v7, " Result : "

    const-string v8, "already_set"

    const-string/jumbo v9, "undefined"

    const-string v10, "Minimum"

    const-string v11, "Decrease"

    const-string v12, "Maximum"

    const-string v13, "Increase"

    const-string v14, "ColorAdjustmentAction"

    const-string v15, "Intensity"

    move-object/from16 p0, v3

    const-string/jumbo v3, "success"

    if-ne v2, v5, :cond_11

    iget-object v5, v0, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->unit:Ljava/lang/String;

    move-object/from16 v16, v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v17, v8

    const-string v8, "color_blind_user_parameter"

    move-object/from16 v18, v1

    const/4 v1, 0x0

    invoke-static {v4, v8, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move/from16 v20, v2

    const-string v2, "color_blind_test"

    move-object/from16 v21, v6

    const/4 v6, 0x0

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "adjustmentPersonalizedColor mUserParameter : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    const-string v0, "Personalize color is not tested, Can\'t change it"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_0
    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->level:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v5, 0x3dcccccd    # 0.1f

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v2, :cond_2

    cmpl-float v0, v4, v6

    if-nez v0, :cond_1

    :goto_0
    move v1, v6

    move-object v10, v12

    goto/16 :goto_4

    :cond_1
    add-float v1, v4, v5

    cmpl-float v0, v1, v6

    move-object v10, v3

    if-lez v0, :cond_f

    move v1, v6

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    cmpl-float v0, v4, v2

    if-nez v0, :cond_3

    move v1, v2

    goto/16 :goto_4

    :cond_3
    if-lez v0, :cond_4

    sub-float/2addr v4, v5

    cmpg-float v0, v4, v2

    if-gez v0, :cond_5

    :cond_4
    move v1, v2

    :goto_1
    move-object v10, v3

    goto/16 :goto_4

    :cond_5
    move-object v10, v3

    move v1, v4

    goto/16 :goto_4

    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    cmpl-float v0, v4, v2

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    move-object v10, v3

    :goto_2
    const/4 v1, 0x0

    goto :goto_4

    :cond_8
    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    cmpl-float v0, v4, v6

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move-object v12, v3

    goto :goto_0

    :cond_a
    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->levelValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    cmpl-float v1, v0, v6

    if-gtz v1, :cond_d

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_b

    goto :goto_3

    :cond_b
    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c23d70a    # 0.01f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_c

    move v1, v0

    move-object/from16 v10, v17

    goto :goto_4

    :cond_c
    move v1, v0

    goto :goto_1

    :cond_d
    :goto_3
    const-string v1, "adjustmentPersonalizedColor invalid value"

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p0

    move v1, v0

    goto :goto_4

    :cond_e
    const/4 v1, 0x0

    const-string v0, "adjustmentPersonalizedColor Level is wrong"

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v10, p0

    :cond_f
    :goto_4
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v8, v1}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adjustmentPersonalizedColor newFIntensity : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-static {v0, v7, v10, v14}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_10
    move-object/from16 v1, v21

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_11
    move-object/from16 v18, v1

    move/from16 v20, v2

    move-object/from16 v16, v4

    move-object v1, v6

    move-object/from16 v17, v8

    const/4 v6, 0x0

    const/4 v2, 0x1

    move/from16 v4, v20

    if-lt v4, v2, :cond_20

    const/4 v5, 0x3

    if-gt v4, v5, :cond_20

    iget-object v5, v0, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->unit:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v6, "predefined_color_blind_intensity"

    invoke-static {v8, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_12

    const-string v8, "00,00,00"

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v21, v1

    const-string v1, "adjustmentColor type : "

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " customIntensity : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ","

    invoke-virtual {v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    add-int/lit8 v5, v4, -0x1

    aget-object v8, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const-string v15, "adjustmentColor colorAdjustmentIntensity : "

    invoke-static {v8, v15, v14}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v15, v0, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->level:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move/from16 v20, v4

    const/16 v4, 0x18

    if-eqz v13, :cond_15

    if-ne v8, v4, :cond_13

    :goto_5
    move v0, v4

    move-object v10, v12

    goto/16 :goto_a

    :cond_13
    const/4 v13, 0x1

    add-int/lit8 v0, v8, 0x1

    if-le v0, v4, :cond_14

    move-object v10, v3

    move v0, v4

    goto :goto_a

    :cond_14
    :goto_6
    move-object v10, v3

    goto :goto_a

    :cond_15
    const/4 v13, 0x1

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    if-gtz v8, :cond_16

    :goto_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_16
    add-int/lit8 v0, v8, -0x1

    goto :goto_6

    :cond_17
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    if-nez v8, :cond_18

    goto :goto_7

    :cond_18
    move-object v10, v3

    goto :goto_7

    :cond_19
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    if-ne v8, v4, :cond_1a

    goto :goto_5

    :cond_1a
    move-object v12, v3

    goto :goto_5

    :cond_1b
    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->levelValue:Ljava/lang/String;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1e

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gt v0, v4, :cond_1d

    if-gez v0, :cond_1c

    goto :goto_8

    :cond_1c
    if-ne v8, v0, :cond_14

    move-object/from16 v10, v17

    goto :goto_a

    :cond_1d
    :goto_8
    const-string v4, "adjustmentColor invalid value"

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    move-object/from16 v10, p0

    goto :goto_a

    :cond_1e
    const/4 v0, 0x0

    goto :goto_9

    :goto_a
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%02d"

    invoke-static {v4, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v6, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adjustmentColor Intensity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v1, v7, v10, v14}, Lcom/android/settings/applications/AppStateClonedAppsBridge$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_1f
    move/from16 v20, v4

    move-object/from16 v0, v21

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_20
    move/from16 v20, v4

    :goto_b
    move-object/from16 v10, p0

    :cond_21
    :goto_c
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setColorAdjustment(Landroid/content/Context;)V

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getColorAdjustmentIntensity(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v10

    goto :goto_d

    :cond_22
    move-object v3, v10

    move-object/from16 v4, v16

    goto :goto_d

    :cond_23
    move-object/from16 v18, v1

    move-object/from16 p0, v3

    move-object/from16 v16, v4

    :goto_d
    const-string/jumbo v0, "result"

    move-object/from16 v1, v18

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "levelValue"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public final doEnableAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;Z)Landroid/os/Bundle;
    .locals 1

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    if-nez p3, :cond_0

    const-string p3, "SEC_FLOATING_FEATURE_LCD_SUPPORT_MDNIE_HW"

    invoke-static {p3}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->getFloatingFeatureBooleanValue(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "color_blind"

    const/4 v0, 0x0

    invoke-static {p2, p3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setColorAdjustment(Landroid/content/Context;)V

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
    .locals 5

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "SEC_FLOATING_FEATURE_LCD_SUPPORT_MDNIE_HW"

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->getFloatingFeatureBooleanValue(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "color_adjustment_type"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->getColorAdjustmentIntensity(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "color_blind"

    invoke-static {p1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_display_daltonizer_enabled"

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    const-string v0, ""

    :goto_1
    iget-object p1, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->menuValue:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/settings/accessibility/bixby/BixbyUtils;->getStateAlreadyChecked(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "result"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "levelValue"

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final doGetExclusivePopup(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 5

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v0, "SEC_FLOATING_FEATURE_LCD_SUPPORT_MDNIE_HW"

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->getFloatingFeatureBooleanValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const v1, 0x7f14097c

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

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->isSupportColorAdjustment(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "ColorAdjustment"

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
    .locals 11

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_MDNIE_HW"

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/AccessibilityRune;->getFloatingFeatureBooleanValue(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "fail"

    const-string v3, ""

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "color_adjustment_type"

    const/4 v5, 0x2

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const-string v7, "color_blind"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;->COLOR_ADUSTMENT_OPTION:[Ljava/lang/String;

    if-eqz v9, :cond_0

    aget-object v6, v10, v6

    iget-object v9, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->menuValue:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v2, "already_set"

    goto/16 :goto_3

    :cond_0
    array-length v6, v10

    invoke-static {v8, v6}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v6

    new-instance v9, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction$$ExternalSyntheticLambda2;

    invoke-direct {v9, p0, p2}, Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/visibility/ColorAdjustmentAction;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)V

    invoke-interface {v6, v9}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->findFirst()Ljava/util/OptionalInt;

    move-result-object p0

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Ljava/util/OptionalInt;->orElse(I)I

    move-result p0

    const-string/jumbo v6, "success"

    const-string v9, "ColorAdjustmentAction"

    if-ne p0, p2, :cond_1

    const-string p0, "menuValue is wrong value"

    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/4 p2, 0x3

    if-gt p0, p2, :cond_2

    invoke-static {v1, v4, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    move-object v2, v6

    goto :goto_1

    :cond_2
    const-string p2, "color_blind_test"

    invoke-static {v1, p2, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_3

    const-string p0, "Personalize color is not tested, Can\'t change it"

    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-static {v1, v4, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "ColorAdjustment set : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v9, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    invoke-static {v1, v7, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p1}, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->setColorAdjustment(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "predefined_color_blind_intensity"

    invoke-static {p1, p2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "color_blind_user_parameter"

    const/4 v3, 0x0

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    invoke-static {p1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "personalizeParameter : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", customIntensity : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BixbyUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p2, "00,00,00"

    :cond_4
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-nez p1, :cond_5

    const-string p0, "00"

    :goto_2
    move-object v3, p0

    goto :goto_3

    :cond_5
    const/4 v3, 0x4

    if-ne p1, v3, :cond_6

    const/high16 p0, 0x41200000    # 10.0f

    mul-float/2addr v1, p0

    float-to-int p0, v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    sub-int/2addr p1, p0

    aget-object p0, p2, p1

    goto :goto_2

    :cond_7
    :goto_3
    const-string/jumbo p0, "result"

    invoke-virtual {v0, p0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "levelValue"

    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getControllerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.vision.controllers.ColorAdjustmentPreferenceController"

    return-object p0
.end method

.method public final getDestinationFragment()Ljava/lang/String;
    .locals 0

    const-string p0, "com.samsung.android.settings.accessibility.vision.color.ColorAdjustmentMainFragment"

    return-object p0
.end method
