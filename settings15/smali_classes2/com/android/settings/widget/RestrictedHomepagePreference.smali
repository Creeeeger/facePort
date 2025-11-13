.class public Lcom/android/settings/widget/RestrictedHomepagePreference;
.super Lcom/android/settingslib/RestrictedTopLevelPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/widget/HomepagePreferenceLayoutHelper$HomepagePreferenceLayout;


# instance fields
.field public final mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/RestrictedTopLevelPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/widget/RestrictedHomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedTopLevelPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/widget/RestrictedHomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedTopLevelPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/widget/RestrictedHomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/RestrictedTopLevelPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p1, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;-><init>(Landroidx/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/widget/RestrictedHomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    return-void
.end method


# virtual methods
.method public final getHelper()Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/widget/RestrictedHomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    return-object p0
.end method

.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedTopLevelPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object p0, p0, Lcom/android/settings/widget/RestrictedHomepagePreference;->mHelper:Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/HomepagePreferenceLayoutHelper;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method
