.class public Lcom/android/settings/widget/HomepagePreference;
.super Landroidx/preference/SecPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;


# instance fields
.field public final mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

.field public mPreferenceHelper:Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "HomepagePreference4"

    invoke-static {p1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "HomepagePreference3"

    invoke-static {p1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "HomepagePreference2"

    invoke-static {p1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "HomepagePreference1"

    invoke-static {p1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    new-instance p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public final getHelper()Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    return-object p0
.end method

.method public final getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/HomepagePreference;->mPreferenceHelper:Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;-><init>(Lcom/android/settings/widget/HomepagePreference;)V

    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreference;->mPreferenceHelper:Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreference;->mPreferenceHelper:Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    const-string v0, "HomepagePreference#onBindViewHolder"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "HomepagePreference#onBindViewHolder.super"

    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public final setOrder(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->getOrder()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->getOrder()I

    move-result p1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    return-void
.end method

.method public final setSummary(Ljava/lang/CharSequence;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/homepage/HomepageUtils;->SEPARATORS_REPLACEMENT_SKIP_LIST:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/homepage/HomepageUtils;->SEPARATORS:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v1, p1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getTopLevelSummarySeparator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Replace Separator from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HomepagePreference"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_1
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setVisibleByGoodSettings(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->mVisible:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method
