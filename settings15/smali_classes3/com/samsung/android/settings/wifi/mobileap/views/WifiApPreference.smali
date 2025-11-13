.class public Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;
.super Landroidx/preference/Preference;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDividerAllowedAbove:Z

.field public mDividerAllowedBelow:Z

.field public mIcon2:Landroid/graphics/drawable/Drawable;

.field public mIconColor:I

.field public mIconHeightInPx:I

.field public mIconScaleType:Landroid/widget/ImageView$ScaleType;

.field public mIconWidthInPx:I

.field public mIsPaddingOverridden:Z

.field public mIsTitleSingleLine:Z

.field public mMovementMethodForTitle:Landroid/text/method/MovementMethod;

.field public mPaddingBottomInDp:I

.field public mPaddingLeftInDp:I

.field public mPaddingRightInDp:I

.field public mPaddingTopInDp:I

.field public mPreferenceColor:I

.field public mPreferenceType:I

.field public mProgress:I

.field public mProgressBarVisibility:Z

.field public mProgressColor:I

.field public mRootView:Landroid/view/View;

.field public mSecondaryAlertIcon:Landroid/graphics/drawable/Drawable;

.field public mSecondaryAlertIconClickListener:Landroid/view/View$OnClickListener;

.field public mSecondaryAlertIconVisibility:Z

.field public mSecondaryIcon:Landroid/graphics/drawable/Drawable;

.field public mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

.field public mSecondaryIconColor:I

.field public mSecondaryIconDividerVisibility:Z

.field public mSecondaryIconHeightInPx:I

.field public mSecondaryIconScaleType:Landroid/widget/ImageView$ScaleType;

.field public mSecondaryIconVisibility:Z

.field public mSecondaryIconWidthInPx:I

.field public mSummary2MaxLines:I

.field public mSummary2Text:Ljava/lang/String;

.field public final mSummary3Text:Ljava/lang/String;

.field public mSummary4Text:Ljava/lang/String;

.field public mSummaryIcon4:Landroid/graphics/drawable/Drawable;

.field public mSummaryMaxLines:I

.field public mSummaryTextColor:I

.field public mTextGravity:I

.field public mTextSizeInSp:F

.field public mTitleIcon:Landroid/graphics/drawable/Drawable;

