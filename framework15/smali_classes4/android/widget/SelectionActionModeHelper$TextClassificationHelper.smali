.class final Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextClassificationHelper"
.end annotation


# static fields
.field private static final blacklist TRIM_DELTA_UPPER_BOUND:I = 0xf0


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mDefaultLocales:Landroid/os/LocaleList;

.field private blacklist mInitialized:Z

.field private greylist-max-o mLastClassificationLocales:Landroid/os/LocaleList;

.field private greylist-max-o mLastClassificationResult:Landroid/widget/SelectionActionModeHelper$SelectionResult;

.field private greylist-max-o mLastClassificationSelectionEnd:I

.field private greylist-max-o mLastClassificationSelectionStart:I

.field private greylist-max-o mLastClassificationText:Ljava/lang/CharSequence;

.field private greylist-max-o mRelativeEnd:I

.field private greylist-max-o mRelativeStart:I

.field private greylist-max-o mSelectionEnd:I

.field private greylist-max-o mSelectionStart:I

.field private greylist-max-o mText:Ljava/lang/String;

.field private greylist-max-o mTextClassifier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/TextClassifier;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTrimStart:I

.field private greylist-max-o mTrimmedText:Ljava/lang/CharSequence;

.field private final blacklist mViewConfiguration:Landroid/view/ViewConfiguration;


# direct methods
.method constructor greylist-max-o <init>(Landroid/content/Context;Ljava/util/function/Supplier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/TextClassifier;",
            ">;",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/os/LocaleList;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->init(Ljava/util/function/Supplier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    return-void
.end method

.method private greylist-max-o isDarkLaunchEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isModelDarkLaunchEnabled()Z

    move-result v0

    return v0
.end method

.method private greylist-max-o performClassification(Landroid/view/textclassifier/TextSelection;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 5

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionStart:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionEnd:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationLocales:Landroid/os/LocaleList;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationText:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionStart:I

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionEnd:I

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationLocales:Landroid/os/LocaleList;

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->trimText()V

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/util/Linkify;->containsUnsupportedCharacters(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    const-string v2, "116321860"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    sget-object v0, Landroid/view/textclassifier/TextClassification;->EMPTY:Landroid/view/textclassifier/TextClassification;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection;->getTextClassification()Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/view/textclassifier/TextClassification$Request$Builder;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    invoke-direct {v0, v1, v2, v3}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v1, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextClassifier;->classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    invoke-direct {v1, v2, v3, v0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;-><init>(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationResult:Landroid/widget/SelectionActionModeHelper$SelectionResult;

    :cond_4
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationResult:Landroid/widget/SelectionActionModeHelper$SelectionResult;

    return-object v0
.end method

.method private greylist-max-o trimText()V
    .locals 4

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->getSmartSelectionTrimDelta()I

    move-result v0

    const/16 v1, 0xf0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    return-void
.end method


# virtual methods
.method public greylist-max-o classifyText()Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mInitialized:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->performClassification(Landroid/view/textclassifier/TextSelection;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getOriginalSelection()Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 4

    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/SelectionActionModeHelper$SelectionResult;-><init>(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V

    return-object v0
.end method

.method public greylist-max-o getTimeoutDuration()I
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getSmartSelectionInitializedTimeout()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getSmartSelectionInitializingTimeout()I

    move-result v0

    return v0
.end method

.method public greylist-max-o init(Ljava/util/function/Supplier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/view/textclassifier/TextClassifier;",
            ">;",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/os/LocaleList;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationText:Ljava/lang/CharSequence;

    if-ge p4, p3, :cond_0

    iput p4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iput p3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    goto :goto_0

    :cond_0
    iput p3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iput p4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    :goto_0
    iput-object p5, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    return-void
.end method

.method public greylist-max-o suggestSelection()Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mInitialized:Z

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->trimText()V

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    new-instance v1, Landroid/view/textclassifier/TextSelection$Request$Builder;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    invoke-direct {v1, v2, v3, v4}, Landroid/view/textclassifier/TextSelection$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDarkLaunchAllowed(Z)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setIncludeTextClassification(Z)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection$Request$Builder;->build()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v1, v0}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mDefaultLocales:Landroid/os/LocaleList;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->isDarkLaunchEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getSelectionStartIndex()I

    move-result v1

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getSelectionEndIndex()I

    move-result v2

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    :cond_1
    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->performClassification(Landroid/view/textclassifier/TextSelection;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v1

    return-object v1
.end method
