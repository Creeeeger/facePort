.class public final Landroidx/core/text/BidiFormatter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

.field public static final DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

.field public static final DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

.field public static final LRM_STRING:Ljava/lang/String;

.field public static final RLM_STRING:Ljava/lang/String;


# instance fields
.field public final mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

.field public final mFlags:I

.field public final mIsRtlContext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sput-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    const/16 v1, 0x200e

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    const/16 v1, 0x200f

    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    new-instance v1, Landroidx/core/text/BidiFormatter;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3, v0}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    sput-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    new-instance v1, Landroidx/core/text/BidiFormatter;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3, v0}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    sput-object v1, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    return-void
.end method

.method public constructor <init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    iput p2, p0, Landroidx/core/text/BidiFormatter;->mFlags:I

    iput-object p3, p0, Landroidx/core/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicCompat;

    return-void
.end method

.method public static getEntryDir(Ljava/lang/CharSequence;)I
    .locals 14

    new-instance v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    iput v1, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move p0, v1

    move v2, p0

    move v3, v2

    :cond_0
    :goto_0
    iget v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    const/4 v5, -0x1

    const/4 v6, 0x1

    iget v7, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v4, v7, :cond_d

    if-nez p0, :cond_d

    iget-object v8, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iput-char v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v4}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    iget v7, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v4, v7}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v4

    iget v7, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v8, v7

    iput v8, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v4

    goto/16 :goto_5

    :cond_1
    iget v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/2addr v4, v6

    iput v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget-char v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v8, 0x700

    if-ge v4, v8, :cond_2

    sget-object v8, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v4, v8, v4

    goto :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v4

    :goto_1
    iget-boolean v8, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v8, :cond_9

    iget-char v8, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v9, 0xc

    const/16 v10, 0x3c

    if-ne v8, v10, :cond_8

    iget v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    :cond_3
    iget v8, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-ge v8, v7, :cond_6

    iget-object v11, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v12, v8, 0x1

    iput v12, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v11, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    iput-char v8, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v11, 0x3e

    if-ne v8, v11, :cond_4

    goto :goto_3

    :cond_4
    const/16 v11, 0x22

    if-eq v8, v11, :cond_5

    const/16 v11, 0x27

    if-ne v8, v11, :cond_3

    :cond_5
    :goto_2
    iget v11, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-ge v11, v7, :cond_3

    iget-object v12, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v13, v11, 0x1

    iput v13, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v12, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    iput-char v11, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v11, v8, :cond_3

    goto :goto_2

    :cond_6
    iput v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iput-char v10, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v9, 0xd

    :cond_7
    :goto_3
    move v4, v9

    goto :goto_5

    :cond_8
    const/16 v10, 0x26

    if-ne v8, v10, :cond_9

    :goto_4
    iget v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-ge v4, v7, :cond_7

    iget-object v8, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/CharSequence;

    add-int/lit8 v10, v4, 0x1

    iput v10, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-interface {v8, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    iput-char v4, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v8, 0x3b

    if-eq v4, v8, :cond_7

    goto :goto_4

    :cond_9
    :goto_5
    if-eqz v4, :cond_b

    if-eq v4, v6, :cond_a

    const/4 v7, 0x2

    if-eq v4, v7, :cond_a

    const/16 v7, 0x9

    if-eq v4, v7, :cond_0

    packed-switch v4, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    add-int/lit8 v3, v3, -0x1

    move v2, v1

    goto/16 :goto_0

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    move v2, v6

    goto/16 :goto_0

    :pswitch_2
    add-int/lit8 v3, v3, 0x1

    move v2, v5

    goto/16 :goto_0

    :cond_a
    if-nez v3, :cond_c

    :goto_6
    move v1, v6

    goto :goto_a

    :cond_b
    if-nez v3, :cond_c

    :goto_7
    move v1, v5

    goto :goto_a

    :cond_c
    :goto_8
    move p0, v3

    goto/16 :goto_0

    :cond_d
    if-nez p0, :cond_e

    goto :goto_a

    :cond_e
    if-eqz v2, :cond_f

    move v1, v2

    goto :goto_a

    :cond_f
    :goto_9
    iget v2, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_11

    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v2

    packed-switch v2, :pswitch_data_1

    goto :goto_9

    :pswitch_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :pswitch_4
    if-ne p0, v3, :cond_10

    goto :goto_6

    :cond_10
    add-int/lit8 v3, v3, -0x1

    goto :goto_9

    :pswitch_5
    if-ne p0, v3, :cond_10

    goto :goto_7

    :cond_11
    :goto_a
    return v1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public static getExitDir(Ljava/lang/CharSequence;)I
    .locals 7

    new-instance v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    iget p0, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput p0, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    move p0, v1

    :goto_0
    move v2, p0

    :cond_0
    :goto_1
    iget v3, v0, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_6

    invoke-virtual {v0}, Landroidx/core/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_4

    const/4 v5, 0x1

    if-eq v3, v5, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    const/16 v6, 0x9

    if-eq v3, v6, :cond_0

    packed-switch v3, :pswitch_data_0

    if-nez v2, :cond_0

    goto :goto_4

    :pswitch_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :pswitch_1
    if-ne v2, p0, :cond_1

    :goto_2
    move v1, v5

    goto :goto_5

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    :pswitch_2
    if-ne v2, p0, :cond_1

    :goto_3
    move v1, v4

    goto :goto_5

    :cond_2
    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    if-nez v2, :cond_0

    goto :goto_4

    :cond_4
    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    if-nez v2, :cond_0

    :goto_4
    goto :goto_0

    :cond_6
    :goto_5
    return v1

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Landroidx/core/text/BidiFormatter;
    .locals 4

    new-instance v0, Landroidx/core/text/BidiFormatter$Builder;

    invoke-direct {v0}, Landroidx/core/text/BidiFormatter$Builder;-><init>()V

    iget v1, v0, Landroidx/core/text/BidiFormatter$Builder;->mFlags:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v2, v0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    sget-object v3, Landroidx/core/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    if-ne v2, v3, :cond_1

    iget-boolean v0, v0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroidx/core/text/BidiFormatter;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/core/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroidx/core/text/BidiFormatter;

    goto :goto_0

    :cond_1
    new-instance v2, Landroidx/core/text/BidiFormatter;

    iget-boolean v3, v0, Landroidx/core/text/BidiFormatter$Builder;->mIsRtlContext:Z

    iget-object v0, v0, Landroidx/core/text/BidiFormatter$Builder;->mTextDirectionHeuristicCompat:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    invoke-direct {v2, v3, v1, v0}, Landroidx/core/text/BidiFormatter;-><init>(ZILandroidx/core/text/TextDirectionHeuristicCompat;)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    check-cast p2, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;

    invoke-virtual {p2, v0, p1}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(ILjava/lang/CharSequence;)Z

    move-result p2

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget v1, p0, Landroidx/core/text/BidiFormatter;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    const-string v2, ""

    sget-object v3, Landroidx/core/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    const/4 v4, -0x1

    sget-object v5, Landroidx/core/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    const/4 v6, 0x1

    iget-boolean p0, p0, Landroidx/core/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_6

    if-eqz p2, :cond_1

    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v1, v7, p1}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(ILjava/lang/CharSequence;)Z

    move-result v1

    if-nez p0, :cond_3

    if-nez v1, :cond_2

    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v7

    if-ne v7, v6, :cond_3

    :cond_2
    move-object v1, v5

    goto :goto_1

    :cond_3
    if-eqz p0, :cond_5

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v1, v4, :cond_5

    :cond_4
    move-object v1, v3

    goto :goto_1

    :cond_5
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    if-eq p2, p0, :cond_8

    if-eqz p2, :cond_7

    const/16 v1, 0x202b

    goto :goto_2

    :cond_7
    const/16 v1, 0x202a

    :goto_2
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x202c

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_3

    :cond_8
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_3
    if-eqz p2, :cond_9

    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    goto :goto_4

    :cond_9
    sget-object p2, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;

    :goto_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p2, v1, p1}, Landroidx/core/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;->isRtl(ILjava/lang/CharSequence;)Z

    move-result p2

    if-nez p0, :cond_b

    if-nez p2, :cond_a

    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v1

    if-ne v1, v6, :cond_b

    :cond_a
    move-object v2, v5

    goto :goto_5

    :cond_b
    if-eqz p0, :cond_d

    if-eqz p2, :cond_c

    invoke-static {p1}, Landroidx/core/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result p0

    if-ne p0, v4, :cond_d

    :cond_c
    move-object v2, v3

    :cond_d
    :goto_5
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0
.end method
