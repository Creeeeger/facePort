.class public Lcom/android/settings/widget/HomepagePreference;
.super Landroidx/preference/SecPreference;
.source "HomepagePreference.java"

# interfaces
.implements Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;


# instance fields
.field private final mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

.field private mPreferenceHelper:Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;)V

    const-string p1, "HomepagePreference4"

    .line 84
    invoke-static {p1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 86
    new-instance p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    .line 88
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "HomepagePreference3"

    .line 73
    invoke-static {p1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 75
    new-instance p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    .line 77
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "HomepagePreference2"

    .line 62
    invoke-static {p1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 64
    new-instance p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    .line 66
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "HomepagePreference1"

    .line 51
    invoke-static {p1}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 53
    new-instance p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/widget/HomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    .line 55
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method


# virtual methods
.method public getHelper()Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    return-object p0
.end method

.method public getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/settings/widget/HomepagePreference;->mPreferenceHelper:Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;-><init>(Lcom/android/settings/widget/HomepagePreference;)V

    iput-object v0, p0, Lcom/android/settings/widget/HomepagePreference;->mPreferenceHelper:Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    .line 118
    :cond_0
    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreference;->mPreferenceHelper:Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    const-string v0, "HomepagePreference#onBindViewHolder"

    .line 95
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "HomepagePreference#onBindViewHolder.super"

    .line 96
    invoke-static {v0}, Lcom/samsung/android/settings/Trace;->beginSection(Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 100
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    .line 102
    iget-object p0, p0, Lcom/android/settings/widget/HomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 104
    invoke-static {}, Lcom/samsung/android/settings/Trace;->endSection()V

    return-void
.end method

.method public setOrder(I)V
    .locals 2

    .line 129
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->getOrder()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->getOrder()I

    move-result p1

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    return-void

    .line 135
    :cond_0
    invoke-super {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    return-void
.end method

.method public setOrderByGoodSettings(I)V
    .locals 1

    .line 139
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->setOrder(I)V

    :cond_0
    return-void
.end method

.method public setVisibleByGoodSettings(Ljava/lang/Boolean;)V
    .locals 1

    .line 122
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->supportGoodSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/widget/HomepagePreference;->getPreferenceHelper()Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/HomepagePreferenceHelper;->setVisible(Z)V

    :cond_0
    return-void
.end method
