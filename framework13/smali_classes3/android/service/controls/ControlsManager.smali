.class public Landroid/service/controls/ControlsManager;
.super Ljava/lang/Object;
.source "ControlsManager.java"


# instance fields
.field blacklist mVersion:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0x13ec

    iput v0, p0, Landroid/service/controls/ControlsManager;->mVersion:I

    .line 11
    return-void
.end method


# virtual methods
.method public blacklist getVersion()I
    .locals 1

    .line 14
    iget v0, p0, Landroid/service/controls/ControlsManager;->mVersion:I

    return v0
.end method

.method public blacklist hasFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .line 18
    const-string v0, "CONTROLS_SAMSUNG_STYLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 19
    return v1

    .line 20
    :cond_0
    const-string v0, "CONTROLS_LOTTIE_ICON_ANIMATION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    return v1

    .line 22
    :cond_1
    const-string v0, "CONTROLS_PROVIDER_INFO"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    return v1

    .line 24
    :cond_2
    const-string v0, "CONTROLS_CUSTOM_MAIN_ACTION_ICON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 25
    return v1

    .line 26
    :cond_3
    const-string v0, "CONTROLS_USE_FULL_SCREEN_DETAIL_DIALOG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    return v1

    .line 28
    :cond_4
    const-string v0, "CONTROLS_ALLOW_BASIC_ACTION_WHEN_LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29
    return v1

    .line 30
    :cond_5
    const-string v0, "CONTROLS_CUSTOM_STATUS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 31
    return v1

    .line 32
    :cond_6
    const-string v0, "CONTROLS_AUTO_ADD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 33
    return v1

    .line 34
    :cond_7
    const-string v0, "CONTROLS_AUTO_REMOVE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 35
    return v1

    .line 36
    :cond_8
    const-string v0, "CONTROLS_USE_CUSTOM_ICON_WITHOUT_SHADOW_BG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 37
    return v1

    .line 38
    :cond_9
    const-string v0, "CONTROLS_USE_CUSTOM_ICON_WITHOUT_PADDING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 39
    return v1

    .line 40
    :cond_a
    const-string v0, "CONTROLS_DYNAMIC_ORDERING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 41
    return v1

    .line 42
    :cond_b
    const-string v0, "CONTROLS_CUSTOM_STATUS_ICON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 43
    return v1

    .line 44
    :cond_c
    const-string v0, "CONTROLS_LAYOUT_TYPE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 45
    return v1

    .line 46
    :cond_d
    const-string v0, "CONTROLS_AUI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 47
    return v1

    .line 48
    :cond_e
    const-string v0, "CONTROLS_OVERLAY_CUSTOM_ICON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 49
    return v1

    .line 52
    :cond_f
    const/4 v0, 0x0

    return v0
.end method
