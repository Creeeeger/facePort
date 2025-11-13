.class public Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mContext:Landroidx/fragment/app/FragmentActivity;

.field public mCursorThicknessLayout:Landroid/view/View;

.field public mCursorThicknessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

.field public mCursorThicknessSeekBarContainer:Landroid/widget/LinearLayout;

.field public mOrientation:I

.field public mPreviewContainer:Landroid/widget/LinearLayout;

.field public mPreviewEditText:Landroid/widget/EditText;

.field public mResources:Landroid/content/res/Resources;

.field public mThickerButton:Landroid/widget/ImageButton;

.field public final mThickerButtonClickListener:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$1;

.field public mThinnerButton:Landroid/widget/ImageButton;

.field public final mThinnerButtonClickListener:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mThinnerButtonClickListener:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$1;

    new-instance v0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$1;-><init>(Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;I)V

    iput-object v0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mThickerButtonClickListener:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$1;

    return-void
.end method


# virtual methods
.method public final getMetricsCategory()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mOrientation:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->setCursorThicknessPreviewLayout()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewEditText:Landroid/widget/EditText;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mOrientation:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p2, 0x7f0d087d

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    const p2, 0x7f0a0d47

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p2}, Lcom/android/settings/Utils;->getListHorizontalPadding(Landroid/content/Context;)I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->setCursorThicknessPreviewLayout()V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    const p2, 0x7f0a0467

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessSeekBarContainer:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const p2, 0x7f060738

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessSeekBarContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0xf

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessSeekBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0, p1}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    const p2, 0x7f0a0466

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/SeslSeekBar;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMax(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setMode(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, -0x2

    const-string v0, "cursor_thickness"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1, p2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f03016a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_1

    aget-object v0, p2, p3

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, -0x1

    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    new-instance p2, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$OnCursorThicknessSeekBarChangeListener;-><init>(Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/SeslSeekBar;->setOnSeekBarChangeListener(Landroidx/appcompat/widget/SeslSeekBar$OnSeekBarChangeListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessSeekBar:Landroidx/appcompat/widget/SeslSeekBar;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SeslAbsSeekBar;->setProgress(I)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    const p2, 0x7f0a0469

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mThinnerButton:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    const p2, 0x7f0a0468

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mThickerButton:Landroid/widget/ImageButton;

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mThinnerButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mThinnerButtonClickListener:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$1;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mThickerButton:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mThickerButtonClickListener:Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$1;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    return-object p0
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method public final setCursorThicknessPreviewLayout()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a0b77

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    const v2, 0x7f0a086e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    const v3, 0x7f0a0b78

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    const v4, 0x7f0a086f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v6, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mOrientation:I

    const/4 v7, 0x1

    const v8, 0x7f0a0465

    const v9, 0x7f0a0463

    const v10, 0x7f0a0464

    const v11, 0x7f0a0462

    const/4 v12, 0x0

    const/16 v13, 0x8

    if-ne v6, v7, :cond_1

    const/4 v6, 0x0

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewEditText:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/high16 v6, 0x40a00000    # 5.0f

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mCursorThicknessLayout:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewEditText:Landroid/widget/EditText;

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mContext:Landroidx/fragment/app/FragmentActivity;

    const v1, 0x7f060738

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p0, p0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment;->mPreviewEditText:Landroid/widget/EditText;

    new-instance v0, Lcom/samsung/android/settings/display/SecCursorThicknessPreferenceFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
