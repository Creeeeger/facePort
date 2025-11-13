.class public Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcOsaifukeitaiSettings.java"


# static fields
.field public static final IS_ANTENNA_ANIMATION:Z

.field public static final IS_Olympics_Athelete_Edition:Z

.field public static final IS_Olympics_Edition:Z

.field public static final IS_Starwars_Edition:Z

.field private static final MNO:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final ABOVE_MID:I

.field private final ABOVE_MID_TAB:I

.field private final BOTTOM:I

.field private final BOTTOM_MID:I

.field private final BOTTOM_MID_FOLDER:I

.field private final CENTER:I

.field private final FLEX:I

.field private final LEFT:I

.field private final LEFT_DCM:I

.field private final RIGHT:I

.field private final RIGHT_CENTER:I

.field private final RIGHT_TOP:I

.field private final RIGHT_TOP_PORT:I

.field private final RIGHT_TOP_PORT_TAB:I

.field private final TOP:I

.field private final TOP_FOLDER:I

.field private mContext:Landroid/content/Context;

.field private mLockNumChange:Landroidx/preference/PreferenceScreen;

.field private mLockNumInit:Landroidx/preference/PreferenceScreen;

.field private mNfcLock:Landroidx/preference/SecPreferenceScreen;

.field mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

.field private mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

.field private mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

.field private mRoot:Landroidx/preference/PreferenceScreen;

.field private mRwP2p:Landroidx/preference/SecSwitchPreference;

.field private mSetLayout:Z

.field private mTapAndPay:Landroidx/preference/PreferenceScreen;


# direct methods
.method static bridge synthetic -$$Nest$sfgetMNO()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->MNO:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 65
    sget-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->MNO:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->MNO:Ljava/lang/String;

    const-string v0, "ro.product.vendor.name"

    .line 75
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "beyond2qltedcmoly"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_Olympics_Edition:Z

    .line 76
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_SetupWizard_ConfigStepSequenceType"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "starwars"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_Starwars_Edition:Z

    .line 77
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "y2qdcmwoly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_Olympics_Athelete_Edition:Z

    .line 78
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_NFC_ConfigReaderModeUI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JAPAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_ANTENNA_ANIMATION:Z

    .line 322
    new-instance v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    .line 67
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 69
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    .line 70
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    .line 71
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    .line 72
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRoot:Landroidx/preference/PreferenceScreen;

    .line 81
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    .line 82
    iput-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumInit:Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mSetLayout:Z

    const/4 v0, 0x1

    .line 89
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->CENTER:I

    const/4 v0, 0x2

    .line 90
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->TOP:I

    const/4 v0, 0x3

    .line 91
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->BOTTOM:I

    const/4 v0, 0x4

    .line 92
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->ABOVE_MID:I

    const/4 v0, 0x5

    .line 93
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->RIGHT_TOP:I

    const/4 v0, 0x6

    .line 94
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->LEFT:I

    const/4 v0, 0x7

    .line 95
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->RIGHT:I

    const/16 v0, 0x8

    .line 96
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->TOP_FOLDER:I

    const/16 v0, 0x9

    .line 97
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->ABOVE_MID_TAB:I

    const/16 v0, 0xa

    .line 98
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->FLEX:I

    const/16 v0, 0xb

    .line 99
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->RIGHT_CENTER:I

    const/16 v0, 0xc

    .line 100
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->BOTTOM_MID:I

    const/16 v0, 0xd

    .line 101
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->BOTTOM_MID_FOLDER:I

    const/16 v0, 0xe

    .line 102
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->RIGHT_TOP_PORT_TAB:I

    const/16 v0, 0xf

    .line 103
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->LEFT_DCM:I

    const/16 v0, 0x10

    .line 104
    iput v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->RIGHT_TOP_PORT:I

    return-void
.end method

.method private populateViewForOrientation()V
    .locals 6

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->startAnimation()V

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->nfc_settings_vert:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 285
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->nfc_settings_land:I

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/core/widget/NestedScrollView;

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 289
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 290
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->nfc_settings_land_layout:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 294
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->nfc_settings_vert_layout:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0xf

    .line 298
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->semSetRoundedCorners(I)V

    .line 299
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$color;->sec_widget_round_and_bgcolor:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/LinearLayout;->semSetRoundedCornerColor(II)V

    :cond_1
    return-void
.end method

