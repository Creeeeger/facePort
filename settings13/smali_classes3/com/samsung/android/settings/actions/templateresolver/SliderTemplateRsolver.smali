.class public Lcom/samsung/android/settings/actions/templateresolver/SliderTemplateRsolver;
.super Ljava/lang/Object;
.source "SliderTemplateRsolver.java"

# interfaces
.implements Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setSliderValue(Lcom/android/settings/core/BasePreferenceController;I)V
    .locals 2

    .line 30
    instance-of p0, p1, Lcom/android/settings/core/SliderPreferenceController;

    if-eqz p0, :cond_3

    .line 31
    check-cast p1, Lcom/android/settings/core/SliderPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/core/SliderPreferenceController;->getMin()I

    move-result p0

    .line 32
    invoke-virtual {p1}, Lcom/android/settings/core/SliderPreferenceController;->getMax()I

    move-result v0

    .line 33
    invoke-virtual {p1}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result v1

    if-gt p0, p2, :cond_2

    if-lt v0, p2, :cond_2

    if-eq v1, p2, :cond_1

    .line 45
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SliderPreferenceController;->setSliderPosition(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 46
    :cond_0
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "unknown"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_1
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "already_set"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_2
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "out_of_range"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_3
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "invalid_action"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public resolve(Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/android/settings/core/BasePreferenceController;Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$Callback;)V
    .locals 0

    .line 17
    :try_start_0
    check-cast p1, Lcom/samsung/android/sdk/command/action/FloatAction;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/action/FloatAction;->getNewValue()F

    move-result p1

    float-to-int p1, p1

    .line 18
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/actions/templateresolver/SliderTemplateRsolver;->setSliderValue(Lcom/android/settings/core/BasePreferenceController;I)V
    :try_end_0
    .catch Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p0, 0x2

    :goto_0
    if-eqz p3, :cond_0

    .line 25
    invoke-interface {p3, p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$Callback;->onResolved(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
