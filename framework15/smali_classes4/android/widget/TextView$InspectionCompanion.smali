.class public final Landroid/widget/TextView$InspectionCompanion;
.super Ljava/lang/Object;
.source "TextView$InspectionCompanion.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAutoLinkId:I

.field private blacklist mAutoSizeMaxTextSizeId:I

.field private blacklist mAutoSizeMinTextSizeId:I

.field private blacklist mAutoSizeStepGranularityId:I

.field private blacklist mAutoSizeTextTypeId:I

.field private blacklist mBreakStrategyId:I

.field private blacklist mCursorVisibleId:I

.field private blacklist mDrawableBlendModeId:I

.field private blacklist mDrawablePaddingId:I

.field private blacklist mDrawableTintId:I

.field private blacklist mDrawableTintModeId:I

.field private blacklist mElegantTextHeightId:I

.field private blacklist mEllipsizeId:I

.field private blacklist mFallbackLineSpacingId:I

.field private blacklist mFirstBaselineToTopHeightId:I

.field private blacklist mFontFeatureSettingsId:I

.field private blacklist mFreezesTextId:I

.field private blacklist mGravityId:I

.field private blacklist mHintId:I

.field private blacklist mHyphenationFrequencyId:I

.field private blacklist mImeActionIdId:I

.field private blacklist mImeActionLabelId:I

.field private blacklist mImeOptionsId:I

.field private blacklist mIncludeFontPaddingId:I

.field private blacklist mInputTypeId:I

.field private blacklist mJustificationModeId:I

.field private blacklist mLastBaselineToBottomHeightId:I

.field private blacklist mLetterSpacingId:I

.field private blacklist mLineHeightId:I

.field private blacklist mLineSpacingExtraId:I

.field private blacklist mLineSpacingMultiplierId:I

.field private blacklist mLinksClickableId:I

.field private blacklist mMarqueeRepeatLimitId:I

.field private blacklist mMaxEmsId:I

.field private blacklist mMaxHeightId:I

.field private blacklist mMaxLinesId:I

.field private blacklist mMaxWidthId:I

.field private blacklist mMinEmsId:I

.field private blacklist mMinLinesId:I

.field private blacklist mMinWidthId:I

.field private blacklist mPrivateImeOptionsId:I

.field private blacklist mPropertiesMapped:Z

.field private blacklist mScrollHorizontallyId:I

.field private blacklist mShadowColorId:I

.field private blacklist mShadowDxId:I

.field private blacklist mShadowDyId:I

.field private blacklist mShadowRadiusId:I

.field private blacklist mSingleLineId:I

.field private blacklist mTextAllCapsId:I

.field private blacklist mTextColorHighlightId:I

.field private blacklist mTextColorHintId:I

.field private blacklist mTextColorId:I

.field private blacklist mTextColorLinkId:I

.field private blacklist mTextId:I

.field private blacklist mTextIsSelectableId:I

.field private blacklist mTextScaleXId:I

.field private blacklist mTextSizeId:I

