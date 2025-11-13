.class public Lcom/samsung/android/settings/actions/templateresolver/ToggleTemplateResolver;
.super Ljava/lang/Object;
.source "ToggleTemplateResolver.java"

# interfaces
.implements Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setToggleValue(Lcom/android/settings/core/BasePreferenceController;Z)V
    .locals 0

    .line 29
    instance-of p0, p1, Lcom/android/settings/core/TogglePreferenceController;

    if-eqz p0, :cond_2

    .line 30
    check-cast p1, Lcom/android/settings/core/TogglePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result p0

    if-eq p0, p2, :cond_1

    .line 36
    invoke-virtual {p1, p2}, Lcom/android/settings/core/TogglePreferenceController;->setChecked(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 37
    :cond_0
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "unknown"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 33
    :cond_1
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "already_set"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 40
    :cond_2
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "invalid_action"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public resolve(Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/android/settings/core/BasePreferenceController;Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$Callback;)V
    .locals 0

    .line 16
    :try_start_0
    check-cast p1, Lcom/samsung/android/sdk/command/action/BooleanAction;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/action/BooleanAction;->getNewState()Z

    move-result p1

    .line 17
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/actions/templateresolver/ToggleTemplateResolver;->setToggleValue(Lcom/android/settings/core/BasePreferenceController;Z)V
    :try_end_0
    .catch Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p0, 0x2

    :goto_0
    if-eqz p3, :cond_0

    .line 24
    invoke-interface {p3, p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$Callback;->onResolved(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
