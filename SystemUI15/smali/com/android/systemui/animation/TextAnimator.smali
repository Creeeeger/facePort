.class public final Lcom/android/systemui/animation/TextAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final animator:Landroid/animation/ValueAnimator;

.field public final fontVariationUtils:Lcom/android/systemui/animation/FontVariationUtils;

.field public final invalidateCallback:Lkotlin/jvm/functions/Function0;

.field public final textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

.field public final typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCacheImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/animation/TextAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/animation/TextAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-class v0, Lcom/android/systemui/animation/TextAnimator;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/systemui/animation/TextAnimator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/text/Layout;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Layout;",
            "Ljava/lang/Integer;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/animation/TextAnimator;->invalidateCallback:Lkotlin/jvm/functions/Function0;

    new-instance p3, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;-><init>(Landroid/graphics/Typeface;)V

    iput-object p3, p0, Lcom/android/systemui/animation/TextAnimator;->typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCacheImpl;

    new-instance v0, Lcom/android/systemui/animation/TextInterpolator;

    invoke-direct {v0, p1, p3, p2}, Lcom/android/systemui/animation/TextInterpolator;-><init>(Landroid/text/Layout;Lcom/android/systemui/animation/TypefaceVariantCache;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    const/4 p1, 0x1

    new-array p1, p1, [F

    const/high16 p3, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    aput p3, p1, v0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/animation/TextAnimator$animator$1$1;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/animation/TextAnimator$animator$1$1;-><init>(Lcom/android/systemui/animation/TextAnimator;Ljava/lang/Integer;)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/android/systemui/animation/TextAnimator$animator$1$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/animation/TextAnimator$animator$1$2;-><init>(Lcom/android/systemui/animation/TextAnimator;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object p1, p0, Lcom/android/systemui/animation/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    new-instance p1, Lcom/android/systemui/animation/FontVariationUtils;

    invoke-direct {p1}, Lcom/android/systemui/animation/FontVariationUtils;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/TextAnimator;->fontVariationUtils:Lcom/android/systemui/animation/FontVariationUtils;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/text/Layout;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/TextAnimator;-><init>(Landroid/text/Layout;Ljava/lang/Integer;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static setTextStyle$default(Lcom/android/systemui/animation/TextAnimator;ILjava/lang/Integer;ZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;)V
    .locals 13

    move v0, p1

    move-object v1, p0

    iget-object v2, v1, Lcom/android/systemui/animation/TextAnimator;->fontVariationUtils:Lcom/android/systemui/animation/FontVariationUtils;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/animation/FontVariationUtils;->isUpdated:Z

    if-ltz v0, :cond_0

    iget v3, v2, Lcom/android/systemui/animation/FontVariationUtils;->mWeight:I

    if-eq v3, v0, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/animation/FontVariationUtils;->isUpdated:Z

    iput v0, v2, Lcom/android/systemui/animation/FontVariationUtils;->mWeight:I

    :cond_0
    iget v0, v2, Lcom/android/systemui/animation/FontVariationUtils;->mWeight:I

    const-string v3, ""

    if-ltz v0, :cond_1

    const-string v4, "\'wght\' "

    invoke-static {v0, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v3

    :goto_0
    iget v4, v2, Lcom/android/systemui/animation/FontVariationUtils;->mWidth:I

    const-string v5, ", "

    if-ltz v4, :cond_3

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_2
    move-object v4, v5

    :goto_1
    iget v6, v2, Lcom/android/systemui/animation/FontVariationUtils;->mWidth:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'wdth\' "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget v4, v2, Lcom/android/systemui/animation/FontVariationUtils;->mOpticalSize:I

    if-ltz v4, :cond_5

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v3

    goto :goto_2

    :cond_4
    move-object v4, v5

    :goto_2
    iget v6, v2, Lcom/android/systemui/animation/FontVariationUtils;->mOpticalSize:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'opsz\' "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget v4, v2, Lcom/android/systemui/animation/FontVariationUtils;->mRoundness:I

    if-ltz v4, :cond_7

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v5, v3

    :cond_6
    iget v4, v2, Lcom/android/systemui/animation/FontVariationUtils;->mRoundness:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'ROND\' "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    iget-boolean v2, v2, Lcom/android/systemui/animation/FontVariationUtils;->isUpdated:Z

    if-eqz v2, :cond_8

    move-object v3, v0

    :cond_8
    const/4 v12, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    move-object v0, p0

    move-object v1, v3

    move-object v3, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move-wide/from16 v9, p7

    move-object/from16 v11, p9

    invoke-virtual/range {v0 .. v12}, Lcom/android/systemui/animation/TextAnimator;->setTextStyleInternal(Ljava/lang/String;FLjava/lang/Integer;FZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;Z)V

    return-void
.end method


# virtual methods
.method public final setTextStyleInternal(Ljava/lang/String;FLjava/lang/Integer;FZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;Z)V
    .locals 14

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v9, p8

    move-object/from16 v12, p11

    iget-object v4, v1, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    if-eqz p5, :cond_0

    :try_start_0
    iget-object v0, v1, Lcom/android/systemui/animation/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-virtual {v4}, Lcom/android/systemui/animation/TextInterpolator;->rebase()V

    goto :goto_0

    :catch_0
    move-exception v0

    move-wide/from16 v10, p9

    goto/16 :goto_4

    :cond_0
    :goto_0
    const/4 v0, 0x0

    cmpl-float v6, v3, v0

    if-ltz v6, :cond_1

    iget-object v6, v4, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_1
    if-eqz v2, :cond_3

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    iget-object v6, v4, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    iget-object v7, v1, Lcom/android/systemui/animation/TextAnimator;->typefaceCache:Lcom/android/systemui/animation/TypefaceVariantCacheImpl;

    invoke-virtual {v7, p1}, Lcom/android/systemui/animation/TypefaceVariantCacheImpl;->getTypefaceForVariant(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_3
    :goto_1
    if-eqz p3, :cond_4

    iget-object v6, v4, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    :cond_4
    cmpl-float v0, v5, v0

    if-ltz v0, :cond_5

    iget-object v0, v4, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    :cond_5
    iget-object v0, v4, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    iget-object v6, v4, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-static {v0, v6}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6}, Lcom/android/systemui/animation/TextInterpolator;->updatePositionsAndFonts(Ljava/util/List;Z)V

    if-eqz p5, :cond_9

    iget-object v0, v1, Lcom/android/systemui/animation/TextAnimator;->animator:Landroid/animation/ValueAnimator;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide/from16 v10, p9

    :try_start_1
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, v1, Lcom/android/systemui/animation/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, -0x1

    cmp-long v6, p6, v6

    if-nez v6, :cond_6

    const-wide/16 v6, 0x12c

    goto :goto_2

    :cond_6
    move-wide/from16 v6, p6

    :goto_2
    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_7

    iget-object v0, v1, Lcom/android/systemui/animation/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_7
    :goto_3
    if-eqz v12, :cond_8

    new-instance v0, Lcom/android/systemui/animation/TextAnimator$setTextStyleInternal$listener$1;

    invoke-direct {v0, v12, p0}, Lcom/android/systemui/animation/TextAnimator$setTextStyleInternal$listener$1;-><init>(Ljava/lang/Runnable;Lcom/android/systemui/animation/TextAnimator;)V

    iget-object v6, v1, Lcom/android/systemui/animation/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_8
    iget-object v0, v1, Lcom/android/systemui/animation/TextAnimator;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_9
    move-wide/from16 v10, p9

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v4, Lcom/android/systemui/animation/TextInterpolator;->progress:F

    invoke-virtual {v4}, Lcom/android/systemui/animation/TextInterpolator;->rebase()V

    iget-object v0, v1, Lcom/android/systemui/animation/TextAnimator;->invalidateCallback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :goto_4
    if-eqz p12, :cond_a

    sget-object v6, Lcom/android/systemui/animation/TextAnimator;->TAG:Ljava/lang/String;

    const-string v7, "setTextStyleInternal: Exception caught but retrying. This is usually due to the layout having changed unexpectedly without being notified."

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v4, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/animation/TextAnimator;->updateLayout(Landroid/text/Layout;F)V

    const/4 v13, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    invoke-virtual/range {v1 .. v13}, Lcom/android/systemui/animation/TextAnimator;->setTextStyleInternal(Ljava/lang/String;FLjava/lang/Integer;FZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;Z)V

    :goto_5
    return-void

    :cond_a
    throw v0
.end method

.method public final updateLayout(Landroid/text/Layout;F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/TextAnimator;->textInterpolator:Lcom/android/systemui/animation/TextInterpolator;

    iput-object p1, p0, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;)V

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/systemui/animation/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object p1, p0, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    iget-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-static {p1, p2}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/animation/TextInterpolator;->updatePositionsAndFonts(Ljava/util/List;Z)V

    iget-object p1, p0, Lcom/android/systemui/animation/TextInterpolator;->layout:Landroid/text/Layout;

    iget-object p2, p0, Lcom/android/systemui/animation/TextInterpolator;->basePaint:Landroid/text/TextPaint;

    invoke-static {p1, p2}, Lcom/android/systemui/animation/TextInterpolator;->shapeText(Landroid/text/Layout;Landroid/text/TextPaint;)Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/animation/TextInterpolator;->updatePositionsAndFonts(Ljava/util/List;Z)V

    :cond_0
    return-void
.end method
