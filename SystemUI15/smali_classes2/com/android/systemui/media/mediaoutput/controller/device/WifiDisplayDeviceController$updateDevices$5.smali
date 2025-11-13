.class final Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$5;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$5;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroid/media/AudioDeviceInfo;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/ext/DisplayManagerExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/ext/DisplayManagerExt;

    iget-object v3, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$5;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;

    iget-object v3, v3, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v8

    if-ne v8, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    if-eq v2, v6, :cond_2

    if-ne v2, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v4

    :goto_2
    const-string v8, "PC"

    if-eq v2, v5, :cond_7

    if-eq v2, v6, :cond_6

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/ext/DisplayManagerExt;->getActiveDisplay(Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v11, v2

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    move-object v11, v8

    goto :goto_4

    :cond_7
    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/ext/DisplayManagerExt;->getActiveDisplay(Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplay;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    :goto_4
    if-nez v11, :cond_9

    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2a

    :cond_9
    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$5;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;

    iget-object v2, v2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/ext/DisplayManagerExt;->getActiveDisplay(Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v3

    const/4 v9, 0x6

    const/16 v10, 0xa

    const/4 v12, 0x4

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_a

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    :goto_5
    if-eqz v3, :cond_c

    const-string v13, "-"

    invoke-static {v3, v13, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v14

    if-eqz v14, :cond_b

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_c

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13, v4, v9}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v3

    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_c

    invoke-static {v10, v3}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/ext/DisplayManagerExt;->getActiveDisplay(Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/hardware/display/SemWifiDisplay;->getPrimaryDeviceType()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-lt v13, v12, :cond_d

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    if-eqz v3, :cond_e

    invoke-virtual {v3, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v4, v3}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    :goto_8
    const/4 v4, 0x1

    const/16 v13, 0x8

    const/4 v14, 0x7

    if-nez v3, :cond_f

    goto :goto_9

    :cond_f
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-ne v15, v4, :cond_10

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/device/PcKt;->Pc$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_f

    :cond_10
    :goto_9
    if-nez v3, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v15

    const/16 v7, 0xb

    if-ne v15, v7, :cond_12

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/device/LevelBoxKt;->LevelBox$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_f

    :cond_12
    :goto_a
    if-nez v3, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v15, 0xc

    if-ne v7, v15, :cond_14

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/device/RefrigeratorKt;->Refrigerator$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_f

    :cond_14
    :goto_b
    if-nez v3, :cond_15

    goto :goto_c

    :cond_15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v14, :cond_16

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    invoke-static {}, Lcom/android/systemui/media/mediaoutput/icons/device/TvKt;->getTv()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    goto :goto_f

    :cond_16
    :goto_c
    if-nez v3, :cond_17

    goto :goto_d

    :cond_17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v13, :cond_18

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/device/SoundBarKt;->SoundBar$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_f

    :cond_18
    :goto_d
    if-nez v3, :cond_19

    goto :goto_e

    :cond_19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v10, :cond_1a

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v3, Lcom/android/systemui/media/mediaoutput/icons/device/MobileDeviceKt;->MobileDevice$delegate:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_f

    :cond_1a
    :goto_e
    const/4 v3, 0x0

    :goto_f
    if-nez v3, :cond_30

    invoke-static {v2}, Lcom/android/systemui/media/mediaoutput/ext/DisplayManagerExt;->getActiveDisplay(Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/SemWifiDisplay;

    move-result-object v2

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplay;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_10

    :cond_1b
    const/4 v2, 0x0

    :goto_10
    if-nez v2, :cond_1c

    goto :goto_11

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v12, :cond_1d

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/PcKt;->Pc$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_1d

    :cond_1d
    :goto_11
    if-nez v2, :cond_1e

    goto :goto_12

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0x16

    if-ne v3, v7, :cond_1f

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/LevelBoxKt;->LevelBox$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_1d

    :cond_1f
    :goto_12
    if-nez v2, :cond_20

    goto :goto_13

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0x9

    if-ne v3, v7, :cond_21

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/RefrigeratorKt;->Refrigerator$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_1d

    :cond_21
    :goto_13
    if-nez v2, :cond_22

    goto :goto_14

    :cond_22
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v9, :cond_23

    goto :goto_16

    :cond_23
    :goto_14
    if-nez v2, :cond_24

    goto :goto_15

    :cond_24
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0x17

    if-ne v3, v7, :cond_25

    goto :goto_16

    :cond_25
    :goto_15
    if-nez v2, :cond_26

    goto :goto_17

    :cond_26
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v13, :cond_27

    :goto_16
    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    invoke-static {}, Lcom/android/systemui/media/mediaoutput/icons/device/TvKt;->getTv()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v3

    goto :goto_1d

    :cond_27
    :goto_17
    if-nez v2, :cond_28

    goto :goto_18

    :cond_28
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v14, :cond_29

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/SoundBarKt;->SoundBar$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_1d

    :cond_29
    :goto_18
    if-nez v2, :cond_2a

    goto :goto_19

    :cond_2a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_2b

    goto :goto_1a

    :cond_2b
    :goto_19
    if-nez v2, :cond_2c

    goto :goto_1b

    :cond_2c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0x13

    if-ne v3, v7, :cond_2d

    :goto_1a
    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/MobileDeviceKt;->MobileDevice$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_1d

    :cond_2d
    :goto_1b
    if-nez v2, :cond_2e

    goto :goto_1c

    :cond_2e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v5, :cond_2f

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/TabletKt;->Tablet$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_1d

    :cond_2f
    :goto_1c
    const/4 v3, 0x0

    :cond_30
    :goto_1d
    if-nez v3, :cond_3c

    const-string v2, "The Sero"

    invoke-static {v11, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_31

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/SeroTvKt;->SeroTv$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_1e
    move-object v3, v2

    goto/16 :goto_1f

    :cond_31
    const-string v2, "TV"

    invoke-static {v11, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_32

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    invoke-static {}, Lcom/android/systemui/media/mediaoutput/icons/device/TvKt;->getTv()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v2

    goto :goto_1e

    :cond_32
    const-string v2, "BRAVIA"

    invoke-static {v11, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_33

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    invoke-static {}, Lcom/android/systemui/media/mediaoutput/icons/device/TvKt;->getTv()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v2

    goto :goto_1e

    :cond_33
    const-string v2, "Laptop"

    invoke-static {v11, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_34

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/LaptopKt;->Laptop$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_1e

    :cond_34
    invoke-static {v11, v8, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_35

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/PcKt;->Pc$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_1e

    :cond_35
    const-string v2, "SideSync"

    invoke-static {v11, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_36

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/PcKt;->Pc$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_1e

    :cond_36
    const-string v2, "Tablet"

    invoke-static {v11, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_37

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/TabletKt;->Tablet$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_1e

    :cond_37
    const-string v2, "KimchiRef"

    invoke-static {v11, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_38

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/KimchiRefrigeratorKt;->KimchiRefrigerator$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_1e

    :cond_38
    const-string v2, "Refrigerator"

    invoke-static {v11, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_39

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/RefrigeratorKt;->Refrigerator$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_1e

    :cond_39
    const-string v2, "Fridge"

    invoke-static {v11, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/RefrigeratorKt;->Refrigerator$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_1e

    :cond_3a
    const-string v2, "Speaker"

    invoke-static {v11, v2, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_3b

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/LevelBoxKt;->LevelBox$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_1e

    :cond_3b
    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/icons/device/SoundAccessoryKt;->SoundAccessory$delegate:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_1e

    :cond_3c
    :goto_1f
    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$5;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;

    iget-boolean v4, v2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->isSupportDisplayDeviceVolumeControl:Z

    if-eqz v4, :cond_3d

    iget-object v2, v2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    iget v2, v2, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->displayCurrentVolume:I

    :goto_20
    move v15, v2

    goto :goto_21

    :cond_3d
    iget-object v2, v2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v6}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v2

    goto :goto_20

    :goto_21
    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$5;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;

    iget-boolean v4, v2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->isSupportDisplayDeviceVolumeControl:Z

    if-eqz v4, :cond_3e

    iget-object v2, v2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->displayManagerWrapper:Lcom/android/systemui/volume/util/DisplayManagerWrapper;

    invoke-virtual {v2}, Lcom/android/systemui/volume/util/DisplayManagerWrapper;->getDisplayMaxVolume()I

    move-result v2

    :goto_22
    move/from16 v16, v2

    goto :goto_23

    :cond_3e
    const/16 v2, 0x96

    goto :goto_22

    :goto_23
    sget-object v2, Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;->INSTANCE:Lcom/android/systemui/media/mediaoutput/ext/AudioDeviceInfoExt;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$5;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;

    iget-object v4, v4, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v2

    invoke-virtual {v4}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v4

    if-ne v4, v2, :cond_3f

    sget-object v2, Lcom/android/systemui/media/mediaoutput/entity/State;->SELECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    :goto_24
    move-object/from16 v17, v2

    goto :goto_25

    :cond_3f
    sget-object v2, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    goto :goto_24

    :goto_25
    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$5;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;

    iget-object v2, v2, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v2

    const-string v4, "BuiltIn_"

    const/16 v7, 0x19

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v8

    if-ne v8, v5, :cond_40

    goto :goto_26

    :cond_40
    const/4 v2, 0x0

    :goto_26
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getConnectedState()I

    move-result v2

    if-eq v2, v6, :cond_41

    if-ne v2, v5, :cond_43

    :cond_41
    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/DexDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/DexDevice$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    if-ne v0, v7, :cond_42

    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    invoke-static {v0, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v13

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/DexDevice;

    const/4 v14, 0x0

    const/16 v18, 0x0

    const/4 v12, 0x0

    const/16 v19, 0x114

    const/16 v20, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v20}, Lcom/android/systemui/media/mediaoutput/entity/DexDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_27

    :cond_42
    const/4 v0, 0x0

    :goto_27
    if-eqz v0, :cond_8

    iput-object v1, v0, Lcom/android/systemui/media/mediaoutput/entity/DexDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    :goto_28
    move-object v7, v0

    goto :goto_2a

    :cond_43
    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController$updateDevices$5;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/device/WifiDisplayDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetAvailableDeviceMaskForQuickSoundPath()I

    move-result v0

    const-string/jumbo v2, "semGetAvailableDeviceMaskForQuickSoundPath() - "

    const-string v5, "AudioManagerExt"

    invoke-static {v0, v2, v5}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->Companion:Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v0

    if-ne v0, v7, :cond_44

    invoke-virtual {v1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    invoke-static {v0, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v0, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;->Companion:Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter$Companion;->toConverter(Landroidx/compose/ui/graphics/vector/ImageVector;)Lcom/android/systemui/media/mediaoutput/compose/ext/ImageVectorConverterPainter;

    move-result-object v13

    new-instance v0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x314

    const/16 v21, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v21}, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/vector/ImageVector;IILcom/android/systemui/media/mediaoutput/entity/State;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_29

    :cond_44
    const/4 v0, 0x0

    :goto_29
    if-eqz v0, :cond_8

    iput-object v1, v0, Lcom/android/systemui/media/mediaoutput/entity/SmartViewDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    goto :goto_28

    :goto_2a
    return-object v7
.end method
