.class public Lcom/android/settings/accessibility/EdgeTypePreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f03007a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->setValues([I)V

    const p2, 0x7f030079

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryTitles:[Ljava/lang/CharSequence;

    const p1, 0x7f0d0435

    iput p1, p0, Landroidx/preference/DialogPreference;->mDialogLayoutResId:I

    const p1, 0x7f0d0550

    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mListItemLayout:I

    return-void
.end method


# virtual methods
.method public final onBindListItem(Landroid/view/View;I)V
    .locals 3

    const v0, 0x7f0a0b8d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setForegroundColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42000000    # 32.0f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setEdgeType(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setEdgeColor(I)V

    invoke-virtual {p0, p2}, Lcom/android/settings/accessibility/ListDialogPreference;->getTitleAt(I)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    const p2, 0x7f0a0f81

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final shouldDisableDependents$1()Z
    .locals 1

    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroidx/preference/Preference;->shouldDisableDependents$1()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
