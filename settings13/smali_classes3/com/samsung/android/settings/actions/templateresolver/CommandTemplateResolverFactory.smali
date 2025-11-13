.class public Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolverFactory;
.super Ljava/lang/Object;
.source "CommandTemplateResolverFactory.java"


# direct methods
.method public static get(I)Lcom/samsung/android/settings/actions/templateresolver/CommandTemplateResolver;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/SingleChoiceTemplateResolver;

    invoke-direct {p0}, Lcom/samsung/android/settings/actions/templateresolver/SingleChoiceTemplateResolver;-><init>()V

    return-object p0

    .line 13
    :cond_1
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/SliderTemplateRsolver;

    invoke-direct {p0}, Lcom/samsung/android/settings/actions/templateresolver/SliderTemplateRsolver;-><init>()V

    return-object p0

    .line 10
    :cond_2
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/ToggleTemplateResolver;

    invoke-direct {p0}, Lcom/samsung/android/settings/actions/templateresolver/ToggleTemplateResolver;-><init>()V

    return-object p0

    .line 19
    :cond_3
    new-instance p0, Lcom/samsung/android/settings/actions/templateresolver/NoTemplateResolver;

    invoke-direct {p0}, Lcom/samsung/android/settings/actions/templateresolver/NoTemplateResolver;-><init>()V

    return-object p0
.end method
