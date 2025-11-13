.class public final Lcom/android/systemui/globalactions/presentation/view/SystemUIResourceFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I
    .locals 0

    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ITEM_LIST:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_0

    const p0, 0x7f0a0a98

    return p0

    :cond_0
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ITEM_LIST_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_1

    const p0, 0x7f0a0a99

    return p0

    :cond_1
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_STATE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_2

    const p0, 0x7f0a0aa2

    return p0

    :cond_2
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_DESCRIPTION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_3

    const p0, 0x7f0a0a92

    return p0

    :cond_3
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_DESCRIPTION_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_4

    const p0, 0x7f0a0a93

    return p0

    :cond_4
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_LABEL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_5

    const p0, 0x7f0a0a9b

    return p0

    :cond_5
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_6

    const p0, 0x7f0a0a96

    return p0

    :cond_6
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ICON_LABEL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_7

    const p0, 0x7f0a0a97

    return p0

    :cond_7
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_TOP_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_8

    const p0, 0x7f0a0aa3

    return p0

    :cond_8
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_BOTTOM_BUTTON_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_9

    const p0, 0x7f0a0a86

    return p0

    :cond_9
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_BOTTOM_BUTTON_CONTAINER:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_a

    const p0, 0x7f0a0a87

    return p0

    :cond_a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FORCE_RESTART_TEXT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_b

    const p0, 0x7f0a0a88

    return p0

    :cond_b
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_CONFIRMATION_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_c

    const p0, 0x7f0a0a8b

    return p0

    :cond_c
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_BUGREPORT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_d

    const p0, 0x7f0a0a8a

    return p0

    :cond_d
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SIDE_COVER_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_e

    const p0, 0x7f0a0b5a

    return p0

    :cond_e
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SIDE_COVER_ITEM_LIST:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_f

    const p0, 0x7f0a0b5c

    return p0

    :cond_f
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SIDE_COVER_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_10

    const p0, 0x7f0a0b5b

    return p0

    :cond_10
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_ITEM_WRAPPED:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_11

    const p0, 0x7f0a0a8f

    return p0

    :cond_11
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_BTN_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_12

    const p0, 0x7f0a0a8d

    return p0

    :cond_12
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_ANIM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_13

    const p0, 0x7f0a0a8c

    return p0

    :cond_13
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_14

    const p0, 0x7f0a0a90

    return p0

    :cond_14
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_TEXT_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_15

    const p0, 0x7f0a0a91

    return p0

    :cond_15
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_COVER_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_16

    const p0, 0x7f0a0a8e

    return p0

    :cond_16
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SIDEKEY_SETTINGS_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_17

    const p0, 0x7f0a0a9a

    return p0

    :cond_17
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_SCREEN_CAPTURE_POPUP:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_18

    const p0, 0x7f0a0aa1

    return p0

    :cond_18
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_19

    const p0, 0x7f0a0a9c

    return p0

    :cond_19
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_SVIEW_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_1a

    const p0, 0x7f0a0a9e

    return p0

    :cond_1a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_SVIEW_COVER_ITEM_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_1b

    const p0, 0x7f0a0a9f

    return p0

    :cond_1b
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_SVIEW_COVER_ITEM_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_1c

    const p0, 0x7f0a0aa0

    return p0

    :cond_1c
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_MINI_SVIEW_COVER_CONFIRM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_1d

    const p0, 0x7f0a0a9d

    return p0

    :cond_1d
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FRONT_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_1e

    const p0, 0x7f0a0a95

    return p0

    :cond_1e
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_FRONT_COVER_COFIRM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_1f

    const p0, 0x7f0a0a94

    return p0

    :cond_1f
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_ROOT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_20

    const p0, 0x7f0d038b

    return p0

    :cond_20
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_TOP_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_21

    const p0, 0x7f0d038a

    return p0

    :cond_21
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BOTTOM_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_22

    const p0, 0x7f0d037a

    return p0

    :cond_22
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BUGREPORT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_23

    const p0, 0x7f0d037b

    return p0

    :cond_23
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_ITEM_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_24

    const p0, 0x7f0d037f

    return p0

    :cond_24
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_SIDE_COVER_ROOT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_25

    const p0, 0x7f0d0389

    return p0

    :cond_25
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_SIDE_COVER_ITEM_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_26

    const p0, 0x7f0d0387

    return p0

    :cond_26
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_SIDE_COVER_NOTIFICATION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_27

    const p0, 0x7f0d0388

    return p0

    :cond_27
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_SIDEKEY_SETTINGS_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_28

    const p0, 0x7f0d0380

    return p0

    :cond_28
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FORCE_RESTART_TEXT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_29

    const p0, 0x7f0d0379

    return p0

    :cond_29
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_SCREEN_CAPTURE_POPUP:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_2a

    const p0, 0x7f0d0386

    return p0

    :cond_2a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_MINI_SVIEW_COVER_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_2b

    const p0, 0x7f0d0383

    return p0

    :cond_2b
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_MINI_SVIEW_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_2c

    const p0, 0x7f0d0384

    return p0

    :cond_2c
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_MINI_SVIEW_COVER_NOTIFICATION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_2d

    const p0, 0x7f0d0385

    return p0

    :cond_2d
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_COVER_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_2e

    const p0, 0x7f0d037c

    return p0

    :cond_2e
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_2f

    const p0, 0x7f0d037d

    return p0

    :cond_2f
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_LARGE_COVER_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_30

    const p0, 0x7f0d0381

    return p0

    :cond_30
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_LARGE_COVER_ITEM:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_31

    const p0, 0x7f0d0382

    return p0

    :cond_31
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_FRONT_COVER_NOTIFICATION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_32

    const p0, 0x7f0d037e

    return p0

    :cond_32
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BLUR_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_33

    const p0, 0x7f0d0378

    return p0

    :cond_33
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_POWEROFF:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_34

    const p0, 0x7f08148e

    return p0

    :cond_34
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_COVER_POWER_OFF_BG:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_35

    const p0, 0x7f0806a1

    return p0

    :cond_35
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_COVER_POWER_OFF_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_36

    const p0, 0x7f080907

    return p0

    :cond_36
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_RESTART:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_37

    const p0, 0x7f081490

    return p0

    :cond_37
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_COVER_RESTART_BG:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_38

    const p0, 0x7f0806a2

    return p0

    :cond_38
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_COVER_RESTART_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_39

    const p0, 0x7f080908

    return p0

    :cond_39
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SAFEMODE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_3a

    const p0, 0x7f081492

    return p0

    :cond_3a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_EMERGENCY:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_3b

    const p0, 0x7f081487

    return p0

    :cond_3b
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_EMERGENCY_CALL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_3c

    const p0, 0x7f081488

    return p0

    :cond_3c
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_MEDICAL_INFO:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_3d

    const p0, 0x7f08148c

    return p0

    :cond_3d
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_LOCKDOWN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_3e

    const p0, 0x7f08148b

    return p0

    :cond_3e
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_PROKIOSK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_3f

    const p0, 0x7f08148f

    return p0

    :cond_3f
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_DATAMODE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_40

    const p0, 0x7f08148d

    return p0

    :cond_40
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ENDSESSION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_41

    const p0, 0x7f081489

    return p0

    :cond_41
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ICON_BG_FOCUSED:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_42

    const p0, 0x7f081032

    return p0

    :cond_42
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ICON_RIPPLE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_43

    const p0, 0x7f081033

    return p0

    :cond_43
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_BG_RAISED_BTN_DARK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_44

    const p0, 0x7f0806a3

    return p0

    :cond_44
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_BG_RAISED_BTN_LIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_45

    const p0, 0x7f0806a4

    return p0

    :cond_45
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SIDEKEY_SETTINGS_RIPPLE_DARK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_46

    const p0, 0x7f081034

    return p0

    :cond_46
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SIDEKEY_SETTINGS_RIPPLE_LIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_47

    const p0, 0x7f081035

    return p0

    :cond_47
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->INTEGER_FORCE_RESTART_TIME:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_48

    const p0, 0x7f0b00e7

    return p0

    :cond_48
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BIXBY_SETTINGS_TOP_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_49

    const p0, 0x7f070fef

    return p0

    :cond_49
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BIXBY_SETTINGS_TOP_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_4a

    const p0, 0x7f070ff0

    return p0

    :cond_4a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BIXBY_SETTINGS_RIGHT_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_4b

    const p0, 0x7f070fed

    return p0

    :cond_4b
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BIXBY_SETTINGS_RIGHT_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_4c

    const p0, 0x7f070fee

    return p0

    :cond_4c
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BOTTOMBUTTONVIEW_BOTTOM_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_4d

    const p0, 0x7f070fc9

    return p0

    :cond_4d
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BUGREPORT_BOTTOM_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_4e

    const p0, 0x7f070fcc

    return p0

    :cond_4e
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BUGREPORT_BOTTOM_MARGIN_TASK:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_4f

    const p0, 0x7f070fcd

    return p0

    :cond_4f
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BUGREPORT_BOTTOM_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_50

    const p0, 0x7f070fcb

    return p0

    :cond_50
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_SIDE_COVER_WIDTH:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_51

    const p0, 0x7f070fec

    return p0

    :cond_51
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_SIDEKEY_SETTINGS_BOTTOM_MARGIN_2BTNS:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_52

    const p0, 0x7f070fe3

    return p0

    :cond_52
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_SIDEKEY_SETTINGS_BOTTOM_MARGIN_1BTN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_53

    const p0, 0x7f070fe2

    return p0

    :cond_53
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_SIDEKEY_SETTINGS_BOTTOM_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_54

    const p0, 0x7f070fe1

    return p0

    :cond_54
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_SIDEKEY_SETTINGS_RIGHT_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_55

    const p0, 0x7f070fe4

    return p0

    :cond_55
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_MINI_SVIEW_COVER_HEIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_56

    const p0, 0x7f070fe9

    return p0

    :cond_56
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_MINI_SVIEW_COVER_TOP_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_57

    const p0, 0x7f070feb

    return p0

    :cond_57
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_MINI_SVIEW_COVER_SIDE_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_58

    const p0, 0x7f070fea

    return p0

    :cond_58
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_MINI_OPEN_COVER_TOP_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_59

    const p0, 0x7f070fe8

    return p0

    :cond_59
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_FRONT_LARGE_COVER_VERTICAL_SPACE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_5a

    const p0, 0x7f070fd8

    return p0

    :cond_5a
    sget-object p0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_FRONT_LARGE_COVER_HORIZONTAL_SPACE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, p0, :cond_5b

    const p0, 0x7f070fd0

    return p0

    :cond_5b
    const/4 p0, 0x0

    return p0
.end method
