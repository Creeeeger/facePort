.class public Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;
.super Lcom/android/settingslib/widget/LayoutPreference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static sOnehandModeDisableDialog:Landroid/app/AlertDialog;


# instance fields
.field public mButtonTextView:Landroid/widget/TextView;

.field public mGestureContainer:Landroid/widget/LinearLayout;

.field public mGesturePreviewAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field public mGestureRadioBtn:Landroid/widget/RadioButton;

.field public mGestureTextView:Landroid/widget/TextView;

.field public mNavBarOverlayInteractor:Lcom/samsung/android/settings/navigationbar/NavigationBarOverlayInteractor;

.field public mNavBarRadioBtn:Landroid/widget/RadioButton;

.field public mNavigationBarContainer:Landroid/widget/LinearLayout;

.field public final mOnCheckedChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;

.field public final mOnClickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;

.field public final mOnKeyListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda1;

.field public final mOnLayoutChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;

.field public final mOnTouchListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda0;

.field public final mSelectedColor:I

.field public mShowNavigationBarImg:Landroid/widget/ImageView;

.field public mTouchStatus:Z

.field public final mUnSelectedColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mTouchStatus:Z

    new-instance p2, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnTouchListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda0;

    new-instance p2, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnKeyListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda1;

    new-instance p2, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;

    new-instance p2, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;

    new-instance p2, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    iput-object p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnLayoutChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;

    const p2, 0x7f060729

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mSelectedColor:I

    const p2, 0x7f06072b

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mUnSelectedColor:I

    return-void
.end method


# virtual methods
.method public final onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/widget/LayoutPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0a0a23

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnTouchListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnKeyListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    const v0, 0x7f0a06ca

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnClickListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$1;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnLayoutChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$3;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnTouchListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnKeyListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda1;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const v0, 0x7f0a0412

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070880

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const v0, 0x7f0a0a22

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mButtonTextView:Landroid/widget/TextView;

    const v0, 0x7f0a06c9

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMinimumHeight(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarRadioBtn:Landroid/widget/RadioButton;

    if-nez v0, :cond_4

    const v0, 0x7f0a0a21

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarRadioBtn:Landroid/widget/RadioButton;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureRadioBtn:Landroid/widget/RadioButton;

    if-nez v0, :cond_5

    const v0, 0x7f0a06c8

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureRadioBtn:Landroid/widget/RadioButton;

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarImg:Landroid/widget/ImageView;

    if-nez v0, :cond_6

    const v0, 0x7f0a0e44

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarImg:Landroid/widget/ImageView;

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarImg:Landroid/widget/ImageView;

    const v1, 0x7f080ccc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePreviewAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_7

    const v0, 0x7f0a0a24

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePreviewAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updateRadioButtonSelectState()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updatePreviewResources()V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarRadioBtn:Landroid/widget/RadioButton;

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureRadioBtn:Landroid/widget/RadioButton;

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mOnCheckedChangeListener:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_9
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hide"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "grayout"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavigationBarContainer:Landroid/widget/LinearLayout;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_b
    :goto_0
    return-void
.end method

.method public final showOneHandModeDisablePopup()V
    .locals 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f14190b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f140cd1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$4;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    const/high16 v2, 0x1040000

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->sOnehandModeDisableDialog:Landroid/app/AlertDialog;

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->semSetAnchor(Landroid/view/View;)V

    sget-object p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->sOnehandModeDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final updatePreviewResources()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportNavigationBarForHardKey()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f080ccc

    aput v3, v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v3

    const-string/jumbo v4, "navigationbar_key_order"

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    const v3, 0x7f080ccb

    aput v3, v0, v1

    goto :goto_0

    :cond_1
    const v3, 0x7f080cc9

    aput v3, v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_3

    const v3, 0x7f080cca

    aput v3, v0, v1

    goto :goto_0

    :cond_3
    const v3, 0x7f080cc8

    aput v3, v0, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mShowNavigationBarImg:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePreviewAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v1, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarGestureSettingsUtil;->getPreviewAnimationResId(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePreviewAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation$1()V

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGesturePreviewAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v3, "navigation_bar_gesture_detail_type"

    invoke-static {p0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x7f141927

    goto :goto_1

    :cond_5
    const p0, 0x7f141928

    goto :goto_1

    :cond_6
    const p0, 0x7f141931

    :goto_1
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public final updateRadioButtonSelectState()V
    .locals 5

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/navigationbar/NavigationBarSettingsUtil;->getNavBarMode(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarRadioBtn:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureRadioBtn:Landroid/widget/RadioButton;

    if-eqz v1, :cond_3

    if-ne v0, v3, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->updateTextSelectedState()V

    return-void
.end method

.method public final updateTextSelectedState()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mNavBarRadioBtn:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mSelectedColor:I

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mUnSelectedColor:I

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureTextView:Landroid/widget/TextView;

    if-nez v0, :cond_2

    iget v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mSelectedColor:I

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mUnSelectedColor:I

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0x258

    if-eqz v0, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v2

    :goto_3
    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v0, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v1, v2, v5}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->mGestureTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
