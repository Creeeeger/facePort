.class public Landroidx/typoanimation/TypoAnimationView;
.super Landroidx/typoanimation/BaseTypoView;
.source "TypoAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/typoanimation/TypoAnimationView$AnimationInfo;
    }
.end annotation


# instance fields
.field alphaPaint:Landroid/graphics/Paint;

.field aniInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/typoanimation/TypoAnimationView$AnimationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private aniParamFontScale:[I

.field private aniParamOpacity:[I

.field private aniParamRotate:[I

.field private aniParamXPosDelta:[I

.field private aniParamYPosDelta:[I

.field private animationUnit:I

.field bitmap:Landroid/graphics/Bitmap;

.field private interval:I

.field private paint:Landroid/text/TextPaint;

.field pendingAnimator:Landroid/animation/Animator;

.field private pivotYDelta:I

.field prevMat:Landroid/graphics/Matrix;

.field private refreshInfoOnDraw:Z

.field rotMat:Landroid/graphics/Matrix;

.field totalDuration:J

.field unicodeBlockchecked:Z

.field private unitAnimDuration:J

.field private unitAnimInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 93
    invoke-direct {p0, p1}, Landroidx/typoanimation/BaseTypoView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Landroidx/typoanimation/TypoAnimationView;->animationUnit:I

    const/16 v0, 0x1e

    .line 36
    iput v0, p0, Landroidx/typoanimation/TypoAnimationView;->interval:I

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 37
    fill-array-data v1, :array_0

    iput-object v1, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamFontScale:[I

    new-array v1, v0, [I

    .line 38
    fill-array-data v1, :array_1

    iput-object v1, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamOpacity:[I

    new-array v1, v0, [I

    .line 39
    fill-array-data v1, :array_2

    iput-object v1, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamXPosDelta:[I

    new-array v1, v0, [I

    .line 40
    fill-array-data v1, :array_3

    iput-object v1, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamYPosDelta:[I

    new-array v0, v0, [I

    .line 41
    fill-array-data v0, :array_4

    iput-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamRotate:[I

    .line 44
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimInterpolator:Landroid/view/animation/Interpolator;

    const-wide/16 v0, 0x12c

    .line 45
    iput-wide v0, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimDuration:J

    .line 48
    iput-boolean p1, p0, Landroidx/typoanimation/TypoAnimationView;->refreshInfoOnDraw:Z

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->aniInfos:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->rotMat:Landroid/graphics/Matrix;

    .line 230
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->prevMat:Landroid/graphics/Matrix;

    .line 233
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->alphaPaint:Landroid/graphics/Paint;

    .line 234
    iput-boolean p1, p0, Landroidx/typoanimation/TypoAnimationView;->unicodeBlockchecked:Z

    const/4 p1, 0x0

    .line 490
    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->pendingAnimator:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 97
    invoke-direct {p0, p1, p2}, Landroidx/typoanimation/BaseTypoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Landroidx/typoanimation/TypoAnimationView;->animationUnit:I

    const/16 p2, 0x1e

    .line 36
    iput p2, p0, Landroidx/typoanimation/TypoAnimationView;->interval:I

    const/4 p2, 0x2

    new-array v0, p2, [I

    .line 37
    fill-array-data v0, :array_0

    iput-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamFontScale:[I

    new-array v0, p2, [I

    .line 38
    fill-array-data v0, :array_1

    iput-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamOpacity:[I

    new-array v0, p2, [I

    .line 39
    fill-array-data v0, :array_2

    iput-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamXPosDelta:[I

    new-array v0, p2, [I

    .line 40
    fill-array-data v0, :array_3

    iput-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamYPosDelta:[I

    new-array p2, p2, [I

    .line 41
    fill-array-data p2, :array_4

    iput-object p2, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamRotate:[I

    .line 44
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p2, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimInterpolator:Landroid/view/animation/Interpolator;

    const-wide/16 v0, 0x12c

    .line 45
    iput-wide v0, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimDuration:J

    .line 48
    iput-boolean p1, p0, Landroidx/typoanimation/TypoAnimationView;->refreshInfoOnDraw:Z

    .line 88
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/typoanimation/TypoAnimationView;->aniInfos:Ljava/util/ArrayList;

    .line 229
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Landroidx/typoanimation/TypoAnimationView;->rotMat:Landroid/graphics/Matrix;

    .line 230
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Landroidx/typoanimation/TypoAnimationView;->prevMat:Landroid/graphics/Matrix;

    .line 233
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/typoanimation/TypoAnimationView;->alphaPaint:Landroid/graphics/Paint;

    .line 234
    iput-boolean p1, p0, Landroidx/typoanimation/TypoAnimationView;->unicodeBlockchecked:Z

    const/4 p1, 0x0

    .line 490
    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->pendingAnimator:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroidx/typoanimation/BaseTypoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Landroidx/typoanimation/TypoAnimationView;->animationUnit:I

    const/16 p2, 0x1e

    .line 36
    iput p2, p0, Landroidx/typoanimation/TypoAnimationView;->interval:I

    const/4 p2, 0x2

    new-array p3, p2, [I

    .line 37
    fill-array-data p3, :array_0

    iput-object p3, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamFontScale:[I

    new-array p3, p2, [I

    .line 38
    fill-array-data p3, :array_1

    iput-object p3, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamOpacity:[I

    new-array p3, p2, [I

    .line 39
    fill-array-data p3, :array_2

    iput-object p3, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamXPosDelta:[I

    new-array p3, p2, [I

    .line 40
    fill-array-data p3, :array_3

    iput-object p3, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamYPosDelta:[I

    new-array p2, p2, [I

    .line 41
    fill-array-data p2, :array_4

    iput-object p2, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamRotate:[I

    .line 44
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p2, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimInterpolator:Landroid/view/animation/Interpolator;

    const-wide/16 p2, 0x12c

    .line 45
    iput-wide p2, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimDuration:J

    .line 48
    iput-boolean p1, p0, Landroidx/typoanimation/TypoAnimationView;->refreshInfoOnDraw:Z

    .line 88
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/typoanimation/TypoAnimationView;->aniInfos:Ljava/util/ArrayList;

    .line 229
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Landroidx/typoanimation/TypoAnimationView;->rotMat:Landroid/graphics/Matrix;

    .line 230
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Landroidx/typoanimation/TypoAnimationView;->prevMat:Landroid/graphics/Matrix;

    .line 233
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Landroidx/typoanimation/TypoAnimationView;->alphaPaint:Landroid/graphics/Paint;

    .line 234
    iput-boolean p1, p0, Landroidx/typoanimation/TypoAnimationView;->unicodeBlockchecked:Z

    const/4 p1, 0x0

    .line 490
    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->pendingAnimator:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private checkUnicodeBlock()Z
    .locals 9

    const-string v0, ""

    .line 238
    invoke-static {v0}, Landroidx/typoanimation/LOG;->debug(Ljava/lang/String;)I

    const/16 v0, 0x9

    new-array v0, v0, [Landroid/icu/lang/UCharacter$UnicodeBlock;

    .line 242
    sget-object v1, Landroid/icu/lang/UCharacter$UnicodeBlock;->DEVANAGARI:Landroid/icu/lang/UCharacter$UnicodeBlock;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/icu/lang/UCharacter$UnicodeBlock;->DEVANAGARI_EXTENDED:Landroid/icu/lang/UCharacter$UnicodeBlock;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v4, Landroid/icu/lang/UCharacter$UnicodeBlock;->BENGALI:Landroid/icu/lang/UCharacter$UnicodeBlock;

    aput-object v4, v0, v1

    const/4 v1, 0x3

    sget-object v4, Landroid/icu/lang/UCharacter$UnicodeBlock;->KANNADA:Landroid/icu/lang/UCharacter$UnicodeBlock;

    aput-object v4, v0, v1

    const/4 v1, 0x4

    sget-object v4, Landroid/icu/lang/UCharacter$UnicodeBlock;->GURMUKHI:Landroid/icu/lang/UCharacter$UnicodeBlock;

    aput-object v4, v0, v1

    const/4 v1, 0x5

    sget-object v4, Landroid/icu/lang/UCharacter$UnicodeBlock;->MALAYALAM:Landroid/icu/lang/UCharacter$UnicodeBlock;

    aput-object v4, v0, v1

    const/4 v1, 0x6

    sget-object v4, Landroid/icu/lang/UCharacter$UnicodeBlock;->MODI:Landroid/icu/lang/UCharacter$UnicodeBlock;

    aput-object v4, v0, v1

    const/4 v1, 0x7

    sget-object v4, Landroid/icu/lang/UCharacter$UnicodeBlock;->NEWA:Landroid/icu/lang/UCharacter$UnicodeBlock;

    aput-object v4, v0, v1

    const/16 v1, 0x8

    sget-object v4, Landroid/icu/lang/UCharacter$UnicodeBlock;->GUNJALA_GONDI:Landroid/icu/lang/UCharacter$UnicodeBlock;

    aput-object v4, v0, v1

    .line 276
    iget-object v1, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    .line 277
    iget-object v5, p0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    iget v4, v4, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->start:I

    invoke-interface {v5, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Landroid/icu/lang/UCharacter$UnicodeBlock;->of(I)Landroid/icu/lang/UCharacter$UnicodeBlock;

    move-result-object v4

    .line 278
    array-length v5, v0

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v0, v6

    .line 279
    invoke-virtual {v7}, Landroid/icu/lang/UCharacter$UnicodeBlock;->getID()I

    move-result v7

    invoke-virtual {v4}, Landroid/icu/lang/UCharacter$UnicodeBlock;->getID()I

    move-result v8

    if-ne v7, v8, :cond_1

    return v3

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private createAniInfos()V
    .locals 5

    .line 189
    iget-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->aniInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 190
    iget v0, p0, Landroidx/typoanimation/TypoAnimationView;->animationUnit:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->createAniInfosBasedOnWord()V

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 191
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->createAniInfosBasedOnCharacter()V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 192
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->createAniInfosBasedOnLine()V

    .line 195
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/4 v2, 0x0

    .line 196
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/2addr v3, v1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, p0, Landroidx/typoanimation/TypoAnimationView;->pivotYDelta:I

    return-void
.end method

.method private createAniInfosBasedOnCharacter()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 160
    :goto_0
    iget-object v3, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 161
    iget-object v3, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    .line 162
    iget-object v4, p0, Landroidx/typoanimation/TypoAnimationView;->aniInfos:Ljava/util/ArrayList;

    new-instance v5, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;

    add-int/lit8 v6, v2, 0x1

    invoke-direct {v5, p0, v3, v2, v0}, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;-><init>(Landroidx/typoanimation/TypoAnimationView;Landroidx/typoanimation/BaseTypoView$GraphemeCluster;IZ)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move v2, v6

    goto :goto_0

    .line 166
    :cond_0
    iget v0, p0, Landroidx/typoanimation/TypoAnimationView;->interval:I

    mul-int/2addr v2, v0

    int-to-long v0, v2

    iget-wide v2, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/typoanimation/TypoAnimationView;->totalDuration:J

    return-void
.end method

.method private createAniInfosBasedOnLine()V
    .locals 7

    .line 172
    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget v0, v0, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->py:I

    move v2, v1

    move v3, v2

    .line 175
    :goto_0
    iget-object v4, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 176
    iget-object v4, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    .line 177
    iget v5, v4, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->py:I

    if-eq v0, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    .line 181
    :cond_1
    iget-object v5, p0, Landroidx/typoanimation/TypoAnimationView;->aniInfos:Ljava/util/ArrayList;

    new-instance v6, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;

    invoke-direct {v6, p0, v4, v3, v1}, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;-><init>(Landroidx/typoanimation/TypoAnimationView;Landroidx/typoanimation/BaseTypoView$GraphemeCluster;IZ)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 185
    iget v0, p0, Landroidx/typoanimation/TypoAnimationView;->interval:I

    mul-int/2addr v3, v0

    int-to-long v0, v3

    iget-wide v2, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/typoanimation/TypoAnimationView;->totalDuration:J

    return-void
.end method

.method private createAniInfosBasedOnWord()V
    .locals 8

    .line 139
    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 142
    :goto_0
    iget-object v5, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 143
    iget-object v5, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    .line 145
    iget v6, v5, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->start:I

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 151
    :goto_1
    iget-object v6, p0, Landroidx/typoanimation/TypoAnimationView;->aniInfos:Ljava/util/ArrayList;

    new-instance v7, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;

    invoke-direct {v7, p0, v5, v3, v1}, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;-><init>(Landroidx/typoanimation/TypoAnimationView;Landroidx/typoanimation/BaseTypoView$GraphemeCluster;IZ)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 155
    iget v0, p0, Landroidx/typoanimation/TypoAnimationView;->interval:I

    mul-int/2addr v3, v0

    int-to-long v0, v3

    iget-wide v2, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimDuration:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/typoanimation/TypoAnimationView;->totalDuration:J

    return-void
.end method

.method private drawWithBitmap(Landroid/graphics/Canvas;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, ""

    .line 287
    invoke-static {v2}, Landroidx/typoanimation/LOG;->debug(Ljava/lang/String;)I

    .line 288
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 291
    :cond_0
    invoke-virtual {v3, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    return v4

    .line 292
    :cond_1
    iget-object v5, v0, Landroidx/typoanimation/TypoAnimationView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    iget-boolean v5, v0, Landroidx/typoanimation/TypoAnimationView;->unicodeBlockchecked:Z

    if-ne v5, v6, :cond_2

    return v4

    .line 294
    :cond_2
    invoke-static {v2}, Landroidx/typoanimation/LOG;->debug(Ljava/lang/String;)I

    .line 295
    iget-object v5, v0, Landroidx/typoanimation/TypoAnimationView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_4

    .line 296
    iput-boolean v6, v0, Landroidx/typoanimation/TypoAnimationView;->unicodeBlockchecked:Z

    .line 297
    invoke-direct/range {p0 .. p0}, Landroidx/typoanimation/TypoAnimationView;->checkUnicodeBlock()Z

    move-result v5

    if-nez v5, :cond_3

    return v4

    .line 298
    :cond_3
    invoke-virtual {v3}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-boolean v7, v0, Landroidx/typoanimation/BaseTypoView;->fakeBold:Z

    invoke-virtual {v5, v7}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 299
    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v0, Landroidx/typoanimation/TypoAnimationView;->bitmap:Landroid/graphics/Bitmap;

    .line 300
    new-instance v5, Landroid/graphics/Canvas;

    iget-object v7, v0, Landroidx/typoanimation/TypoAnimationView;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v5}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 303
    :cond_4
    new-instance v5, Landroid/graphics/Rect;

    iget-object v7, v0, Landroidx/typoanimation/TypoAnimationView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, v0, Landroidx/typoanimation/TypoAnimationView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v4, v4, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 304
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 306
    invoke-virtual {v0, v3}, Landroidx/typoanimation/BaseTypoView;->getVerticalOffset(Landroid/text/Layout;)I

    move-result v8

    const/4 v9, -0x1

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 312
    iget-object v10, v0, Landroidx/typoanimation/TypoAnimationView;->prevMat:Landroid/graphics/Matrix;

    invoke-virtual {v1, v10}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 314
    iget-object v10, v0, Landroidx/typoanimation/TypoAnimationView;->aniInfos:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;

    .line 315
    iget-object v12, v11, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget v12, v12, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->line:I

    invoke-virtual {v3, v12}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 316
    iget-object v13, v11, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget v13, v13, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->line:I

    invoke-virtual {v3, v13}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    .line 318
    iget-object v14, v11, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget v14, v14, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->line:I

    if-eq v9, v14, :cond_5

    .line 319
    invoke-virtual {v3, v14}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    iget-object v9, v11, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget v14, v9, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->px:I

    int-to-float v14, v14

    sub-float/2addr v4, v14

    float-to-int v4, v4

    .line 320
    iget v9, v9, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->line:I

    .line 322
    :cond_5
    iget-object v14, v11, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget v15, v14, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->px:I

    add-int/2addr v15, v4

    int-to-float v6, v15

    .line 323
    iget v14, v14, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->width:F

    add-float/2addr v6, v14

    float-to-int v6, v6

    invoke-virtual {v5, v15, v12, v6, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 326
    iget-object v6, v11, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget v14, v6, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->px:I

    add-int v15, v8, v12

    .line 328
    iget v6, v6, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->width:F

    sub-int/2addr v13, v12

    .line 331
    iget v12, v11, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->fontScale:F

    mul-float v16, v6, v12

    int-to-float v13, v13

    mul-float/2addr v12, v13

    int-to-float v14, v14

    sub-float v6, v6, v16

    const/high16 v17, 0x40000000    # 2.0f

    div-float v6, v6, v17

    move-object/from16 v18, v3

    .line 333
    iget v3, v11, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->xDelta:F

    add-float/2addr v6, v3

    add-float/2addr v14, v6

    float-to-int v3, v14

    int-to-float v6, v15

    sub-float/2addr v13, v12

    div-float v13, v13, v17

    .line 334
    iget v14, v11, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->yDelta:F

    add-float/2addr v13, v14

    add-float/2addr v6, v13

    float-to-int v6, v6

    int-to-float v13, v3

    add-float v14, v13, v16

    float-to-int v14, v14

    int-to-float v15, v6

    move/from16 v19, v4

    add-float v4, v15, v12

    float-to-int v4, v4

    .line 335
    invoke-virtual {v7, v3, v6, v14, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 336
    iget-object v3, v0, Landroidx/typoanimation/TypoAnimationView;->alphaPaint:Landroid/graphics/Paint;

    iget v4, v11, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->opacity:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 338
    iget-object v3, v0, Landroidx/typoanimation/TypoAnimationView;->rotMat:Landroid/graphics/Matrix;

    iget v4, v11, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->rotate:F

    div-float v16, v16, v17

    add-float v13, v13, v16

    div-float v12, v12, v17

    add-float/2addr v15, v12

    invoke-virtual {v3, v4, v13, v15}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 339
    iget-object v3, v0, Landroidx/typoanimation/TypoAnimationView;->rotMat:Landroid/graphics/Matrix;

    iget-object v4, v0, Landroidx/typoanimation/TypoAnimationView;->prevMat:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 340
    iget-object v3, v0, Landroidx/typoanimation/TypoAnimationView;->rotMat:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 342
    iget-object v3, v0, Landroidx/typoanimation/TypoAnimationView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v4, v0, Landroidx/typoanimation/TypoAnimationView;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v7, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v3, v18

    move/from16 v4, v19

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 344
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 345
    invoke-static {v2}, Landroidx/typoanimation/LOG;->debug(Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method private needToUpdate()V
    .locals 1

    const/4 v0, 0x1

    .line 485
    iput-boolean v0, p0, Landroidx/typoanimation/TypoAnimationView;->refreshInfoOnDraw:Z

    .line 486
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private startPendingAnimator()V
    .locals 3

    .line 508
    iget-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->pendingAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    return-void

    .line 509
    :cond_0
    iget-wide v1, p0, Landroidx/typoanimation/TypoAnimationView;->totalDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 510
    iget-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->pendingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    const/4 v0, 0x0

    .line 511
    iput-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->pendingAnimator:Landroid/animation/Animator;

    return-void
.end method

.method private updateAniInfos()V
    .locals 9

    .line 204
    iget-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->aniInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;

    const/4 v2, 0x0

    .line 205
    iput-boolean v2, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->visible:Z

    .line 206
    iget v2, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->group:I

    iget v3, p0, Landroidx/typoanimation/TypoAnimationView;->interval:I

    mul-int v4, v2, v3

    int-to-float v4, v4

    iget-wide v5, p0, Landroidx/typoanimation/TypoAnimationView;->totalDuration:J

    long-to-float v7, v5

    iget v8, p0, Landroidx/typoanimation/BaseTypoView;->progress:F

    mul-float/2addr v7, v8

    cmpg-float v4, v4, v7

    if-gez v4, :cond_0

    const/4 v4, 0x1

    .line 207
    iput-boolean v4, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->visible:Z

    long-to-float v4, v5

    mul-float/2addr v4, v8

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v4, v2

    .line 208
    iget-wide v2, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimDuration:J

    long-to-float v2, v2

    div-float/2addr v4, v2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v4, v2

    if-lez v3, :cond_1

    move v4, v2

    .line 210
    :cond_1
    iget-object v2, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 212
    iget-object v3, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamFontScale:[I

    invoke-virtual {p0, v3, v2}, Landroidx/typoanimation/TypoAnimationView;->getAniParam([IF)F

    move-result v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->fontScale:F

    .line 213
    iget-object v3, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamOpacity:[I

    invoke-virtual {p0, v3, v2}, Landroidx/typoanimation/TypoAnimationView;->getAniParam([IF)F

    move-result v3

    iput v3, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->opacity:F

    .line 214
    iget-object v3, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamXPosDelta:[I

    invoke-virtual {p0, v3, v2}, Landroidx/typoanimation/TypoAnimationView;->getAniParam([IF)F

    move-result v3

    iput v3, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->xDelta:F

    .line 215
    iget-object v3, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamYPosDelta:[I

    invoke-virtual {p0, v3, v2}, Landroidx/typoanimation/TypoAnimationView;->getAniParam([IF)F

    move-result v3

    iput v3, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->yDelta:F

    .line 216
    iget-object v3, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamRotate:[I

    invoke-virtual {p0, v3, v2}, Landroidx/typoanimation/TypoAnimationView;->getAniParam([IF)F

    move-result v2

    iput v2, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->rotate:F

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method getAniParam([IF)F
    .locals 2

    const/4 p0, 0x0

    .line 200
    aget p0, p1, p0

    int-to-float v0, p0

    const/4 v1, 0x1

    aget p1, p1, v1

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p2, p0

    add-float/2addr v0, p2

    return v0
.end method

.method public getAniParamFontScale()[I
    .locals 0

    .line 421
    iget-object p0, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamFontScale:[I

    return-object p0
.end method

.method public getAniParamOpacity()[I
    .locals 0

    .line 430
    iget-object p0, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamOpacity:[I

    return-object p0
.end method

.method public getAniParamRotate()[I
    .locals 0

    .line 476
    iget-object p0, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamRotate:[I

    return-object p0
.end method

.method public getAniParamXPosDelta()[I
    .locals 0

    .line 458
    iget-object p0, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamXPosDelta:[I

    return-object p0
.end method

.method public getAniParamYPosDelta()[I
    .locals 0

    .line 467
    iget-object p0, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamYPosDelta:[I

    return-object p0
.end method

.method public getAnimationUnit()I
    .locals 0

    .line 395
    iget p0, p0, Landroidx/typoanimation/TypoAnimationView;->animationUnit:I

    return p0
.end method

.method public getInterval()I
    .locals 0

    .line 404
    iget p0, p0, Landroidx/typoanimation/TypoAnimationView;->interval:I

    return p0
.end method

.method public getTotalDuration()J
    .locals 2

    .line 413
    iget-boolean v0, p0, Landroidx/typoanimation/TypoAnimationView;->refreshInfoOnDraw:Z

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {p0}, Landroidx/typoanimation/TypoAnimationView;->prepare()V

    const/4 v0, 0x0

    .line 415
    iput-boolean v0, p0, Landroidx/typoanimation/TypoAnimationView;->refreshInfoOnDraw:Z

    .line 417
    :cond_0
    iget-wide v0, p0, Landroidx/typoanimation/TypoAnimationView;->totalDuration:J

    return-wide v0
.end method

.method public getUnitAnimDuration()J
    .locals 2

    .line 449
    iget-wide v0, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimDuration:J

    return-wide v0
.end method

.method public getUnitAnimInterpolator()Landroid/view/animation/Interpolator;
    .locals 0

    .line 440
    iget-object p0, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method init(Landroid/util/AttributeSet;I)V
    .locals 2

    .line 106
    invoke-super {p0, p1, p2}, Landroidx/typoanimation/BaseTypoView;->init(Landroid/util/AttributeSet;I)V

    .line 107
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    sget-object v0, Landroidx/typoanimation/R$styleable;->TypoAnimationView:[I

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 108
    sget p2, Landroidx/typoanimation/R$styleable;->TypoAnimationView_progress:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Landroidx/typoanimation/BaseTypoView;->progress:F

    .line 111
    :cond_0
    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->paint:Landroid/text/TextPaint;

    .line 112
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 113
    iget-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 114
    iget-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 115
    iget-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->paint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLetterSpacing()F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    .line 352
    invoke-super/range {p0 .. p1}, Landroidx/typoanimation/BaseTypoView;->onDraw(Landroid/graphics/Canvas;)V

    .line 354
    iget-object v1, v0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    instance-of v12, v1, Landroid/text/Spanned;

    .line 355
    iget-boolean v1, v0, Landroidx/typoanimation/TypoAnimationView;->refreshInfoOnDraw:Z

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroidx/typoanimation/TypoAnimationView;->prepare()V

    .line 357
    iput-boolean v13, v0, Landroidx/typoanimation/TypoAnimationView;->refreshInfoOnDraw:Z

    .line 360
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroidx/typoanimation/TypoAnimationView;->drawWithBitmap(Landroid/graphics/Canvas;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 361
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 362
    iget-object v1, v0, Landroidx/typoanimation/TypoAnimationView;->prevMat:Landroid/graphics/Matrix;

    invoke-virtual {v11, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v14

    .line 365
    iget-object v1, v0, Landroidx/typoanimation/TypoAnimationView;->aniInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;

    .line 366
    iget-boolean v2, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->visible:Z

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, v0, Landroidx/typoanimation/TypoAnimationView;->paint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 369
    iget-object v2, v0, Landroidx/typoanimation/TypoAnimationView;->paint:Landroid/text/TextPaint;

    iget-boolean v3, v0, Landroidx/typoanimation/BaseTypoView;->fakeBold:Z

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 370
    iget-object v2, v0, Landroidx/typoanimation/TypoAnimationView;->paint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 371
    iget-object v2, v0, Landroidx/typoanimation/TypoAnimationView;->paint:Landroid/text/TextPaint;

    iget v3, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->fontScale:F

    mul-float/2addr v3, v14

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 372
    iget-object v2, v0, Landroidx/typoanimation/TypoAnimationView;->paint:Landroid/text/TextPaint;

    iget v3, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->opacity:F

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    if-eqz v12, :cond_3

    .line 375
    iget-object v2, v0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    iget-object v3, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget v4, v3, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->start:I

    iget v3, v3, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->end:I

    const-class v5, Landroid/text/style/CharacterStyle;

    invoke-interface {v2, v4, v3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    .line 376
    array-length v3, v2

    move v4, v13

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 377
    iget-object v6, v0, Landroidx/typoanimation/TypoAnimationView;->paint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 381
    :cond_3
    iget-object v2, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget v3, v2, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->px:I

    int-to-float v3, v3

    iget v4, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->xDelta:F

    add-float v7, v3, v4

    .line 382
    iget v3, v2, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->py:I

    int-to-float v3, v3

    iget v4, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->yDelta:F

    add-float v8, v3, v4

    .line 383
    iget-object v3, v0, Landroidx/typoanimation/TypoAnimationView;->rotMat:Landroid/graphics/Matrix;

    iget v4, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->rotate:F

    iget v2, v2, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->width:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    add-float/2addr v2, v7

    iget v5, v0, Landroidx/typoanimation/TypoAnimationView;->pivotYDelta:I

    int-to-float v5, v5

    add-float/2addr v5, v8

    invoke-virtual {v3, v4, v2, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 384
    iget-object v2, v0, Landroidx/typoanimation/TypoAnimationView;->rotMat:Landroid/graphics/Matrix;

    iget-object v3, v0, Landroidx/typoanimation/TypoAnimationView;->prevMat:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 385
    iget-object v2, v0, Landroidx/typoanimation/TypoAnimationView;->rotMat:Landroid/graphics/Matrix;

    invoke-virtual {v11, v2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 386
    iget-object v2, v0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    iget-object v3, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget v4, v3, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->start:I

    iget v5, v3, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->end:I

    const/4 v6, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    iget-object v1, v1, Landroidx/typoanimation/TypoAnimationView$AnimationInfo;->info:Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget-boolean v10, v1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->isRtl:Z

    iget-object v3, v0, Landroidx/typoanimation/TypoAnimationView;->paint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    move-object/from16 v16, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v9

    move v9, v10

    move-object/from16 v10, v16

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 390
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method prepare()V
    .locals 1

    .line 120
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Landroidx/typoanimation/TypoAnimationView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Landroidx/typoanimation/TypoAnimationView;->unicodeBlockchecked:Z

    .line 124
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->createAniInfos()V

    .line 125
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->updateAniInfos()V

    return-void
.end method

.method prepareText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 130
    invoke-super {p0, p1}, Landroidx/typoanimation/BaseTypoView;->prepareText(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroidx/typoanimation/TypoAnimationView;->prepare()V

    .line 135
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->startPendingAnimator()V

    return-void
.end method

.method public setAniParamFontScale([I)V
    .locals 0

    .line 425
    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamFontScale:[I

    .line 426
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->needToUpdate()V

    return-void
.end method

.method public setAniParamOpacity([I)V
    .locals 0

    .line 434
    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamOpacity:[I

    .line 435
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->needToUpdate()V

    return-void
.end method

.method public setAniParamRotate([I)V
    .locals 0

    .line 480
    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamRotate:[I

    .line 481
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->needToUpdate()V

    return-void
.end method

.method public setAniParamXPosDelta([I)V
    .locals 0

    .line 462
    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamXPosDelta:[I

    .line 463
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->needToUpdate()V

    return-void
.end method

.method public setAniParamYPosDelta([I)V
    .locals 0

    .line 471
    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->aniParamYPosDelta:[I

    .line 472
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->needToUpdate()V

    return-void
.end method

.method public setAnimationUnit(I)V
    .locals 0

    .line 399
    iput p1, p0, Landroidx/typoanimation/TypoAnimationView;->animationUnit:I

    .line 400
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->needToUpdate()V

    return-void
.end method

.method public setInterval(I)V
    .locals 0

    .line 408
    iput p1, p0, Landroidx/typoanimation/TypoAnimationView;->interval:I

    .line 409
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->needToUpdate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 223
    invoke-super {p0, p1}, Landroidx/typoanimation/BaseTypoView;->setProgress(F)V

    .line 225
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->updateAniInfos()V

    .line 226
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setUnitAnimDuration(J)V
    .locals 0

    .line 453
    iput-wide p1, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimDuration:J

    .line 454
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->needToUpdate()V

    return-void
.end method

.method public setUnitAnimInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 444
    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->unitAnimInterpolator:Landroid/view/animation/Interpolator;

    .line 445
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->needToUpdate()V

    return-void
.end method

.method public startAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 5

    .line 493
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 494
    iget-wide v1, p0, Landroidx/typoanimation/TypoAnimationView;->totalDuration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 495
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->createAniInfos()V

    .line 496
    invoke-direct {p0}, Landroidx/typoanimation/TypoAnimationView;->updateAniInfos()V

    .line 498
    iget-wide v0, p0, Landroidx/typoanimation/TypoAnimationView;->totalDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 499
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    const/4 p1, 0x0

    .line 500
    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->pendingAnimator:Landroid/animation/Animator;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 502
    invoke-virtual {p0, v0}, Landroidx/typoanimation/TypoAnimationView;->setProgress(F)V

    .line 503
    iput-object p1, p0, Landroidx/typoanimation/TypoAnimationView;->pendingAnimator:Landroid/animation/Animator;

    :goto_0
    return-void
.end method
