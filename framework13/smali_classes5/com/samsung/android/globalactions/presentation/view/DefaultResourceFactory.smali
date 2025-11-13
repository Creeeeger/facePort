.class public Lcom/samsung/android/globalactions/presentation/view/DefaultResourceFactory;
.super Ljava/lang/Object;
.source "DefaultResourceFactory.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/view/ResourceFactory;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist get(Lcom/samsung/android/globalactions/presentation/view/ResourceType;)I
    .locals 1
    .param p1, "type"    # Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    .line 8
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ITEM_LIST:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_0

    const v0, 0x102052b

    return v0

    .line 9
    :cond_0
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ITEM_LIST_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_1

    const v0, 0x102052c

    return v0

    .line 10
    :cond_1
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_STATE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_2

    const v0, 0x102052e

    return v0

    .line 11
    :cond_2
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_DESCRIPTION:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_3

    const v0, 0x1020527

    return v0

    .line 12
    :cond_3
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_DESCRIPTION_TEXT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_4

    const v0, 0x1020528

    return v0

    .line 13
    :cond_4
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_LABEL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_5

    const v0, 0x102052d

    return v0

    .line 14
    :cond_5
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ICON:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_6

    const v0, 0x1020529

    return v0

    .line 15
    :cond_6
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_ICON_LABEL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_7

    const v0, 0x102052a

    return v0

    .line 16
    :cond_7
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_BOTTOM_BUTTON_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_8

    const v0, 0x1020523

    return v0

    .line 17
    :cond_8
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->ID_CONFIRMATION_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_9

    const v0, 0x1020526

    return v0

    .line 19
    :cond_9
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_ROOT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_a

    const v0, 0x1090130

    return v0

    .line 20
    :cond_a
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BOTTOM_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_b

    const v0, 0x109012d

    return v0

    .line 21
    :cond_b
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BUGREPORT_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_c

    const v0, 0x109012e

    return v0

    .line 22
    :cond_c
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_ITEM_LIST_VIEW:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_d

    const v0, 0x109012f

    return v0

    .line 23
    :cond_d
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->LAYOUT_BLUR_BACKGROUND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_e

    const v0, 0x109012b

    return v0

    .line 25
    :cond_e
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_POWEROFF:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_f

    const v0, 0x1080bc2

    return v0

    .line 26
    :cond_f
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_RESTART:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_10

    const v0, 0x1080bc4

    return v0

    .line 27
    :cond_10
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_SAFEMODE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_11

    const v0, 0x1080bc6

    return v0

    .line 28
    :cond_11
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_EMERGENCY:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_12

    const v0, 0x1080bbc

    return v0

    .line 29
    :cond_12
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_EMERGENCY_CALL:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_13

    const v0, 0x1080bbd

    return v0

    .line 30
    :cond_13
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_LOCKDOWN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_14

    const v0, 0x1080bc0

    return v0

    .line 31
    :cond_14
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ICON_BG_FOCUSED:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_15

    const v0, 0x1080854

    return v0

    .line 32
    :cond_15
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DRAWABLE_ICON_RIPPLE:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_16

    const v0, 0x1080855

    return v0

    .line 34
    :cond_16
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->INTEGER_FORCE_RESTART_TIME:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_17

    const v0, 0x10e0171

    return v0

    .line 36
    :cond_17
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BUGREPORT_BOTTOM_MARGIN:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_18

    const v0, 0x105031f

    return v0

    .line 37
    :cond_18
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_BUGREPORT_BOTTOM_MARGIN_LAND:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_19

    const v0, 0x105031e

    return v0

    .line 38
    :cond_19
    sget-object v0, Lcom/samsung/android/globalactions/presentation/view/ResourceType;->DIMEN_NAVIGATIONBAR_HEIGHT:Lcom/samsung/android/globalactions/presentation/view/ResourceType;

    if-ne p1, v0, :cond_1a

    const v0, 0x1050244

    return v0

    .line 40
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