.field public mTitleTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPreferenceType:I

    const p2, 0x800003

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTextGravity:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIsTitleSingleLine:Z

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconDividerVisibility:Z

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconVisibility:Z

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIconClickListener:Landroid/view/View$OnClickListener;

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIconVisibility:Z

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgress:I

    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgressBarVisibility:Z

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgressColor:I

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconScaleType:Landroid/widget/ImageView$ScaleType;

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconColor:I

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedAbove:Z

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedBelow:Z

    const-string p2, ""

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary2Text:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary3Text:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary4Text:Ljava/lang/String;

    const/4 p2, 0x2

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryMaxLines:I

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary2MaxLines:I

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTitleTextColor:I

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryTextColor:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTextSizeInSp:F

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconScaleType:Landroid/widget/ImageView$ScaleType;

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconColor:I

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPreferenceColor:I

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPaddingTopInDp:I

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPaddingBottomInDp:I

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPaddingLeftInDp:I

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPaddingRightInDp:I

    iput-boolean p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIsPaddingOverridden:Z

    iput-object p4, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mMovementMethodForTitle:Landroid/text/method/MovementMethod;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    const p2, 0x7f0d0a33

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/16 p2, 0x28

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconWidthInPx:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconHeightInPx:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconWidthInPx:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconHeightInPx:I

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mRootView:Landroid/view/View;

    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v3, 0x1020016

    invoke-virtual {v1, v3}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x1020010

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a0798

    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a104e

    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0a0f82

    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a0f84

    invoke-virtual {v1, v8}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f0a0f86

    invoke-virtual {v1, v9}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f0a0f83

    invoke-virtual {v1, v10}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    const v11, 0x7f0a0f85

    invoke-virtual {v1, v11}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    const v12, 0x7f0a0ff4

    invoke-virtual {v1, v12}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    const v13, 0x7f0a0bd1

    invoke-virtual {v1, v13}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    const v14, 0x7f0a0545

    invoke-virtual {v1, v14}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const v15, 0x7f0a07af

    invoke-virtual {v1, v15}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    move-object/from16 v16, v5

    const v5, 0x7f0a07b0

    invoke-virtual {v1, v5}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v17, v6

    const v6, 0x7f0a028a

    invoke-virtual {v1, v6}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    move-object/from16 v18, v6

    iget v6, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPreferenceColor:I

    move-object/from16 v19, v5

    const/4 v5, 0x3

    move-object/from16 v20, v15

    const/4 v15, 0x1

    if-eq v6, v15, :cond_1

    if-eq v6, v5, :cond_0

    iget-object v6, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    sget v21, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApResUtils;->$r8$clinit:I

    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    move-object/from16 v22, v14

    const v14, 0x101030e

    move-object/from16 v23, v13

    const/4 v13, 0x1

    invoke-virtual {v5, v14, v15, v13}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v15, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    move-object/from16 v23, v13

    move-object/from16 v22, v14

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    sget v13, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApResUtils;->$r8$clinit:I

    const v13, 0x7f0608f3

    invoke-virtual {v6, v13}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    move-object/from16 v23, v13

    move-object/from16 v22, v14

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    sget v13, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApResUtils;->$r8$clinit:I

    new-instance v13, Landroid/util/TypedValue;

    invoke-direct {v13}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v14, 0x1010130

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v13, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v6, v13, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIsPaddingOverridden:Z

    if-eqz v5, :cond_2

    iget v5, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPaddingTopInDp:I

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v5

    iget v6, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPaddingBottomInDp:I

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v6

    iget v13, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPaddingLeftInDp:I

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v13}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v13

    iget v14, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPaddingRightInDp:I

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v14}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v14

    iget-object v15, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v15, v13, v5, v14, v6}, Landroid/view/View;->setPadding(IIII)V

    iget-object v5, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/16 v6, 0x18

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v6}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSettingsUtils;->convertDpToPixel(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setMinimumHeight(I)V

    :cond_2
    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedAbove:Z

    iput-boolean v5, v1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedAbove:Z

    iget-boolean v5, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mDividerAllowedBelow:Z

    iput-boolean v5, v1, Landroidx/preference/PreferenceViewHolder;->mDividerAllowedBelow:Z

    if-eqz v2, :cond_5

    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_3
    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconColor:I

    if-eqz v1, :cond_4

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_4
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v5, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconWidthInPx:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v5, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIconHeightInPx:I

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_5
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPreferenceType:I

    const v2, 0x7f15099b

    const v5, 0x7f1509aa

    const/4 v6, 0x1

    if-ne v1, v6, :cond_6

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_1

    :cond_6
    const/4 v6, 0x3

    if-ne v1, v6, :cond_7

    const v1, 0x7f15099c

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_1

    :cond_7
    if-nez v1, :cond_8

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_8
    :goto_1
    if-eqz v3, :cond_b

    iget-boolean v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIsTitleSingleLine:Z

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTitleTextColor:I

    if-eqz v1, :cond_9

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTextSizeInSp:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_a

    const/4 v2, 0x2

    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_a
    iget-object v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mMovementMethodForTitle:Landroid/text/method/MovementMethod;

    if-eqz v1, :cond_b

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_b
    if-eqz v4, :cond_d

    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryTextColor:I

    if-eqz v1, :cond_c

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryMaxLines:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz v12, :cond_d

    iget v1, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTextGravity:I

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_d
    const/16 v1, 0x8

    const/4 v13, 0x0

    if-eqz v7, :cond_f

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary2Text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_e
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary2Text:Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary2MaxLines:I

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_f
    if-eqz v8, :cond_11

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary3Text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :cond_10
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary3Text:Ljava/lang/String;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v10, :cond_11

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_11
    :goto_3
    if-eqz v9, :cond_15

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary4Text:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    :cond_12
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummary4Text:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v11, :cond_15

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryIcon4:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_13

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_13
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryIcon4:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    move v2, v13

    goto :goto_4

    :cond_14
    move v2, v1

    :goto_4
    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_15
    :goto_5
    if-eqz v23, :cond_17

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgressBarVisibility:Z

    if-eqz v2, :cond_16

    move-object/from16 v2, v23

    invoke-virtual {v2, v13}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgress:I

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mProgressColor:I

    if-eqz v3, :cond_17

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_6

    :cond_16
    move-object/from16 v2, v23

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_17
    :goto_6
    if-eqz v22, :cond_19

    iget-boolean v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconDividerVisibility:Z

    if-eqz v2, :cond_18

    move-object/from16 v2, v22

    invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    :cond_18
    move-object/from16 v2, v22

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_19
    :goto_7
    const/4 v2, 0x0

    if-eqz v20, :cond_20

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconScaleType:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v15, v20

    if-eqz v3, :cond_1a

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1a
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_1b

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    const v3, 0x7f080974

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_8

    :cond_1b
    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v15, v13}, Landroid/widget/ImageView;->setClickable(Z)V

    invoke-virtual {v15, v13}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v15, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1c

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1d

    move v3, v13

    goto :goto_9

    :cond_1d
    move v3, v1

    :goto_9
    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v15}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_a

    :cond_1e
    move v3, v13

    :goto_a
    iput-boolean v3, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconVisibility:Z

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconWidthInPx:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconHeightInPx:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v3, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconColor:I

    if-eqz v3, :cond_1f

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result v3

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_20
    if-eqz v19, :cond_25

    iget-object v3, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIconClickListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_21

    move-object/from16 v5, v19

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_b

    :cond_21
    move-object/from16 v5, v19

    const/4 v3, 0x1

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setClickable(Z)V

    :goto_b
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_22

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_22
    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_23

    move v2, v13

    goto :goto_c

    :cond_23
    move v2, v1

    :goto_c
    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_24

    move v15, v3

    goto :goto_d

    :cond_24
    move v15, v13

    :goto_d
    iput-boolean v15, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIconVisibility:Z

    :cond_25
    if-eqz v17, :cond_28

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v6, v17

    if-eqz v2, :cond_26

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_26
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setFocusable(Z)V

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setFocusable(Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTitleIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_27

    move v2, v13

    goto :goto_e

    :cond_27
    move v2, v1

    :goto_e
    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_28
    if-eqz v16, :cond_2b

    iget-object v2, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIcon2:Landroid/graphics/drawable/Drawable;

    move-object/from16 v5, v16

    if-eqz v2, :cond_29

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_29
    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIcon2:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2a

    goto :goto_f

    :cond_2a
    move v13, v1

    :goto_f
    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2b
    if-eqz v18, :cond_2c

    move-object/from16 v6, v18

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2c
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onPreferenceClick() - preference: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiApPreference"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final seslSetSummaryColor(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setSummaryTextColor(I)V

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 2

    const-string v0, "WifiApPreference"

    const-string/jumbo v1, "setEnabled() - Triggered"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public final setIcon2(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIcon2:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIcon2:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method public final setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const/4 v0, 0x1

    const-string v1, "WifiApPreference"

    const/4 v2, 0x2

    if-nez p1, :cond_0

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPreferenceColor:I

    if-ne v3, v2, :cond_0

    const-string/jumbo p1, "setOnPreferenceClickListener() - setting color to  nonRipple preference color"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setPreferenceColor(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPreferenceColor:I

    if-ne p1, v0, :cond_1

    const-string/jumbo p1, "setOnPreferenceClickListener() - setting color to ripple preference color"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->setPreferenceColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final setPaddingInDp(II)V
    .locals 3

    const-string/jumbo v0, "setPaddingInDp : 0, "

    const-string v1, ", 0, "

    const-string v2, "WifiApPreference"

    invoke-static {v0, v1, p1, p2, v2}, Lcom/android/settings/fuelgauge/datasaver/DynamicDenylistManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mIsPaddingOverridden:Z

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPaddingTopInDp:I

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPaddingBottomInDp:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPaddingLeftInDp:I

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPaddingRightInDp:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setPreferenceColor(I)V
    .locals 2

    const-string/jumbo v0, "setPreferenceColor: "

    const-string v1, "WifiApPreference"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mPreferenceColor:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setSecondaryAlertIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryAlertIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public final setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public final setSecondaryIconDividerVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSecondaryIconDividerVisibility:Z

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setSpannableSummary(Landroid/text/SpannableString;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setSpannableSummary: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiApPreference"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSummaryTextColor(I)V
    .locals 2

    const-string/jumbo v0, "setSummaryTextColor() - : "

    const-string v1, "WifiApPreference"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mSummaryTextColor:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public final setTitleTextColor(I)V
    .locals 2

    const-string/jumbo v0, "setTextColor() - : "

    const-string v1, "WifiApPreference"

    invoke-static {p1, v0, v1}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/samsung/android/settings/wifi/mobileap/views/WifiApPreference;->mTitleTextColor:I

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
