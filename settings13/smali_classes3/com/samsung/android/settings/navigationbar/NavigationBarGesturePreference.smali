.class public Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "NavigationBarGesturePreference.java"


# static fields
.field private static sOnehandModeDisableDialog:Landroid/app/AlertDialog;


# instance fields
.field private mButtonTextView:Landroid/widget/TextView;

.field private mGestureContainer:Landroid/widget/LinearLayout;

.field private mGestureImageView:Landroid/view/View;

.field private mGestureRadioBtn:Landroid/widget/RadioButton;

.field private mGestureTextView:Landroid/widget/TextView;

.field private mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

.field private mNavBarRadioBtn:Landroid/widget/RadioButton;

.field private mNavigationBarContainer:Landroid/widget/LinearLayout;

.field private mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mRunnable:Ljava/lang/Runnable;

.field private mShowNavigationBarImg:Landroid/widget/ImageView;

.field private mTouchStatus:Z


# direct methods
.method public static synthetic $r8$lambda$58YZtJSHbFhrL2GNNZQ3Byql99s(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->lambda$setGesturePreview$2(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aPTpheG4GYHWdGf3I-L5iEpe6dI(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->lambda$showOneHandModeDisablePopup$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aSxfweNZszkR03MY9yeRepoMR7o(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->lambda$showOneHandModeDisablePopup$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmGestureContainer(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGestureRadioBtn(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureRadioBtn:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNavBarOverlayInteractor(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNavBarRadioBtn(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Landroid/widget/RadioButton;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarRadioBtn:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchStatus(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmNavBarOverlayInteractor(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTouchStatus(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsOnehandModeDisableDialog()Landroid/app/AlertDialog;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->sOnehandModeDisableDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    .line 48
    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 63
    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 95
    new-instance p1, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method private applyLayoutForHardKey(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 167
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarImg:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    .line 184
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 187
    :cond_2
    sget v0, Lcom/android/settings/R$id;->navigation_bar_btn_textView:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 189
    sget v1, Lcom/android/settings/R$string;->navigationbar_buttons_for_hard_key:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    :cond_3
    sget v0, Lcom/android/settings/R$id;->gesture_btn_textView:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    .line 194
    sget p0, Lcom/android/settings/R$string;->navigationbar_full_screen_gestures_for_hard_key:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    return-void
.end method

.method private isReverseButtonOrder()Z
    .locals 2

    .line 207
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigationbar_key_order"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private synthetic lambda$setGesturePreview$2(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 316
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->setAnimationProperties(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method private synthetic lambda$showOneHandModeDisablePopup$0(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 252
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "com.samsung.settings.ONEHAND_OPERATION_SETTING"

    .line 253
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, ":settings:fragment_args_key"

    const-string v1, "gesture_type"

    .line 255
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ":settings:show_fragment_args"

    .line 256
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 257
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$showOneHandModeDisablePopup$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updateRadioButtonSelectState()V

    const/4 p1, 0x0

    .line 267
    iput-boolean p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    return-void
.end method

.method private setAnimationProperties(Landroidx/preference/PreferenceViewHolder;)V
    .locals 7

    .line 280
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigationbar_key_order"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 281
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "navigation_bar_gesture_hint"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    .line 282
    :goto_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    .line 284
    sget v3, Lcom/android/settings/R$id;->navigationbar_gesture_bottom_hint_img:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/16 v5, 0x8

    if-eqz v4, :cond_1

    move v6, v2

    goto :goto_1

    :cond_1
    move v6, v5

    .line 285
    :goto_1
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    sget v3, Lcom/android/settings/R$id;->navigationbar_gesture_side_and_bottom_hint_img:I

    invoke-virtual {p1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v5

    .line 287
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 289
    sget v2, Lcom/android/settings/R$id;->navigationbar_gesture_bottom_button_img:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez v0, :cond_4

    .line 291
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v1, :cond_3

    .line 292
    sget v0, Lcom/android/settings/R$drawable;->setting_gesture_navibar_01_rtl:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/android/settings/R$drawable;->setting_gesture_navibar_01:I

    .line 291
    :goto_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 294
    :cond_4
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v1, :cond_5

    .line 295
    sget v0, Lcom/android/settings/R$drawable;->setting_gesture_navibar_02_rtl:I

    goto :goto_4

    :cond_5
    sget v0, Lcom/android/settings/R$drawable;->setting_gesture_navibar_02:I

    .line 294
    :goto_4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    return-void
.end method

.method private setGesturePreview(Landroidx/preference/PreferenceViewHolder;)V
    .locals 6

    .line 300
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "navigation_bar_gesture_detail_type"

    .line 301
    invoke-static {v1}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getDefaultSettingsValue(Ljava/lang/String;)I

    move-result v2

    .line 300
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    .line 303
    sget v2, Lcom/android/settings/R$id;->navigationbar_gesture_bottom_animation_preview:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/android/settings/R$id;->navigationbar_gesture_side_and_bottom_animation_preview:I

    .line 304
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v5, 0x8

    if-nez v0, :cond_0

    aget-object v0, v1, v3

    .line 307
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    aget-object v0, v1, v4

    .line 308
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    aget-object v0, v1, v3

    .line 311
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 314
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->setAnimationProperties(Landroidx/preference/PreferenceViewHolder;)V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 316
    new-instance v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;Landroidx/preference/PreferenceViewHolder;)V

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method private setNavbarButtonResource([I)V
    .locals 1

    .line 200
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarImg:Landroid/widget/ImageView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 203
    aget p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public isOnehandModeDialogShown()Z
    .locals 0

    .line 276
    sget-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->sOnehandModeDisableDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 112
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 113
    sget v0, Lcom/android/settings/R$id;->navigation_bar_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    .line 114
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 118
    sget v0, Lcom/android/settings/R$id;->gesture_container:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    .line 119
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarRadioBtn:Landroid/widget/RadioButton;

    if-nez v0, :cond_2

    .line 124
    sget v0, Lcom/android/settings/R$id;->navigation_bar_btn:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarRadioBtn:Landroid/widget/RadioButton;

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureRadioBtn:Landroid/widget/RadioButton;

    if-nez v0, :cond_3

    .line 128
    sget v0, Lcom/android/settings/R$id;->gesture_btn:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureRadioBtn:Landroid/widget/RadioButton;

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarImg:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    .line 132
    sget v0, Lcom/android/settings/R$id;->show_navigation_bar_img:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarImg:Landroid/widget/ImageView;

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureImageView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 136
    sget v0, Lcom/android/settings/R$id;->navigation_bar_gesture_img_area:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureImageView:Landroid/view/View;

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updateTalkbackDescription()V

    .line 140
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updateRadioButtonSelectState()V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->setAnimationResource()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->setNavbarButtonResource([I)V

    .line 142
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->setGesturePreview(Landroidx/preference/PreferenceViewHolder;)V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarRadioBtn:Landroid/widget/RadioButton;

    if-eqz v0, :cond_6

    .line 144
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureRadioBtn:Landroid/widget/RadioButton;

    if-eqz v0, :cond_7

    .line 146
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 148
    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 149
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->applyLayoutForHardKey(Landroidx/preference/PreferenceViewHolder;)V

    .line 153
    :cond_8
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-super {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hide"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 154
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 155
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 156
    :cond_9
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-super {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "grayout"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 157
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 158
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 159
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 160
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_a
    :goto_0
    return-void
.end method

.method public setAnimationResource()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 228
    fill-array-data v0, :array_0

    .line 230
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->isReverseButtonOrder()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 232
    sget p0, Lcom/android/settings/R$drawable;->samsung_setting_show_navi_img_02_rtl:I

    aput p0, v0, v2

    goto :goto_0

    .line 234
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->samsung_setting_show_navi_img_01_rtl:I

    aput p0, v0, v2

    goto :goto_0

    .line 237
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->isReverseButtonOrder()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 238
    sget p0, Lcom/android/settings/R$drawable;->samsung_setting_show_navi_img_02:I

    aput p0, v0, v2

    goto :goto_0

    .line 240
    :cond_2
    sget p0, Lcom/android/settings/R$drawable;->samsung_setting_show_navi_img_01:I

    aput p0, v0, v2

    :goto_0
    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public showOneHandModeDisablePopup()V
    .locals 3

    .line 247
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->navigationbar_gesture_exclusive_function_turn_off_onehand_mode_desc:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->dialog_setting_button:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    const/high16 v2, 0x1040000

    .line 259
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    .line 265
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->sOnehandModeDisableDialog:Landroid/app/AlertDialog;

    .line 271
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->semSetAnchor(Landroid/view/View;)V

    .line 272
    sget-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->sOnehandModeDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public updateButtonOrder()V
    .locals 1

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->setAnimationResource()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->setNavbarButtonResource([I)V

    .line 212
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 213
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public updateRadioButtonSelectState()V
    .locals 5

    .line 218
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result v0

    .line 219
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarRadioBtn:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    .line 220
    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 222
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureRadioBtn:Landroid/widget/RadioButton;

    if-eqz p0, :cond_3

    if-ne v0, v3, :cond_2

    move v2, v3

    .line 223
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    return-void
.end method

.method public updateTalkbackDescription()V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureImageView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 324
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getGestureTalkbackDescription(Landroid/content/Context;)I

    move-result p0

    .line 323
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 322
    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
