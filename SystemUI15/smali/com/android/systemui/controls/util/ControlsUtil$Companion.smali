.class public final Lcom/android/systemui/controls/util/ControlsUtil$Companion;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;-><init>()V

    return-void
.end method

.method public static dump(Landroid/service/controls/Control;)Ljava/lang/StringBuilder;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getDeviceType()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deviceType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getAppIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appIntent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move-object v2, v4

    :cond_0
    if-eqz v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "title="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2

    move-object v2, v4

    :cond_2
    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "subtitle="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/service/controls/Control;->getStructure()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "structure="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Landroid/service/controls/Control;->getZone()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "zone="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Landroid/service/controls/Control;->getStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    if-ne v2, v5, :cond_6

    move-object v3, v4

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "status="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_8

    move-object v2, v4

    :cond_8
    if-eqz v2, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "statusText="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomColor()Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_a

    const-string v2, "CustomColor|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_b

    const-string v2, "CustomIcon|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p0}, Landroid/service/controls/Control;->isAuthRequired()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "isAuthRequired="

    invoke-static {v3, v2, v1, v0}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_d
    invoke-virtual {p0}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->getTemplateInformation(Landroid/service/controls/templates/ControlTemplate;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getActionIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string v2, "Action|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getAllowBasicActionWhenLocked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v2, :cond_f

    goto :goto_1

    :cond_f
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_10

    const-string v2, "AllowLocked|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomIconAnimationJson()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_11

    move-object v2, v4

    :cond_11
    if-eqz v2, :cond_18

    const-string v2, "JSON"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomIconAnimationStartFrame()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, -0x1

    if-le v2, v6, :cond_12

    goto :goto_2

    :cond_12
    move-object v3, v4

    :goto_2
    const-string v2, "]"

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ":SF["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/controls/CustomControl;->getCustomIconAnimationEndFrame()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-le v3, v6, :cond_14

    goto :goto_3

    :cond_14
    move-object v7, v4

    :goto_3
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v3

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ":EF["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/controls/CustomControl;->getCustomIconAnimationRepeatCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-le v3, v6, :cond_16

    goto :goto_4

    :cond_16
    move-object v7, v4

    :goto_4
    if-eqz v7, :cond_17

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ":RC["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getCustomStatusIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-eqz v2, :cond_19

    const-string v2, "CustomStatusIcon|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getLayoutType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-ne v2, v5, :cond_1a

    goto :goto_5

    :cond_1a
    move-object v3, v4

    :goto_5
    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "LayoutType:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getOrder()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-lez v2, :cond_1c

    goto :goto_6

    :cond_1c
    move-object v3, v4

    :goto_6
    if-eqz v3, :cond_1d

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Order:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1d
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getUseCustomIconWithoutPadding()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v2, :cond_1e

    goto :goto_7

    :cond_1e
    move-object v3, v4

    :goto_7
    if-eqz v3, :cond_1f

    const-string v2, "NoPadding|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getUseCustomIconWithoutShadowBg()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v2, :cond_20

    goto :goto_8

    :cond_20
    move-object v3, v4

    :goto_8
    if-eqz v3, :cond_21

    const-string v2, "NoShadowBg|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getUseFullScreenDetailDialog()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v2, :cond_22

    goto :goto_9

    :cond_22
    move-object v3, v4

    :goto_9
    if-eqz v3, :cond_23

    const-string v2, "FullScreen|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/controls/CustomControl;->getStatusIconType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez v2, :cond_24

    goto :goto_a

    :cond_24
    move-object v4, v3

    :goto_a
    if-eqz v4, :cond_25

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StatusIconType:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/controls/CustomControl;->getStatusTextColor()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_26

    const-string v1, "StatusTextColor|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_26
    invoke-virtual {p0}, Landroid/service/controls/Control;->getCustomControl()Landroid/service/controls/CustomControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/controls/CustomControl;->getOverlayCustomIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-eqz p0, :cond_27

    const-string p0, "overlayCustomIcon|"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    return-object v0
.end method

.method public static getTemplateInformation(Landroid/service/controls/templates/ControlTemplate;Ljava/lang/StringBuilder;)V
    .locals 7

    invoke-virtual {p0}, Landroid/service/controls/templates/ControlTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/controls/templates/ControlTemplate;->getTemplateType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    const-string/jumbo v2, "|"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/service/controls/templates/ControlTemplate;->getTemplateType()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[UNKNOWN],type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_0
    const-string p0, "[STATELESS]|"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_1
    check-cast p0, Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-virtual {p0}, Landroid/service/controls/templates/TemperatureControlTemplate;->getCurrentMode()I

    move-result v0

    invoke-virtual {p0}, Landroid/service/controls/templates/TemperatureControlTemplate;->getCurrentActiveMode()I

    move-result v1

    invoke-virtual {p0}, Landroid/service/controls/templates/TemperatureControlTemplate;->getModes()I

    move-result v3

    const-string v4, "[TEMPERATURE],mode="

    const-string v5, ",activeMode="

    const-string v6, ",modes="

    invoke-static {v0, v1, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    invoke-virtual {p0}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->getTemplateInformation(Landroid/service/controls/templates/ControlTemplate;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_2
    check-cast p0, Landroid/service/controls/templates/ToggleRangeTemplate;

    invoke-virtual {p0}, Landroid/service/controls/templates/ToggleRangeTemplate;->isChecked()Z

    move-result v0

    const-string v1, "[TOGGLE_RANGE],checked="

    invoke-static {v1, v0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v0, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    invoke-virtual {p0}, Landroid/service/controls/templates/ToggleRangeTemplate;->getRange()Landroid/service/controls/templates/RangeTemplate;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->getTemplateInformation(Landroid/service/controls/templates/ControlTemplate;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_3
    check-cast p0, Landroid/service/controls/templates/ThumbnailTemplate;

    invoke-virtual {p0}, Landroid/service/controls/templates/ThumbnailTemplate;->isActive()Z

    move-result p0

    const-string v0, "[THUMBNAIL],active="

    invoke-static {v0, p0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_4
    check-cast p0, Landroid/service/controls/templates/RangeTemplate;

    invoke-virtual {p0}, Landroid/service/controls/templates/RangeTemplate;->getCurrentValue()F

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[RANGE],value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    check-cast p0, Landroid/service/controls/templates/ToggleTemplate;

    invoke-virtual {p0}, Landroid/service/controls/templates/ToggleTemplate;->isChecked()Z

    move-result p0

    const-string v0, "[TOGGLE],checked="

    invoke-static {v0, p0, v2, p1}, Lcom/android/systemui/controls/util/ControlsUtil$Companion$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_6
    const-string p0, "[NO_TEMPLATE]|"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    const-string p0, "[ERROR]|"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public static setSize(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static updateFontSize(Landroid/widget/TextView;IF)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    cmpl-float v0, v0, p2

    if-lez v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, v0

    const/4 v0, 0x1

    mul-float/2addr p1, p2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public static synthetic updateFontSize$default(Lcom/android/systemui/controls/util/ControlsUtil$Companion;Landroid/widget/TextView;I)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x3fa66666    # 1.3f

    invoke-static {p1, p2, p0}, Lcom/android/systemui/controls/util/ControlsUtil$Companion;->updateFontSize(Landroid/widget/TextView;IF)V

    return-void
.end method
