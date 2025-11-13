.class public Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private final display_key:[Ljava/lang/String;

.field private mDefaultKey:Ljava/lang/String;

.field private mSingleChoicePreference:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;


# direct methods
.method public static synthetic $r8$lambda$QuDvJopy9nbHgubCgeilXwlJR4I(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->checkDefaultKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSingleChoicePreference(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->mSingleChoicePreference:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDefaultKey(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->mDefaultKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->display_key:[Ljava/lang/String;

    const-string/jumbo p1, "none"

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->mDefaultKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->Init()V

    return-void
.end method

.method private Init()V
    .locals 4

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->display_key:[Ljava/lang/String;

    const-string v0, "default_suw"

    aput-object v0, p0, v3

    const-string v0, "high_contrast_suw"

    aput-object v0, p0, v2

    const-string v0, "large_display_suw"

    aput-object v0, p0, v1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->display_key:[Ljava/lang/String;

    const-string v0, "default"

    aput-object v0, p0, v3

    const-string v0, "high_contrast"

    aput-object v0, p0, v2

    const-string v0, "large_display"

    aput-object v0, p0, v1

    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getMetricsCategory()I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private checkDefaultKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->mDefaultKey:Ljava/lang/String;

    return-object p0
.end method

.method private getCandidates()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceCandidateInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;

    invoke-direct {v8, p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;-><init>(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)V

    new-instance v9, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->display_key:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const v1, 0x7f1401db

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f0802ad

    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v7, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)V

    move-object v1, v9

    move-object v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->display_key:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const v1, 0x7f1411ad

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f0802ae

    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v7, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)V

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeInfo;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->display_key:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    const v1, 0x7f1414b4

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f0802af

    invoke-virtual {v1, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v7, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)V

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$1;Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private isAvailableCustomDisplayMode()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->getAvailabilityStatus()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public changeMode(Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v3, "high_contrast_suw"

    const/4 v4, 0x4

    const-string v5, "default"

    const/4 v6, 0x3

    const-string v7, "high_contrast"

    const/4 v8, 0x2

    const-string v9, "default_suw"

    const/4 v10, 0x1

    const-string v11, "large_display_suw"

    const/4 v12, 0x0

    const-string v13, "large_display"

    const/4 v14, -0x1

    iget-object v15, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v16

    sparse-switch v16, :sswitch_data_0

    :goto_0
    move/from16 v16, v14

    goto :goto_1

    :sswitch_0
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    goto :goto_0

    :cond_0
    const/16 v16, 0x5

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v16, v4

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v16, v6

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    goto :goto_0

    :cond_3
    move/from16 v16, v8

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_4

    goto :goto_0

    :cond_4
    move/from16 v16, v10

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_5

    goto :goto_0

    :cond_5
    move/from16 v16, v12

    :goto_1
    packed-switch v16, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong Display Mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v2, Lcom/samsung/android/settings/accessibility/vision/displaymode/HighContrastDisplayMode;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v15, v2, Lcom/samsung/android/settings/accessibility/vision/displaymode/HighContrastDisplayMode;->mContext:Landroid/content/Context;

    goto :goto_2

    :pswitch_1
    new-instance v2, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v15, v2, Lcom/samsung/android/settings/accessibility/vision/displaymode/DefaultDisplayMode;->mContext:Landroid/content/Context;

    goto :goto_2

    :pswitch_2
    new-instance v2, Lcom/samsung/android/settings/accessibility/vision/displaymode/LargeDisplayMode;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v15, v2, Lcom/samsung/android/settings/accessibility/vision/displaymode/LargeDisplayMode;->mContext:Landroid/content/Context;

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    goto :goto_3

    :sswitch_6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v14, v10

    goto :goto_3

    :sswitch_7
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v14, 0x5

    goto :goto_3

    :sswitch_8
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v14, v4

    goto :goto_3

    :sswitch_9
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v14, v8

    goto :goto_3

    :sswitch_a
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v14, v12

    goto :goto_3

    :sswitch_b
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v14, v6

    :cond_6
    :goto_3
    if-eqz v14, :cond_7

    if-eq v14, v10, :cond_7

    if-eq v14, v8, :cond_7

    move v1, v12

    goto :goto_4

    :cond_7
    move v1, v10

    :goto_4
    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->doChangeDisplayMode(Z)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/accessibility/vision/displaymode/DisplayModeType;->changeDisplayModeToast(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string/jumbo v1, "none"

    iput-object v1, v0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->mDefaultKey:Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->mSingleChoicePreference:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->mSingleChoicePreference:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    iput-object v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;->buttonTitle:Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;->buttonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0}, Landroidx/preference/Preference;->notifyChanged()V

    return v10

    :sswitch_data_0
    .sparse-switch
        -0x6fd0f042 -> :sswitch_5
        -0x414e11ac -> :sswitch_4
        -0x1a0644a9 -> :sswitch_3
        0x168b9cff -> :sswitch_2
        0x5c13d641 -> :sswitch_1
        0x7d93f315 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6fd0f042 -> :sswitch_b
        -0x414e11ac -> :sswitch_a
        -0x1a0644a9 -> :sswitch_9
        0x168b9cff -> :sswitch_8
        0x5c13d641 -> :sswitch_7
        0x7d93f315 -> :sswitch_6
    .end sparse-switch
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->mSingleChoicePreference:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;)V

    iget-object p0, p1, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference;->gridAdapter:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->list:Ljava/util/List;

    iput-object v1, p0, Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$SingleChoiceAdapter;->defaultKey:Lcom/samsung/android/settings/accessibility/base/widget/SingleChoicePreference$CheckItemDefaultKey;

    invoke-virtual {p1}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isMinimalBatteryUseEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    :goto_1
    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/vision/controllers/CustomDisplayModePreferenceController;->isAvailableCustomDisplayMode()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
