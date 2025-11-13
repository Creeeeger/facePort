.class Lcom/samsung/android/animation/SemSweepListAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemSweepListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemSweepListAnimator;->onActionUp(Landroid/view/MotionEvent;Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

.field final synthetic blacklist val$position:I


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/animation/SemSweepListAnimator;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemSweepListAnimator;

    .line 349
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    iput p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 359
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepAnimationFilter(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v0

    const-string v1, "SemSweepListAnimator"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepAnimationFilter(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->isAnimationBack()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepAnimationType(Lcom/samsung/android/animation/SemSweepListAnimator;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 362
    const-string v0, "onActionUp : animator : onAnimationEnd : prepare copy bitmap to animate fade.. "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepAnimationFilter(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/animation/SemSweepTranslationFilter;

    invoke-virtual {v0}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->getSweepBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 366
    .local v0, "tempBd":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 381
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 382
    .local v3, "copiedBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v6}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmContext(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v4, v5}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fputmSweepBdToFade(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/graphics/drawable/BitmapDrawable;)V

    .line 383
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v4}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepBdToFade(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 386
    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v4}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepBdToFade(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 388
    const-string v4, "animator : create fadeOut animator #2"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animator : sweepBdToFade = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v5}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepBdToFade(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 393
    .local v2, "fadeOutAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 394
    new-instance v4, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator$1;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 408
    new-instance v4, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 450
    const-string v4, "animator : onAnimationEnd : fadeOutAnimator.start()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 454
    .end local v0    # "tempBd":Landroid/graphics/drawable/BitmapDrawable;
    .end local v2    # "fadeOutAnimator":Landroid/animation/ValueAnimator;
    .end local v3    # "copiedBitmap":Landroid/graphics/Bitmap;
    :cond_1
    goto :goto_1

    .line 367
    .restart local v0    # "tempBd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$mresetSweepInfo(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    .line 368
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmOnSweepListener(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 370
    const-string v2, "onActionUp : animator : onAnimationEnd : send onSweepEnd #1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmOnSweepListener(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->val$position:I

    iget-object v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v4}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepAnimationFilter(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getEndXOfActionUpAnimator()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    .line 374
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v2}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$mresetSweepAnimationFilter(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    .line 376
    const-string v2, "onActionUp : animator : onAnimationEnd : failed getBitmap() and so can not copy bitmap, return"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void

    .line 456
    .end local v0    # "tempBd":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    const-string v0, "animator : onAnimationEnd : Animation is back, call resetSweepInfo()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$mresetSweepInfo(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmOnSweepListener(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 461
    const-string v0, "animator : onAnimationEnd : send onSweepEnd #3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmOnSweepListener(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->val$position:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$fgetmSweepAnimationFilter(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getEndXOfActionUpAnimator()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    .line 468
    :cond_5
    :goto_1
    const-string v0, "animator : onAnimationEnd : call resetSweepAnimationFilter "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v0}, Lcom/samsung/android/animation/SemSweepListAnimator;->-$$Nest$mresetSweepAnimationFilter(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    .line 471
    return-void

    nop

    :array_0
    .array-data 4
        0xff
        0x0
    .end array-data
.end method

.method public whitelist onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 353
    const-string v0, "SemSweepListAnimator"

    const-string v1, "animator : onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void
.end method
