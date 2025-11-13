.class abstract Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;
.super Ljava/lang/Object;
.source "SemAbsAddDeleteAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetInsertPendingIsNotCalledBefore;,
        Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$SetDeletePendingIsNotCalledBefore;,
        Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    }
.end annotation


# static fields
.field static blacklist DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static blacklist INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static blacklist START_SCALE_FACTOR:F


# instance fields
.field blacklist mBitmapUpdateBounds:Landroid/graphics/Rect;

.field blacklist mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field blacklist mDeleteRunnable:Ljava/lang/Runnable;

.field blacklist mGhostViewSnapshots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mHostView:Landroid/view/View;

.field blacklist mInsertDeleteRunnable:Ljava/lang/Runnable;

.field blacklist mInsertRunnable:Ljava/lang/Runnable;

.field blacklist mTranslationDuration:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    .line 23
    const v0, 0x3f733333    # 0.95f

    sput v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    .line 24
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->DELETE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 25
    new-instance v0, Landroid/view/animation/PathInterpolator;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->INSERT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mTranslationDuration:I

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateBounds:Landroid/graphics/Rect;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    .line 180
    new-instance v0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$1;-><init>(Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mBitmapUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method


# virtual methods
.method abstract blacklist deleteFromAdapterCompleted()V
.end method

.method public blacklist draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 224
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 225
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mGhostViewSnapshots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;

    .line 229
    .local v1, "vInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    iget-object v2, v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;->viewSnapshot:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 230
    .end local v1    # "vInfo":Lcom/samsung/android/animation/SemAbsAddDeleteAnimator$ViewInfo;
    goto :goto_0

    .line 231
    :cond_1
    return-void
.end method

.method blacklist getInsertTranslateAlphaScaleAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F

    .line 200
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 201
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 202
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 203
    sget v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 204
    sget v1, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->START_SCALE_FACTOR:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 205
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 206
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 207
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 208
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v1, v3

    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 209
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v3, 0x3

    aput-object v0, v1, v3

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 210
    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 205
    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method blacklist getNewPosition(ILjava/util/ArrayList;)I
    .locals 3
    .param p1, "oldPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 113
    .local p2, "deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v0, p1

    .line 114
    .local v0, "newPosition":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 115
    .local v2, "pos":I
    if-ge v2, p1, :cond_0

    .line 116
    nop

    .end local v2    # "pos":I
    add-int/lit8 v0, v0, -0x1

    .line 120
    goto :goto_0

    .line 121
    :cond_0
    return v0
.end method

.method blacklist getNewPosition(ILjava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 5
    .param p1, "oldPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 127
    .local p2, "insertedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "deletedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v0, p1

    .line 128
    .local v0, "newPosition":I
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 129
    .local v2, "pos":I
    if-ge v2, p1, :cond_0

    .line 130
    nop

    .end local v2    # "pos":I
    add-int/lit8 v0, v0, -0x1

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 136
    .local v1, "i":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 137
    .local v3, "pos":I
    add-int v4, p1, v1

    if-gt v3, v4, :cond_1

    .line 138
    add-int/lit8 v0, v0, 0x1

    .line 139
    nop

    .end local v3    # "pos":I
    add-int/lit8 v1, v1, 0x1

    .line 143
    goto :goto_1

    .line 144
    :cond_1
    return v0
.end method

.method blacklist getNewPositionForInsert(ILjava/util/ArrayList;)I
    .locals 3
    .param p1, "oldPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 99
    .local p2, "insertedItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v0, p1

    .line 100
    .local v0, "newPosition":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 101
    .local v2, "pos":I
    if-gt v2, v0, :cond_0

    .line 102
    nop

    .end local v2    # "pos":I
    add-int/lit8 v0, v0, 0x1

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    return v0
.end method

.method blacklist getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;
    .locals 2
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property<",
            "*",
            "Ljava/lang/Float;",
            ">;F)",
            "Landroid/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 157
    .local p1, "property":Landroid/util/Property;, "Landroid/util/Property<*Ljava/lang/Float;>;"
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-static {p1, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method blacklist getShiftCount(ILjava/util/ArrayList;)I
    .locals 3
    .param p1, "currentPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 56
    .local p2, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 57
    .local v0, "shiftCount":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 58
    .local v2, "pos":I
    if-ge v2, p1, :cond_0

    .line 59
    nop

    .end local v2    # "pos":I
    add-int/lit8 v0, v0, 0x1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return v0
.end method

.method blacklist getShiftCount(ILjava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 3
    .param p1, "currentPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 78
    .local p2, "insertedItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, "deletingItemPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 79
    .local v0, "shiftCount":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 80
    .local v2, "pos":I
    if-ge v2, p1, :cond_0

    .line 81
    nop

    .end local v2    # "pos":I
    add-int/lit8 v0, v0, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 87
    .restart local v2    # "pos":I
    if-ge v2, p1, :cond_1

    .line 88
    nop

    .end local v2    # "pos":I
    add-int/lit8 v0, v0, -0x1

    .line 92
    goto :goto_1

    .line 93
    :cond_1
    return v0
.end method

.method blacklist getTranslateAnim(Landroid/view/View;FF)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "translationX"    # F
    .param p3, "translationY"    # F

    .line 214
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 215
    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    .line 216
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 217
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    .line 218
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->getPropertyValuesHolder(Landroid/util/Property;F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 216
    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method abstract blacklist insertIntoAdapterCompleted()V
.end method

.method abstract blacklist setDelete(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract blacklist setDeletePending(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract blacklist setInsert(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method abstract blacklist setInsertPending(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public blacklist setTransitionDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .line 153
    iput p1, p0, Lcom/samsung/android/animation/SemAbsAddDeleteAnimator;->mTranslationDuration:I

    .line 154
    return-void
.end method
