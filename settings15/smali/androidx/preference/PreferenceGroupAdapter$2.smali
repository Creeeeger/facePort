.class public final Landroidx/preference/PreferenceGroupAdapter$2;
.super Landroidx/recyclerview/widget/DiffUtil$Callback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic val$comparisonCallback:Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;

.field public final synthetic val$oldVisibleList:Ljava/util/List;

.field public final synthetic val$visiblePreferenceList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    iput-object p2, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    iput-object p3, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    return-void
.end method


# virtual methods
.method public final areContentsTheSame(II)Z
    .locals 2

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->wasDetached()Z

    move-result p0

    if-eqz p0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p0, v0, :cond_4

    if-eqz p0, :cond_9

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p2}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v0

    if-eq p0, v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroidx/preference/Preference;->isSelectable()Z

    move-result p0

    invoke-virtual {p2}, Landroidx/preference/Preference;->isSelectable()Z

    move-result v0

    if-eq p0, v0, :cond_6

    goto :goto_0

    :cond_6
    instance-of p0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz p0, :cond_7

    move-object p0, p1

    check-cast p0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    move-object v0, p2

    check-cast v0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eq p0, v0, :cond_7

    goto :goto_0

    :cond_7
    instance-of p0, p1, Landroidx/preference/DropDownPreference;

    if-eqz p0, :cond_8

    if-eq p1, p2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    :cond_9
    :goto_0
    return v1
.end method

.method public final areItemsTheSame(II)Z
    .locals 2

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$comparisonCallback:Landroidx/preference/PreferenceManager$SimplePreferenceComparisonCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getId()J

    move-result-wide p0

    invoke-virtual {p2}, Landroidx/preference/Preference;->getId()J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getNewListSize()I
    .locals 0

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$visiblePreferenceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final getOldListSize()I
    .locals 0

    iget-object p0, p0, Landroidx/preference/PreferenceGroupAdapter$2;->val$oldVisibleList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method