.method private startAnimation()V
    .locals 3

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->antenna_guide_image_land:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 213
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->nfc_settings_land_desc:I

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v1, Lcom/android/settings/R$id;->antenna_guide_image_vert:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 216
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    sget v2, Lcom/android/settings/R$id;->nfc_settings_vert_desc:I

    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    :goto_0
    const/4 v1, 0x0

    const-string v2, "ro.vendor.nfc.info.antpos"

    .line 218
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 269
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_center:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 266
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_right_top_port:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 263
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_left_dcm:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 260
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_right_top_port_tab:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 257
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_flip:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 254
    :pswitch_4
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 251
    :pswitch_5
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_right_center:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 248
    :pswitch_6
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_flex:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 245
    :pswitch_7
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_center:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 242
    :pswitch_8
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_above:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 239
    :pswitch_9
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 236
    :pswitch_a
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_left:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 233
    :pswitch_b
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_right_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 230
    :pswitch_c
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_above_mid:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 227
    :pswitch_d
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 224
    :pswitch_e
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_above:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 221
    :pswitch_f
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$anim;->sec_nfc_ant_center:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    :goto_1
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_1

    .line 274
    new-instance v2, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings$1;

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings$1;-><init>(Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;Landroid/graphics/drawable/AnimationDrawable;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x251d

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 202
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 203
    sget-boolean p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_Olympics_Edition:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_Starwars_Edition:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_ANTENNA_ANIMATION:Z

    if-eqz p1, :cond_1

    .line 204
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->populateViewForOrientation()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    .line 117
    new-instance p1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcSettingsData:Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    .line 119
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result p1

    const-string v0, "empty_general"

    const-string v1, "nfc_explain"

    const-string v2, "RKT"

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_Olympics_Athelete_Edition:Z

    if-nez p1, :cond_3

    .line 120
    sget-boolean p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_Olympics_Edition:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_Starwars_Edition:Z

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_ANTENNA_ANIMATION:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->sec_nfc_osaifukeitai_settings_dcm:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_2

    .line 121
    :cond_1
    :goto_0
    sget p1, Lcom/android/settings/R$xml;->sec_nfc_osaifukeitai_settings_dcm_oly:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 122
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    if-eqz p1, :cond_2

    const/4 v0, 0x3

    .line 125
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 127
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->populateViewForOrientation()V

    .line 129
    new-instance p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    .line 130
    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->seslSetSubheaderRoundedBackground(I)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 133
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 140
    :cond_3
    sget-object p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->MNO:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIMvnoModel()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 146
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 147
    sget-boolean p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->IS_ANTENNA_ANIMATION:Z

    if-eqz p1, :cond_5

    .line 148
    sget p1, Lcom/android/settings/R$xml;->sec_nfc_osaifukeitai_settings_kdi_bts:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->populateViewForOrientation()V

    .line 157
    new-instance p1, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {p1, v3}, Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;->setHeight(I)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mPreviewPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getOrder()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 161
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 165
    :cond_5
    sget p1, Lcom/android/settings/R$xml;->sec_nfc_osaifukeitai_settings_kdi:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    goto :goto_2

    .line 141
    :cond_6
    :goto_1
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 142
    sget p1, Lcom/android/settings/R$xml;->sec_nfc_osaifukeitai_settings_rkt_faver3:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    goto :goto_2

    .line 143
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 144
    sget p1, Lcom/android/settings/R$xml;->sec_nfc_osaifukeitai_settings_dcm:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    :cond_8
    :goto_2
    const-string p1, "toggle_osaifukeitai_lock"

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    const-string p1, "nfc_read_write"

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    const-string p1, "nfc_payment_settings_jpn"

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    const-string p1, "toggle_lock_number_change"

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    const-string p1, "toggle_lock_number_initialization"

    .line 173
    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumInit:Landroidx/preference/PreferenceScreen;

    .line 174
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRoot:Landroidx/preference/PreferenceScreen;

    .line 176
    sget-object p1, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->MNO:Ljava/lang/String;

    const-string v0, "DCM"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 177
    new-instance p1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsDCM;-><init>(Landroid/content/Context;Landroidx/preference/SecPreferenceScreen;Landroidx/preference/SecSwitchPreference;Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    goto :goto_4

    :cond_9
    const-string v0, "KDI"

    .line 178
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "KDR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    .line 180
    :cond_a
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 181
    new-instance p1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsRKT;-><init>(Landroid/content/Context;Landroidx/preference/SecPreferenceScreen;Landroidx/preference/SecSwitchPreference;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    goto :goto_4

    .line 182
    :cond_b
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isJapanKDIMvnoModel()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 183
    new-instance p1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRoot:Landroidx/preference/PreferenceScreen;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsMVNO;-><init>(Landroid/content/Context;Landroidx/preference/SecPreferenceScreen;Landroidx/preference/SecSwitchPreference;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    goto :goto_4

    .line 179
    :cond_c
    :goto_3
    new-instance p1, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcLock:Landroidx/preference/SecPreferenceScreen;

    iget-object v10, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mRwP2p:Landroidx/preference/SecSwitchPreference;

    iget-object v11, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumChange:Landroidx/preference/PreferenceScreen;

    iget-object v12, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mLockNumInit:Landroidx/preference/PreferenceScreen;

    iget-object v13, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mTapAndPay:Landroidx/preference/PreferenceScreen;

    move-object v7, p1

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsKDI;-><init>(Landroid/content/Context;Landroidx/preference/SecPreferenceScreen;Landroidx/preference/SecSwitchPreference;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceScreen;Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    .line 186
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    if-eqz p1, :cond_e

    .line 187
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->onCreate(Landroid/content/Context;)V

    :cond_e
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 306
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 308
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->onPause(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 193
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mNfcOsaifukeitaiSettings:Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;

    if-eqz v0, :cond_0

    .line 196
    iget-object p0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/nfc/osaifu/NfcOsaifukeitaiSettings;->onResume(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
