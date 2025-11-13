.class public Lcom/samsung/android/settings/actions/templateresolver/SingleChoiceTemplateResolver;
.super Ljava/lang/Object;
.source "SingleChoiceTemplateResolver.java"

# interfaces
.implements Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setSingleChoiceValue(Lcom/android/settings/core/BasePreferenceController;Ljava/lang/String;)V
    .locals 1

    .line 31
    instance-of p0, p1, Lcom/android/settings/core/SecSingleChoicePreferenceController;

    if-eqz p0, :cond_5

    .line 32
    check-cast p1, Lcom/android/settings/core/SecSingleChoicePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getEntryValues()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 34
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 38
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 39
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p1}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->getSelectedValue()Ljava/lang/String;

    move-result-object p0

    .line 41
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 44
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SecSingleChoicePreferenceController;->setSelectedValue(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    .line 45
    :cond_1
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "unknown"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :cond_2
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "already_set"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 52
    :cond_3
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "invalid_value"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_4
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "entry_is_not_ready"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 54
    :cond_5
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;

    const-string p1, "invalid_action"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public resolve(Lcom/samsung/android/sdk/command/action/CommandAction;Lcom/android/settings/core/BasePreferenceController;Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$Callback;)V
    .locals 0

    .line 18
    :try_start_0
    check-cast p1, Lcom/samsung/android/sdk/command/action/StringAction;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/command/action/StringAction;->getNewValue()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/settings/actions/templateresolver/SingleChoiceTemplateResolver;->setSingleChoiceValue(Lcom/android/settings/core/BasePreferenceController;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$InvalidActionException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p0, 0x2

    :goto_0
    if-eqz p3, :cond_0

    .line 26
    invoke-interface {p3, p0, p1}, Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver$Callback;->onResolved(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
