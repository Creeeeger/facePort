.class Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
.super Landroidx/preference/SwitchPreference;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppRestrictionsPreference"
.end annotation


# instance fields
.field private hasSettings:Z

.field private immutable:Z

.field private listener:Landroid/view/View$OnClickListener;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private panelOpen:Z

.field private restrictions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgethasSettings(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetlistener(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChildren(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetrestrictions(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetSettingsEnabled(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSettingsEnabled(Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    .line 152
    sget p1, Lcom/android/settings/R$layout;->preference_app_restrictions:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 153
    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private setSettingsEnabled(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    return-void
.end method


# virtual methods
.method getRestrictions()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    return-object p0
.end method

.method isImmutable()Z
    .locals 0

    .line 169
    iget-boolean p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    return p0
.end method

.method isPanelOpen()Z
    .locals 0

    .line 177
    iget-boolean p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->panelOpen:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 190
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 192
    sget v0, Lcom/android/settings/R$id;->app_restrictions_settings:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 193
    iget-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    sget v1, Lcom/android/settings/R$id;->settings_divider:I

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 195
    iget-boolean v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    if-eqz v4, :cond_1

    move v2, v3

    .line 194
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 199
    sget v0, Lcom/android/settings/R$id;->app_restrictions_pref:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const v0, 0x1020016

    .line 204
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    if-nez v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x1020010

    .line 206
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x1020018

    .line 210
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 212
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 215
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_4

    .line 216
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    .line 218
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 219
    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setClickable(Z)V

    .line 221
    invoke-virtual {p1, v2}, Landroid/widget/CompoundButton;->setFocusable(Z)V

    .line 224
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$2;-><init>(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Landroid/widget/CompoundButton;)V

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    return-void
.end method

.method setImmutable(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    return-void
.end method

.method setPanelOpen(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->panelOpen:Z

    return-void
.end method

.method setRestrictions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    return-void
.end method
