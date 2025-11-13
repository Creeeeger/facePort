.class public Landroid/text/method/TranslationTransformationMethod;
.super Ljava/lang/Object;
.source "TranslationTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final blacklist PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

.field private static final blacklist TAG:Ljava/lang/String; = "TranslationTransformationMethod"


# instance fields
.field private blacklist SEP_VERSION:Ljava/lang/Float;

.field private blacklist mAllowLengthChanges:Z

.field private blacklist mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

.field private final blacklist mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/method/TranslationTransformationMethod;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/translation/ViewTranslationResponse;Landroid/text/method/TransformationMethod;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "16.0"

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->SEP_VERSION:Ljava/lang/Float;

    iput-object p1, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    iput-object p2, p0, Landroid/text/method/TranslationTransformationMethod;->mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

    return-void
.end method

.method private blacklist isWhitespace(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Landroid/text/method/TranslationTransformationMethod;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist getOriginalTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mOriginalTranslationMethod:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public whitelist getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-boolean v0, v1, Landroid/text/method/TranslationTransformationMethod;->mAllowLengthChanges:Z

    const-string v3, "TranslationTransformationMethod"

    if-nez v0, :cond_0

    const-string v0, "Caller did not enable length changes; not transforming to translated text"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    iget-object v0, v1, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    const-string v4, "android:text"

    invoke-virtual {v0, v4}, Landroid/view/translation/ViewTranslationResponse;->getValue(Ljava/lang/String;)Landroid/view/translation/TranslationResponseValue;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/translation/TranslationResponseValue;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "show_origin_message"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4}, Landroid/view/translation/TranslationResponseValue;->getStatusCode()I

    move-result v0

    const-wide v6, 0x402e333333333333L    # 15.1

    const/4 v8, 0x0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Landroid/view/translation/TranslationResponseValue;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    iget-object v0, v1, Landroid/text/method/TranslationTransformationMethod;->SEP_VERSION:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v6

    if-ltz v0, :cond_2

    instance-of v0, v2, Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz v5, :cond_2

    :try_start_0
    move-object v0, v2

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/16 v10, 0xb3

    invoke-virtual {v0, v10}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v11

    new-instance v12, Landroid/text/SpannableString;

    invoke-direct {v12, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v13, Landroid/text/style/ForegroundColorSpan;

    aget v14, v11, v8

    invoke-direct {v13, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v14

    const/16 v15, 0x21

    invoke-virtual {v12, v13, v8, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v12

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trans color change exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v9, ""

    :cond_2
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/text/method/TranslationTransformationMethod;->isWhitespace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, v1, Landroid/text/method/TranslationTransformationMethod;->SEP_VERSION:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v10, v0

    cmpl-double v0, v10, v6

    if-ltz v0, :cond_4

    instance-of v0, v2, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p1, v0, v8

    const/4 v3, 0x1

    const-string v6, "\n"

    aput-object v6, v0, v3

    const/4 v3, 0x2

    aput-object v9, v0, v3

    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    :cond_4
    return-object v9

    :cond_5
    :goto_2
    return-object p1
.end method

.method public blacklist getViewTranslationResponse()Landroid/view/translation/ViewTranslationResponse;
    .locals 1

    iget-object v0, p0, Landroid/text/method/TranslationTransformationMethod;->mTranslationResponse:Landroid/view/translation/ViewTranslationResponse;

    return-object v0
.end method

.method public whitelist onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public blacklist setLengthChangesAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/text/method/TranslationTransformationMethod;->mAllowLengthChanges:Z

    return-void
.end method
