.class public Lcom/samsung/android/settings/mde/MDESuggestionPreference;
.super Landroidx/preference/SecPreference;
.source "MDESuggestionPreference.java"


# instance fields
.field private final mHelper:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance p1, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreference;->mHelper:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreference;->mHelper:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    new-instance p1, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreference;->mHelper:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/SecPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    new-instance p1, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreference;->mHelper:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    return-void
.end method


# virtual methods
.method public getHelper()Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreference;->mHelper:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 38
    iget-object p0, p0, Lcom/samsung/android/settings/mde/MDESuggestionPreference;->mHelper:Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/mde/MDESuggestionPreferenceLayoutHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method
