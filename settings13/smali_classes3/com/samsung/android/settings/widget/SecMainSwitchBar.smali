.class public Lcom/samsung/android/settings/widget/SecMainSwitchBar;
.super Landroid/widget/LinearLayout;
.source "SecMainSwitchBar.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/widget/SecMainSwitchBar$SwitchBarDelegate;,
        Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;
    }
.end annotation


# instance fields
.field private mBackground:Landroid/widget/LinearLayout;

.field private mBackgroundActivatedColor:I

.field private mBackgroundColor:I

.field private mDelegate:Lcom/samsung/android/settings/widget/SecMainSwitchBar$SwitchBarDelegate;

.field private mIsLightTheme:Z

.field private mOffText:Ljava/lang/CharSequence;

.field private mOnText:Ljava/lang/CharSequence;

.field private mProgressBar:Landroid/view/View;

.field private mProgressBarLayout:Landroid/view/ViewGroup;

.field protected mSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private final mSwitchChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/widget/OnMainSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic $r8$lambda$o09tjd4xB_7AR3eRRXjFwFXjlXQ(Lcom/samsung/android/settings/widget/SecMainSwitchBar;Landroid/widget/Switch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->lambda$new$1(Landroid/widget/Switch;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pTG4LpYo5BUmQJ62dQnhbG9GGnY(Lcom/samsung/android/settings/widget/SecMainSwitchBar;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    .line 87
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget p3, Lcom/android/settings/R$layout;->sec_main_switch_bar:I

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 p2, 0x1

    .line 89
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 90
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 92
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$color;->sec_widget_switchbar_background_color:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mBackgroundColor:I

    .line 93
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/settings/R$color;->sec_widget_switchbar_checked_background_color:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    iput p3, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mBackgroundActivatedColor:I

    .line 95
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget p4, Landroidx/appcompat/R$attr;->isLightTheme:I

    invoke-virtual {p1, p4, p3, p2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 97
    iget p1, p3, Landroid/util/TypedValue;->data:I

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mIsLightTheme:Z

    .line 99
    sget p1, Lcom/android/settings/R$id;->switch_text:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mTextView:Landroid/widget/TextView;

    .line 100
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 101
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/android/settings/R$dimen;->sec_widget_switchbar_margin_start:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 103
    sget p1, Lcom/android/settings/R$id;->switch_widget:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ToggleSwitch;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 106
    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setSaveEnabled(Z)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setClickable(Z)V

    .line 111
    iget-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p1}, Landroid/widget/Switch;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 112
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$dimen;->sec_widget_switchbar_margin_end:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 114
    sget p1, Lcom/android/settings/R$id;->switch_background:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mBackground:Landroid/widget/LinearLayout;

    .line 115
    new-instance p2, Lcom/samsung/android/settings/widget/SecMainSwitchBar$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/widget/SecMainSwitchBar;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    sget p1, Lcom/android/settings/R$string;->switch_on_text:I

    sget p2, Lcom/android/settings/R$string;->switch_off_text:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setSwitchBarText(II)V

    .line 119
    new-instance p1, Lcom/samsung/android/settings/widget/SecMainSwitchBar$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/widget/SecMainSwitchBar;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    .line 122
    sget p1, Lcom/android/settings/R$id;->scanning_progress_layout:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mProgressBarLayout:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    .line 125
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    new-instance p1, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SwitchBarDelegate;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SwitchBarDelegate;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mDelegate:Lcom/samsung/android/settings/widget/SecMainSwitchBar$SwitchBarDelegate;

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mBackground:Landroid/widget/LinearLayout;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 0

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->onBackgroundClicked()V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/widget/Switch;Z)V
    .locals 0

    .line 120
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setTextViewLabelAndBackground(Z)V

    return-void
.end method

.method private propagateChecked(Z)V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 284
    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/OnMainSwitchChangeListener;

    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-interface {v2, v3, p1}, Lcom/android/settingslib/widget/OnMainSwitchChangeListener;->onSwitchChanged(Landroid/widget/Switch;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final getSwitch()Landroid/widget/Switch;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    return-object p0
.end method

.method public hide()V
    .locals 1

    .line 240
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    .line 241
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 242
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public isChecked()Z
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

    return p0
.end method

.method public isShowing()Z
    .locals 0

    .line 250
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBackgroundClicked()V
    .locals 1

    .line 132
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 187
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->propagateChecked(Z)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 344
    check-cast p1, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;

    .line 346
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean v1, p1, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;->mChecked:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    .line 349
    iget-boolean v0, p1, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;->mChecked:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setChecked(Z)V

    .line 350
    iget-boolean v0, p1, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean p1, p1, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;->mVisible:Z

    if-eqz p1, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 353
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 334
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 336
    new-instance v1, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;

    invoke-direct {v1, v0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 337
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;->mChecked:Z

    .line 338
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isShowing()Z

    move-result p0

    iput-boolean p0, v1, Lcom/samsung/android/settings/widget/SecMainSwitchBar$SavedState;->mVisible:Z

    return-object v1
.end method

.method public performClick()Z
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {p0}, Landroid/widget/Switch;->performClick()Z

    move-result p0

    return p0
.end method

.method public removeOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitchChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    .line 199
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 200
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    if-eqz p0, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 275
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 277
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setTextViewLabelAndBackground(Z)V

    return-void
.end method

.method public setProgressBarVisible(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 140
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/settings/R$layout;->sec_main_switch_bar_progress_bar:I

    iget-object v3, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mProgressBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mProgressBar:Landroid/view/View;

    .line 141
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mProgressBarLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 142
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mProgressBarLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mProgressBar:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mProgressBarLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid argument"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SetProgressBarVisible"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setSwitchBarText(II)V
    .locals 1

    .line 176
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setSwitchBarText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSwitchBarText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mOnText:Ljava/lang/CharSequence;

    .line 181
    iput-object p2, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mOffText:Ljava/lang/CharSequence;

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setTextViewLabelAndBackground(Z)V

    return-void
.end method

.method public setTextViewLabelAndBackground(Z)V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mOnText:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mOffText:Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 155
    sget v0, Lcom/android/settings/R$color;->sec_widget_switchbar_on_text_color:I

    goto :goto_1

    .line 157
    :cond_1
    sget v0, Lcom/android/settings/R$color;->sec_widget_switchbar_off_text_color:I

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 165
    iget-boolean v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mIsLightTheme:Z

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mTextView:Landroid/widget/TextView;

    const v1, 0x3f0ccccd    # 0.55f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_2

    .line 168
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mTextView:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 172
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz p1, :cond_4

    iget p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mBackgroundActivatedColor:I

    goto :goto_3

    :cond_4
    iget p0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mBackgroundColor:I

    :goto_3
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 223
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->setSwitchBarText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 231
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/settings/widget/SecMainSwitchBar;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method
