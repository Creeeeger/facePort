.class public final Lcom/android/settings/accessibility/AccessibilityFooterPreference;
.super Lcom/android/settingslib/widget/FooterPreference;
.source "AccessibilityFooterPreference.java"


# instance fields
.field private mLinkEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    .line 47
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    .line 53
    sget v0, Lcom/android/settings/R$layout;->sec_preference_accessibility_footer:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 59
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/FooterPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 61
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    iget-boolean p0, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->mLinkEnabled:Z

    if-eqz p0, :cond_0

    .line 68
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 p0, 0x0

    .line 72
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setFocusable(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 74
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 78
    :goto_0
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget p1, Lcom/android/settings/R$id;->icon_frame:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    .line 79
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setLinkEnabled(Z)V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->mLinkEnabled:Z

    if-eq v0, p1, :cond_0

    .line 88
    iput-boolean p1, p0, Lcom/android/settings/accessibility/AccessibilityFooterPreference;->mLinkEnabled:Z

    .line 89
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
