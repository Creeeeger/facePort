.class public abstract Lcom/android/systemui/media/mediaoutput/ext/MediaRoute2InfoExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static final getDisplayName(Landroid/media/MediaRoute2Info;)Ljava/lang/CharSequence;
    .locals 4

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    move-object v0, v3

    goto :goto_2

    :pswitch_0
    const v0, 0x7f130748

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_0
    const v0, 0x7f13074a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_1
    :pswitch_1
    const v0, 0x7f13074b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    goto :goto_0

    :cond_3
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_4

    const v0, 0x7f13133c

    goto :goto_1

    :cond_4
    const v0, 0x7f130dac

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    new-instance v0, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;

    invoke-direct {v0, p0, v3, v2, v3}, Lcom/android/systemui/media/mediaoutput/ext/ResourceString;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getName()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static final getSimpleIcon(Landroid/media/MediaRoute2Info;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 1

    invoke-virtual {p0}, Landroid/media/MediaRoute2Info;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const/16 v0, 0x16

    if-eq p0, v0, :cond_6

    const/16 v0, 0x17

    if-eq p0, v0, :cond_5

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/device/SoundAccessoryKt;->SoundAccessory$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_0

    :pswitch_0
    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/device/DockKt;->Dock$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto/16 :goto_0

    :pswitch_1
    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/device/UsbKt;->Usb$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/device/LevelBoxKt;->LevelBox$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    invoke-static {}, Lcom/android/systemui/media/mediaoutput/icons/device/TvKt;->getTv()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p0

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/device/GroupSpeakerKt;->GroupSpeaker$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_0

    :cond_3
    :pswitch_2
    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/device/HdmiKt;->Hdmi$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_0

    :cond_4
    :pswitch_3
    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/device/TwsKt;->Tws$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_0

    :cond_5
    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/device/HearingAidsKt;->HearingAids$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_0

    :cond_6
    :pswitch_4
    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/device/LevelUKt;->LevelU$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/device/TabletKt;->Tablet$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    goto :goto_0

    :cond_8
    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;->INSTANCE:Lcom/android/systemui/media/mediaoutput/icons/Icons$Device;

    sget-object p0, Lcom/android/systemui/media/mediaoutput/icons/device/MobileDeviceKt;->MobileDevice$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/vector/ImageVector;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
