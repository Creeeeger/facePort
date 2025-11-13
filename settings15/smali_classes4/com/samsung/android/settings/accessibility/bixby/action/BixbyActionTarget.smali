.class public abstract Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final actionMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->actionMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;I)V

    const-string/jumbo v2, "viv.accessibilityApp.GetSupportFeature"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->actionMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;I)V

    const-string/jumbo v2, "viv.accessibilityApp.GetCurrentStatus"

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->actionMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;I)V

    const-string/jumbo v2, "viv.accessibilityApp.GetExclusivePopup"

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->actionMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;I)V

    const-string/jumbo v2, "viv.accessibilityApp.GetPermissionPopup"

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->actionMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;I)V

    const-string/jumbo v2, "viv.accessibilityApp.EnableAccessibilityMenu"

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->actionMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;I)V

    const-string/jumbo v2, "viv.accessibilityApp.DisableAccessibilityMenu"

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->actionMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;I)V

    const-string/jumbo v2, "viv.accessibilityApp.SetAccessibilityMenuValue"

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->actionMap:Ljava/util/Map;

    new-instance v1, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;I)V

    const-string/jumbo v2, "viv.accessibilityApp.AdjustAccessibilityMenuValue"

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->actionMap:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->addCustomAction(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public addCustomAction(Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method public final doAction(Ljava/lang/String;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "action = "

    const-string v3, " bundle : "

    invoke-static {v2, p1, v3}, Landroidx/activity/result/ActivityResultRegistry$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BixbyActionTarget"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->actionName:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "disable"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "turn_off"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "turn_on"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v4, v0

    goto :goto_0

    :sswitch_3
    const-string v5, "enable"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    packed-switch v4, :pswitch_data_0

    :cond_4
    move-object p1, v3

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;->values()[Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, v0}, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$DISABLE;

    if-eqz p1, :cond_4

    const-string/jumbo p1, "viv.accessibilityApp.DisableAccessibilityMenu"

    goto :goto_1

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;->values()[Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE$$ExternalSyntheticLambda0;

    invoke-direct {v0, v3, v1}, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/accessibility/bixby/action/ActionConverter$ENABLE;

    if-eqz p1, :cond_4

    const-string/jumbo p1, "viv.accessibilityApp.EnableAccessibilityMenu"

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->actionMap:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/function/BiFunction;

    const-string p1, "false"

    const-string/jumbo v0, "result"

    if-eqz p0, :cond_11

    invoke-interface {p0, p3, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    if-nez p0, :cond_5

    invoke-static {v0, p1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    :cond_5
    const-string p1, ""

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ActionName"

    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->bixbyLocale:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "BixbyLocale"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v0, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->level:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "Level"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->levelValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "LevelValue"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->menuValue:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "menuValue"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v0, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->unit:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "Unit"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    iget-object p2, p2, Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;->paramValue:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string/jumbo v0, "viv.accessibilityApp.GetSupportFeature"

    if-nez p1, :cond_d

    const-string p1, "ColorAdjustment"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    :cond_c
    const-string p1, "accessibilityMenu"

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    sget-object p1, Lcom/samsung/android/settings/accessibility/SecAccessibilityUtils;->excludeDeviceNameSet:Ljava/util/HashSet;

    const-string p1, "com.samsung.accessibility"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-object p1, v2

    :goto_2
    if-nez p1, :cond_f

    const-string p1, "Could not find package: com.samsung.accessibility"

    const-string p2, "A11yUtils"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_f
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_3
    const-string p1, "description"

    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-object p0

    :cond_11
    invoke-static {v0, p1}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4d6ada7d -> :sswitch_3
        -0x398c3b1f -> :sswitch_2
        0x804d6ad -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public doChangeAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public doEnableAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;Z)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public doGetCurrentStatus(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public doGetExclusivePopup(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public doGetSupportFeature(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->isApplicationRestricted(Landroid/content/Context;)Z

    move-result p0

    const-string/jumbo p1, "result"

    if-eqz p0, :cond_0

    const-string p0, "DeviceChangeNeeded"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "true"

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p2
.end method

.method public doSetAction(Landroid/content/Context;Lcom/samsung/android/settings/accessibility/bixby/data/ParsedBundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDestinationFragment()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPunchoutIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTargetRestrictionKeys()Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitleRes()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final isApplicationRestricted(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/bixby/action/BixbyActionTarget;->getTargetRestrictionKeys()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->updateRestrictionState(Landroid/content/Context;)V

    invoke-static {p1, p0}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
