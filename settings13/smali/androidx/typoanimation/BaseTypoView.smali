.class public Landroidx/typoanimation/BaseTypoView;
.super Landroid/widget/TextView;
.source "BaseTypoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/typoanimation/BaseTypoView$GraphemeCluster;
    }
.end annotation


# static fields
.field public static final PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private callFirstTime:Z

.field private debugPaint:Landroid/graphics/Paint;

.field private drawDebug:Z

.field private drawTextView:Z

.field fakeBold:Z

.field graphemes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/typoanimation/BaseTypoView$GraphemeCluster;",
            ">;"
        }
    .end annotation
.end field

.field progress:F

.field textInternal:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Landroidx/typoanimation/BaseTypoView$1;

    const-string v1, "progress"

    invoke-direct {v0, v1}, Landroidx/typoanimation/BaseTypoView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroidx/typoanimation/BaseTypoView;->PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Landroidx/typoanimation/BaseTypoView;->callFirstTime:Z

    .line 29
    iput-boolean p1, p0, Landroidx/typoanimation/BaseTypoView;->fakeBold:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Landroidx/typoanimation/BaseTypoView;->progress:F

    .line 34
    iput-boolean p1, p0, Landroidx/typoanimation/BaseTypoView;->drawTextView:Z

    .line 35
    iput-boolean p1, p0, Landroidx/typoanimation/BaseTypoView;->drawDebug:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p0, v0, p1}, Landroidx/typoanimation/BaseTypoView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Landroidx/typoanimation/BaseTypoView;->callFirstTime:Z

    .line 29
    iput-boolean p1, p0, Landroidx/typoanimation/BaseTypoView;->fakeBold:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Landroidx/typoanimation/BaseTypoView;->progress:F

    .line 34
    iput-boolean p1, p0, Landroidx/typoanimation/BaseTypoView;->drawTextView:Z

    .line 35
    iput-boolean p1, p0, Landroidx/typoanimation/BaseTypoView;->drawDebug:Z

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p0, p2, p1}, Landroidx/typoanimation/BaseTypoView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Landroidx/typoanimation/BaseTypoView;->callFirstTime:Z

    .line 29
    iput-boolean p1, p0, Landroidx/typoanimation/BaseTypoView;->fakeBold:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 32
    iput v0, p0, Landroidx/typoanimation/BaseTypoView;->progress:F

    .line 34
    iput-boolean p1, p0, Landroidx/typoanimation/BaseTypoView;->drawTextView:Z

    .line 35
    iput-boolean p1, p0, Landroidx/typoanimation/BaseTypoView;->drawDebug:Z

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p0, p2, p3}, Landroidx/typoanimation/BaseTypoView;->init(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Landroidx/typoanimation/BaseTypoView;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroidx/typoanimation/BaseTypoView;->createTextInternal(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private createTextInternal(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private generateGraphemes(Ljava/lang/String;[F)V
    .locals 13

    .line 362
    invoke-static {}, Landroid/icu/text/BreakIterator;->getCharacterInstance()Landroid/icu/text/BreakIterator;

    move-result-object v0

    .line 363
    invoke-virtual {v0, p1}, Landroid/icu/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->first()I

    move-result v1

    .line 365
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->next()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    move v12, v2

    move v2, v1

    move v1, v12

    const/4 v6, -0x1

    if-eq v1, v6, :cond_5

    const/4 v6, 0x0

    const-string v7, ""

    move v8, v2

    move-object v9, v7

    :goto_1
    const-string v10, ", "

    if-ge v8, v1, :cond_0

    .line 373
    aget v11, p2, v8

    add-float/2addr v6, v11

    .line 374
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, p2, v8

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 376
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v8, v2

    :goto_2
    if-ge v8, v1, :cond_1

    .line 378
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Landroid/icu/lang/UCharacter;->getName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Landroid/icu/lang/UCharacter$UnicodeBlock;->of(I)Landroid/icu/lang/UCharacter$UnicodeBlock;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 381
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 382
    invoke-static {v7}, Landroidx/typoanimation/LOG;->debug(Ljava/lang/String;)I

    .line 385
    aget v7, p2, v2

    const v8, 0x3a83126f    # 0.001f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    if-eqz v4, :cond_2

    .line 386
    iput v1, v4, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->end:I

    goto :goto_4

    :cond_2
    if-eqz v5, :cond_3

    .line 388
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/icu/lang/UCharacter;->getType(I)I

    move-result v5

    const/4 v7, 0x5

    if-ne v5, v7, :cond_3

    .line 389
    iput v1, v4, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->end:I

    .line 390
    iget v2, v4, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->width:F

    add-float/2addr v2, v6

    iput v2, v4, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->width:F

    goto :goto_3

    .line 392
    :cond_3
    new-instance v4, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    invoke-direct {v4, p0, v2, v1, v6}, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;-><init>(Landroidx/typoanimation/BaseTypoView;IIF)V

    .line 393
    iget-object v2, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v2, v1, -0x1

    .line 395
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v2

    const/16 v5, 0x9

    if-ne v2, v5, :cond_4

    const/4 v2, 0x1

    move v5, v2

    goto :goto_4

    :cond_4
    move v5, v3

    .line 399
    :goto_4
    invoke-virtual {v0}, Landroid/icu/text/BreakIterator;->next()I

    move-result v2

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private handleEllipsize(Landroid/text/Layout;)V
    .locals 7

    .line 250
    invoke-virtual {p0}, Landroidx/typoanimation/BaseTypoView;->getSingleLine()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "\u2026"

    if-eqz v0, :cond_5

    .line 251
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-array v0, v1, [F

    .line 254
    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 255
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    .line 257
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    .line 258
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result p1

    .line 259
    iget-object v4, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    new-instance v5, Landroidx/typoanimation/BaseTypoView$3;

    invoke-direct {v5, p0, p1, v3}, Landroidx/typoanimation/BaseTypoView$3;-><init>(Landroidx/typoanimation/BaseTypoView;II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 265
    new-instance v3, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget-object v4, p0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v1

    iget-object v1, p0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    aget v0, v0, v2

    invoke-direct {v3, p0, v4, v1, v0}, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;-><init>(Landroidx/typoanimation/BaseTypoView;IIF)V

    .line 266
    iput v2, v3, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->line:I

    .line 267
    iput-boolean v2, v3, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->isRtl:Z

    .line 268
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_1

    .line 269
    iget-object p0, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 270
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_2

    .line 271
    iget-object p0, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 272
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_7

    .line 274
    :goto_0
    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 275
    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget v0, v0, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->start:I

    if-lt v0, p1, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    :cond_4
    :goto_1
    iget-object p0, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 279
    :cond_5
    invoke-virtual {p0}, Landroidx/typoanimation/BaseTypoView;->getSingleLine()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v4, :cond_7

    .line 280
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    sub-int/2addr v0, v1

    .line 281
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-nez v4, :cond_6

    return-void

    :cond_6
    new-array v4, v1, [F

    .line 284
    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 285
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    .line 287
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    .line 288
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    add-int/2addr v3, p1

    .line 289
    iget-object p1, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    new-instance v5, Landroidx/typoanimation/BaseTypoView$4;

    invoke-direct {v5, p0, v3}, Landroidx/typoanimation/BaseTypoView$4;-><init>(Landroidx/typoanimation/BaseTypoView;I)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 295
    new-instance p1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    iget-object v3, p0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, v1

    iget-object v1, p0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    aget v4, v4, v2

    invoke-direct {p1, p0, v3, v1, v4}, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;-><init>(Landroidx/typoanimation/BaseTypoView;IIF)V

    .line 296
    iput v0, p1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->line:I

    .line 297
    iput-boolean v2, p1, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->isRtl:Z

    .line 298
    iget-object p0, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    return-void
.end method

.method private swap(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/typoanimation/BaseTypoView$GraphemeCluster;",
            ">;II)V"
        }
    .end annotation

    :goto_0
    if-gt p2, p3, :cond_0

    .line 353
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    .line 354
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-virtual {p1, p2, p0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTextOrders(Landroid/text/Layout;)V
    .locals 10

    .line 303
    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v2, v0, :cond_8

    .line 310
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineStart(I)I

    .line 311
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 313
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    if-ne v6, v4, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v1

    .line 316
    :goto_1
    iget-object v7, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    .line 317
    iget v9, v8, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->start:I

    invoke-virtual {p1, v9}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v9

    iput-boolean v9, v8, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->isRtl:Z

    goto :goto_2

    :cond_2
    move v7, v4

    .line 320
    :goto_3
    iget-object v8, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_6

    .line 321
    iget-object v8, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    .line 322
    iget v9, v8, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->start:I

    if-lt v9, v5, :cond_3

    goto :goto_5

    .line 324
    :cond_3
    iput v2, v8, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->line:I

    .line 325
    invoke-virtual {p1, v9}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v8

    if-eq v6, v8, :cond_5

    if-ne v7, v4, :cond_4

    move v7, v3

    goto :goto_4

    .line 330
    :cond_4
    iget-object v6, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    add-int/lit8 v9, v3, -0x1

    invoke-direct {p0, v6, v7, v9}, Landroidx/typoanimation/BaseTypoView;->swap(Ljava/util/ArrayList;II)V

    move v7, v4

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v6, v8

    goto :goto_3

    :cond_6
    :goto_5
    if-eq v7, v4, :cond_7

    .line 337
    iget-object v4, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-direct {p0, v4, v7, v5}, Landroidx/typoanimation/BaseTypoView;->swap(Ljava/util/ArrayList;II)V

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p1

    if-eq p1, v4, :cond_9

    .line 343
    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    new-instance v1, Landroidx/typoanimation/BaseTypoView$5;

    invoke-direct {v1, p0, p1}, Landroidx/typoanimation/BaseTypoView$5;-><init>(Landroidx/typoanimation/BaseTypoView;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_9
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 0

    .line 74
    iget p0, p0, Landroidx/typoanimation/BaseTypoView;->progress:F

    return p0
.end method

.method getSingleLine()Z
    .locals 1

    .line 243
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getVerticalOffset(Landroid/text/Layout;)I
    .locals 3

    .line 182
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    .line 183
    invoke-virtual {p0}, Landroid/widget/TextView;->getGravity()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 186
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/text/Layout;->getHeight()I

    move-result p1

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    if-gez p0, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    :cond_2
    :goto_0
    return v0
.end method

.method init(Landroid/util/AttributeSet;I)V
    .locals 0

    .line 98
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/typoanimation/BaseTypoView;->debugPaint:Landroid/graphics/Paint;

    .line 99
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Landroidx/typoanimation/BaseTypoView$2;

    invoke-direct {p2, p0}, Landroidx/typoanimation/BaseTypoView$2;-><init>(Landroidx/typoanimation/BaseTypoView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 114
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 115
    iput-boolean p1, p0, Landroidx/typoanimation/BaseTypoView;->callFirstTime:Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 143
    iget-boolean v0, p0, Landroidx/typoanimation/BaseTypoView;->callFirstTime:Z

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    invoke-super {p0, v0}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 145
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->isFakeBoldText()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/typoanimation/BaseTypoView;->fakeBold:Z

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Landroidx/typoanimation/BaseTypoView;->callFirstTime:Z

    .line 149
    :cond_0
    iget-boolean v0, p0, Landroidx/typoanimation/BaseTypoView;->drawTextView:Z

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 150
    :cond_1
    iget-boolean v0, p0, Landroidx/typoanimation/BaseTypoView;->drawDebug:Z

    if-nez v0, :cond_2

    return-void

    .line 152
    :cond_2
    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView;->debugPaint:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 153
    iget-object v0, p0, Landroidx/typoanimation/BaseTypoView;->debugPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 157
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Landroidx/typoanimation/BaseTypoView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 160
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    .line 162
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    .line 163
    invoke-virtual {p0, v0}, Landroidx/typoanimation/BaseTypoView;->getVerticalOffset(Landroid/text/Layout;)I

    move-result v2

    .line 165
    iget-object v3, p0, Landroidx/typoanimation/BaseTypoView;->debugPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x10000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object v3, p0, Landroidx/typoanimation/BaseTypoView;->debugPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 169
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 171
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v5, v1

    .line 172
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v6, v1

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "left : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", right: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroidx/typoanimation/LOG;->debug(Ljava/lang/String;)I

    .line 174
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    add-int/2addr v7, v2

    .line 175
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v8

    add-int/2addr v8, v2

    .line 176
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v5, v7, v6, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Landroidx/typoanimation/BaseTypoView;->debugPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method prepareText(Ljava/lang/CharSequence;)V
    .locals 13

    .line 197
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    new-array v1, v1, [F

    .line 201
    invoke-virtual {v0}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/String;[F)I

    .line 203
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    .line 204
    invoke-virtual {p0, v0}, Landroidx/typoanimation/BaseTypoView;->getVerticalOffset(Landroid/text/Layout;)I

    move-result v3

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/typoanimation/LOG;->debug(Ljava/lang/String;)I

    .line 207
    iget-object v4, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 208
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Landroidx/typoanimation/BaseTypoView;->generateGraphemes(Ljava/lang/String;[F)V

    .line 209
    invoke-direct {p0, v0}, Landroidx/typoanimation/BaseTypoView;->updateTextOrders(Landroid/text/Layout;)V

    .line 210
    invoke-direct {p0, v0}, Landroidx/typoanimation/BaseTypoView;->handleEllipsize(Landroid/text/Layout;)V

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroidx/typoanimation/LOG;->debug(Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v8, v1

    move v7, v4

    move v9, v6

    move v10, v9

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;

    .line 221
    iget v12, v11, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->line:I

    if-eq v12, v8, :cond_2

    .line 223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroidx/typoanimation/LOG;->debug(Ljava/lang/String;)I

    .line 224
    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    .line 225
    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineRight(I)F

    move-result v7

    .line 226
    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v9

    .line 227
    invoke-virtual {v0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    if-ne v8, v1, :cond_1

    const/4 v8, 0x1

    move v10, v8

    goto :goto_1

    :cond_1
    move v10, v6

    :goto_1
    move v8, v12

    :cond_2
    add-int v12, v9, v3

    .line 230
    iput v12, v11, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->py:I

    if-eqz v10, :cond_3

    .line 232
    iget v12, v11, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->width:F

    sub-float/2addr v7, v12

    float-to-int v12, v7

    add-int/2addr v12, v2

    .line 233
    iput v12, v11, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->px:I

    goto :goto_0

    :cond_3
    float-to-int v12, v4

    add-int/2addr v12, v2

    .line 235
    iput v12, v11, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->px:I

    .line 236
    iget v11, v11, Landroidx/typoanimation/BaseTypoView$GraphemeCluster;->width:F

    add-float/2addr v4, v11

    goto :goto_0

    .line 239
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Graphemes Size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/typoanimation/BaseTypoView;->graphemes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/typoanimation/LOG;->debug(Ljava/lang/String;)I

    return-void
.end method

.method public setProgress(F)V
    .locals 0

    .line 78
    iput p1, p0, Landroidx/typoanimation/BaseTypoView;->progress:F

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    .line 120
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 122
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/typoanimation/BaseTypoView;->createTextInternal(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/typoanimation/BaseTypoView;->textInternal:Ljava/lang/CharSequence;

    .line 124
    invoke-virtual {p0, p1}, Landroidx/typoanimation/BaseTypoView;->prepareText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