.field private blacklist mTypefaceId:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public whitelist mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v2}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    const-string v3, "email"

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v4, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0x8

    const-string/jumbo v5, "map"

    invoke-virtual {v2, v3, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v3, 0x4

    const-string/jumbo v5, "phone"

    invoke-virtual {v2, v3, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string/jumbo v6, "web"

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v7, v6}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;

    invoke-direct {v6, v2}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string v8, "autoLink"

    const v9, 0x10100b0

    invoke-interface {v1, v8, v9, v6}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v6

    iput v6, v0, Landroid/widget/TextView$InspectionCompanion;->mAutoLinkId:I

    const-string v6, "autoSizeMaxTextSize"

    const v8, 0x1010546

    invoke-interface {v1, v6, v8}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeMaxTextSizeId:I

    const-string v6, "autoSizeMinTextSize"

    const v8, 0x1010538

    invoke-interface {v1, v6, v8}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeMinTextSizeId:I

    const-string v6, "autoSizeStepGranularity"

    const v8, 0x1010536

    invoke-interface {v1, v6, v8}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeStepGranularityId:I

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    const/4 v8, 0x0

    const-string/jumbo v9, "none"

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v10, "uniform"

    invoke-virtual {v6, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v10, v6}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v11, "autoSizeTextType"

    const v12, 0x1010535

    invoke-interface {v1, v11, v12, v10}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v10

    iput v10, v0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeTextTypeId:I

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    const-string/jumbo v11, "simple"

    invoke-virtual {v10, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v11, "high_quality"

    invoke-virtual {v10, v7, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v11, "balanced"

    invoke-virtual {v10, v4, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v11, v10}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v12, "breakStrategy"

    const v13, 0x10104dd

    invoke-interface {v1, v12, v13, v11}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mBreakStrategyId:I

    const-string v11, "cursorVisible"

    const v12, 0x1010152

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mCursorVisibleId:I

    const-string v11, "drawableBlendMode"

    const/16 v12, 0x50

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mDrawableBlendModeId:I

    const-string v11, "drawablePadding"

    const v12, 0x1010171

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mDrawablePaddingId:I

    const-string v11, "drawableTint"

    const v12, 0x10104d6

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mDrawableTintId:I

    const-string v11, "drawableTintMode"

    const v12, 0x10104d7

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mDrawableTintModeId:I

    const-string v11, "elegantTextHeight"

    const v12, 0x101045d

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mElegantTextHeightId:I

    const-string v11, "ellipsize"

    const v12, 0x10100ab

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mEllipsizeId:I

    const-string v11, "fallbackLineSpacing"

    const v12, 0x101057b

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mFallbackLineSpacingId:I

    const-string v11, "firstBaselineToTopHeight"

    const v12, 0x101057d

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mFirstBaselineToTopHeightId:I

    const-string v11, "fontFeatureSettings"

    const v12, 0x10104b7

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mFontFeatureSettingsId:I

    const-string v11, "freezesText"

    const v12, 0x101016c

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mFreezesTextId:I

    const-string v11, "gravity"

    const v12, 0x10100af

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapGravity(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mGravityId:I

    const-string v11, "hint"

    const v12, 0x1010150

    invoke-interface {v1, v11, v12}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v11

    iput v11, v0, Landroid/widget/TextView$InspectionCompanion;->mHintId:I

    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v11, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v12, "normal"

    invoke-virtual {v11, v7, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v13, "full"

    invoke-virtual {v11, v4, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v13, v11}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v14, "hyphenationFrequency"

    const v15, 0x10104de

    invoke-interface {v1, v14, v15, v13}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v13

    iput v13, v0, Landroid/widget/TextView$InspectionCompanion;->mHyphenationFrequencyId:I

    const-string v13, "imeActionId"

    const v14, 0x1010266

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/widget/TextView$InspectionCompanion;->mImeActionIdId:I

    const-string v13, "imeActionLabel"

    const v14, 0x1010265

    invoke-interface {v1, v13, v14}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v13

    iput v13, v0, Landroid/widget/TextView$InspectionCompanion;->mImeActionLabelId:I

    new-instance v13, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v13}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    const/4 v14, 0x6

    const-string v15, "actionDone"

    const/16 v8, 0xff

    invoke-virtual {v13, v8, v14, v15}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string v14, "actionGo"

    invoke-virtual {v13, v8, v4, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v14, 0x5

    const-string v15, "actionNext"

    invoke-virtual {v13, v8, v14, v15}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string v14, "actionNone"

    invoke-virtual {v13, v8, v7, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v14, 0x7

    const-string v15, "actionPrevious"

    invoke-virtual {v13, v8, v14, v15}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string v14, "actionSearch"

    const/4 v15, 0x3

    invoke-virtual {v13, v8, v15, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string v14, "actionSend"

    invoke-virtual {v13, v8, v3, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string v14, "actionUnspecified"

    const/4 v7, 0x0

    invoke-virtual {v13, v8, v7, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v7, -0x80000000

    const-string v8, "flagForceAscii"

    invoke-virtual {v13, v7, v7, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v7, 0x8000000

    const-string v8, "flagNavigateNext"

    invoke-virtual {v13, v7, v7, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v7, 0x4000000

    const-string v8, "flagNavigatePrevious"

    invoke-virtual {v13, v7, v7, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v7, 0x20000000

    const-string v8, "flagNoAccessoryAction"

    invoke-virtual {v13, v7, v7, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v7, 0x40000000    # 2.0f

    const-string v8, "flagNoEnterAction"

    invoke-virtual {v13, v7, v7, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v7, 0x10000000

    const-string v8, "flagNoExtractUi"

    invoke-virtual {v13, v7, v7, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v7, 0x2000000

    const-string v8, "flagNoFullscreen"

    invoke-virtual {v13, v7, v7, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/high16 v7, 0x1000000

    const-string v8, "flagNoPersonalizedLearning"

    invoke-virtual {v13, v7, v7, v8}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {v13, v7, v8, v12}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    invoke-static {v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;

    invoke-direct {v8, v13}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string v12, "imeOptions"

    const v14, 0x1010264

    invoke-interface {v1, v12, v14, v8}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v8

    iput v8, v0, Landroid/widget/TextView$InspectionCompanion;->mImeOptionsId:I

    const-string v8, "includeFontPadding"

    const v12, 0x101015f

    invoke-interface {v1, v8, v12}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v8

    iput v8, v0, Landroid/widget/TextView$InspectionCompanion;->mIncludeFontPaddingId:I

    new-instance v8, Landroid/view/inspector/IntFlagMapping;

    invoke-direct {v8}, Landroid/view/inspector/IntFlagMapping;-><init>()V

    const/16 v12, 0x14

    const-string v14, "date"

    const/16 v15, 0xfff

    invoke-virtual {v8, v15, v12, v14}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string v12, "datetime"

    invoke-virtual {v8, v15, v3, v12}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v8, v7, v3, v9}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string/jumbo v3, "number"

    invoke-virtual {v8, v15, v4, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0x2002

    const-string/jumbo v4, "numberDecimal"

    const v7, 0xfff00f

    invoke-virtual {v8, v7, v3, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0x12

    const-string/jumbo v4, "numberPassword"

    invoke-virtual {v8, v15, v3, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v3, 0x1002

    const-string/jumbo v4, "numberSigned"

    invoke-virtual {v8, v7, v3, v4}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {v8, v15, v3, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const-string/jumbo v3, "text"

    const/4 v4, 0x1

    invoke-virtual {v8, v15, v4, v3}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const v4, 0x10001

    const-string/jumbo v5, "textAutoComplete"

    invoke-virtual {v8, v7, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const v4, 0x8001

    const-string/jumbo v5, "textAutoCorrect"

    invoke-virtual {v8, v7, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x1001

    const-string/jumbo v5, "textCapCharacters"

    invoke-virtual {v8, v7, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x4001

    const-string/jumbo v5, "textCapSentences"

    invoke-virtual {v8, v7, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x2001

    const-string/jumbo v5, "textCapWords"

    invoke-virtual {v8, v7, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x21

    const-string/jumbo v5, "textEmailAddress"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x31

    const-string/jumbo v5, "textEmailSubject"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0xb1

    const-string/jumbo v5, "textFilter"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const v4, 0x40001

    const-string/jumbo v5, "textImeMultiLine"

    invoke-virtual {v8, v7, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x51

    const-string/jumbo v5, "textLongMessage"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const v4, 0x20001

    const-string/jumbo v5, "textMultiLine"

    invoke-virtual {v8, v7, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const v4, 0x80001

    const-string/jumbo v5, "textNoSuggestions"

    invoke-virtual {v8, v7, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x81

    const-string/jumbo v5, "textPassword"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x61

    const-string/jumbo v5, "textPersonName"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0xc1

    const-string/jumbo v5, "textPhonetic"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x71

    const-string/jumbo v5, "textPostalAddress"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x41

    const-string/jumbo v5, "textShortMessage"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x11

    const-string/jumbo v5, "textUri"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x91

    const-string/jumbo v5, "textVisiblePassword"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0xa1

    const-string/jumbo v5, "textWebEditText"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0xd1

    const-string/jumbo v5, "textWebEmailAddress"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0xe1

    const-string/jumbo v5, "textWebPassword"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    const/16 v4, 0x24

    const-string/jumbo v5, "time"

    invoke-virtual {v8, v15, v4, v5}, Landroid/view/inspector/IntFlagMapping;->add(IILjava/lang/String;)V

    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;

    invoke-direct {v4, v8}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda1;-><init>(Landroid/view/inspector/IntFlagMapping;)V

    const-string v5, "inputType"

    const v7, 0x1010220

    invoke-interface {v1, v5, v7, v4}, Landroid/view/inspector/PropertyMapper;->mapIntFlag(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v4

    iput v4, v0, Landroid/widget/TextView$InspectionCompanion;->mInputTypeId:I

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v5, "inter_word"

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Landroid/view/View$InspectionCompanion$$ExternalSyntheticLambda0;-><init>(Landroid/util/SparseArray;)V

    const-string v7, "justificationMode"

    const v9, 0x1010567

    invoke-interface {v1, v7, v9, v5}, Landroid/view/inspector/PropertyMapper;->mapIntEnum(Ljava/lang/String;ILjava/util/function/IntFunction;)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mJustificationModeId:I

    const-string v5, "lastBaselineToBottomHeight"

    const v7, 0x101057e

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mLastBaselineToBottomHeightId:I

    const-string v5, "letterSpacing"

    const v7, 0x10104b6

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mLetterSpacingId:I

    const-string v5, "lineHeight"

    const v7, 0x101057f

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mLineHeightId:I

    const-string v5, "lineSpacingExtra"

    const v7, 0x1010217

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mLineSpacingExtraId:I

    const-string v5, "lineSpacingMultiplier"

    const v7, 0x1010218

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mLineSpacingMultiplierId:I

    const-string v5, "linksClickable"

    const v7, 0x10100b1

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mLinksClickableId:I

    const-string/jumbo v5, "marqueeRepeatLimit"

    const v7, 0x101021d

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMarqueeRepeatLimitId:I

    const-string/jumbo v5, "maxEms"

    const v7, 0x1010157

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMaxEmsId:I

    const-string/jumbo v5, "maxHeight"

    const v7, 0x1010120

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMaxHeightId:I

    const-string/jumbo v5, "maxLines"

    const v7, 0x1010153

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMaxLinesId:I

    const-string/jumbo v5, "maxWidth"

    const v7, 0x101011f

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMaxWidthId:I

    const-string/jumbo v5, "minEms"

    const v7, 0x101015a

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMinEmsId:I

    const-string/jumbo v5, "minLines"

    const v7, 0x1010156

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMinLinesId:I

    const-string/jumbo v5, "minWidth"

    const v7, 0x101013f

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mMinWidthId:I

    const-string/jumbo v5, "privateImeOptions"

    const v7, 0x1010223

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mPrivateImeOptionsId:I

    const-string/jumbo v5, "scrollHorizontally"

    const v7, 0x101015b

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mScrollHorizontallyId:I

    const-string/jumbo v5, "shadowColor"

    const v7, 0x1010161

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mShadowColorId:I

    const-string/jumbo v5, "shadowDx"

    const v7, 0x1010162

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mShadowDxId:I

    const-string/jumbo v5, "shadowDy"

    const v7, 0x1010163

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mShadowDyId:I

    const-string/jumbo v5, "shadowRadius"

    const v7, 0x1010164

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mShadowRadiusId:I

    const-string/jumbo v5, "singleLine"

    const v7, 0x101015d

    invoke-interface {v1, v5, v7}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v5

    iput v5, v0, Landroid/widget/TextView$InspectionCompanion;->mSingleLineId:I

    const v5, 0x101014f

    invoke-interface {v1, v3, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/widget/TextView$InspectionCompanion;->mTextId:I

    const-string/jumbo v3, "textAllCaps"

    const v5, 0x101038c

    invoke-interface {v1, v3, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/widget/TextView$InspectionCompanion;->mTextAllCapsId:I

    const-string/jumbo v3, "textColor"

    const v5, 0x1010098

    invoke-interface {v1, v3, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/widget/TextView$InspectionCompanion;->mTextColorId:I

    const-string/jumbo v3, "textColorHighlight"

    const v5, 0x1010099

    invoke-interface {v1, v3, v5}, Landroid/view/inspector/PropertyMapper;->mapColor(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/widget/TextView$InspectionCompanion;->mTextColorHighlightId:I

    const-string/jumbo v3, "textColorHint"

    const v5, 0x101009a

    invoke-interface {v1, v3, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/widget/TextView$InspectionCompanion;->mTextColorHintId:I

    const-string/jumbo v3, "textColorLink"

    const v5, 0x101009b

    invoke-interface {v1, v3, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/widget/TextView$InspectionCompanion;->mTextColorLinkId:I

    const-string/jumbo v3, "textIsSelectable"

    const v5, 0x1010316

    invoke-interface {v1, v3, v5}, Landroid/view/inspector/PropertyMapper;->mapBoolean(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/widget/TextView$InspectionCompanion;->mTextIsSelectableId:I

    const-string/jumbo v3, "textScaleX"

    const v5, 0x1010151

    invoke-interface {v1, v3, v5}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/widget/TextView$InspectionCompanion;->mTextScaleXId:I

    const-string/jumbo v3, "textSize"

    const v5, 0x1010095

    invoke-interface {v1, v3, v5}, Landroid/view/inspector/PropertyMapper;->mapFloat(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/widget/TextView$InspectionCompanion;->mTextSizeId:I

    const-string/jumbo v3, "typeface"

    const v5, 0x1010096

    invoke-interface {v1, v3, v5}, Landroid/view/inspector/PropertyMapper;->mapObject(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/widget/TextView$InspectionCompanion;->mTypefaceId:I

    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/widget/TextView$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public blacklist readProperties(Landroid/widget/TextView;Landroid/view/inspector/PropertyReader;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/TextView$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoLinkId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoLinkMask()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeMaxTextSizeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeMaxTextSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeMinTextSizeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeMinTextSize()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeStepGranularityId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeStepGranularity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mAutoSizeTextTypeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getAutoSizeTextType()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mBreakStrategyId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getBreakStrategy()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mCursorVisibleId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isCursorVisible()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawableBlendModeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawableTintBlendMode()Landroid/graphics/BlendMode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawablePaddingId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawableTintId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawableTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mDrawableTintModeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawableTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mElegantTextHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isElegantTextHeight()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mEllipsizeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFallbackLineSpacingId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isFallbackLineSpacing()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFirstBaselineToTopHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getFirstBaselineToTopHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFontFeatureSettingsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mFreezesTextId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getFreezesText()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mGravityId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readGravity(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mHintId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mHyphenationFrequencyId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHyphenationFrequency()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mImeActionIdId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getImeActionId()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mImeActionLabelId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getImeActionLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mImeOptionsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getImeOptions()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mIncludeFontPaddingId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mInputTypeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntFlag(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mJustificationModeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getJustificationMode()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readIntEnum(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLastBaselineToBottomHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLastBaselineToBottomHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLetterSpacingId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLetterSpacing()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLineHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLineSpacingExtraId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLineSpacingMultiplierId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mLinksClickableId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMarqueeRepeatLimitId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMarqueeRepeatLimit()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxEmsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxEms()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxHeightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxHeight()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxLinesId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMaxWidthId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMaxWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMinEmsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMinEms()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMinLinesId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMinLines()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mMinWidthId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getMinWidth()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mPrivateImeOptionsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getPrivateImeOptions()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mScrollHorizontallyId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isHorizontallyScrollable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowColorId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowDxId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowDyId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mShadowRadiusId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mSingleLineId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextAllCapsId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isAllCaps()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorHighlightId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHighlightColor()I

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readColor(II)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorHintId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextColorLinkId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getLinkTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextIsSelectableId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readBoolean(IZ)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextScaleXId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextScaleX()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTextSizeId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readFloat(IF)V

    iget v0, p0, Landroid/widget/TextView$InspectionCompanion;->mTypefaceId:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readObject(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView$InspectionCompanion;->readProperties(Landroid/widget/TextView;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method
