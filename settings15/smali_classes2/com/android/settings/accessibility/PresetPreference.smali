.class public Lcom/android/settings/accessibility/PresetPreference;
.super Lcom/android/settings/accessibility/ListDialogPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mCaptionHelper:Lcom/android/settings/accessibility/CaptionHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/ListDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/android/settings/accessibility/CaptionHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/accessibility/CaptionHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/accessibility/PresetPreference;->mCaptionHelper:Lcom/android/settings/accessibility/CaptionHelper;

    const p1, 0x7f0d0435

    iput p1, p0, Landroidx/preference/DialogPreference;->mDialogLayoutResId:I

    const p1, 0x7f0d0550

    iput p1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mListItemLayout:I

    return-void
.end method


# virtual methods
.method public final onBindListItem(Landroid/view/View;I)V
    .locals 4

    const v0, 0x7f0a0b9a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v0, 0x7f0a0b8d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    iget-object v1, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mEntryValues:[I

    aget v1, v1, p2

    iget-object v2, p0, Lcom/android/settings/accessibility/PresetPreference;->mCaptionHelper:Lcom/android/settings/accessibility/CaptionHelper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    iget-object v1, v2, Lcom/android/settings/accessibility/CaptionHelper;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v1}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070239

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

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
    .locals 2

    iget v0, p0, Lcom/android/settings/accessibility/ListDialogPreference;->mValue:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

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
