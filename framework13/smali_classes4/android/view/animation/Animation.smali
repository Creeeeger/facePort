.class public abstract Landroid/view/animation/Animation;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/animation/Animation$AnimationListener;,
        Landroid/view/animation/Animation$Description;,
        Landroid/view/animation/Animation$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final whitelist ABSOLUTE:I = 0x0

.field public static final whitelist INFINITE:I = -0x1

.field public static final whitelist RELATIVE_TO_PARENT:I = 0x2

.field public static final whitelist RELATIVE_TO_SELF:I = 0x1

.field public static final whitelist RESTART:I = 0x1

.field public static final whitelist REVERSE:I = 0x2

.field public static final whitelist START_ON_FIRST_FRAME:I = -0x1

.field public static final whitelist ZORDER_BOTTOM:I = -0x1

.field public static final whitelist ZORDER_NORMAL:I = 0x0

.field public static final whitelist ZORDER_TOP:I = 0x1


# instance fields
.field private final greylist-max-o guard:Ldalvik/system/CloseGuard;

.field private blacklist mBackdropColor:I

.field greylist-max-o mCycleFlip:Z

.field greylist-max-o mDuration:J

.field greylist-max-o mEnded:Z

.field greylist-max-o mFillAfter:Z

.field greylist-max-o mFillBefore:Z

.field greylist-max-o mFillEnabled:Z

.field private blacklist mHasRoundedCorners:Z

.field greylist-max-o mInitialized:Z

.field greylist-max-o mInterpolator:Landroid/view/animation/Interpolator;

.field private greylist-max-p mListener:Landroid/view/animation/Animation$AnimationListener;

.field private greylist-max-o mListenerHandler:Landroid/os/Handler;

.field private greylist-max-o mMore:Z

.field private greylist-max-o mOnEnd:Ljava/lang/Runnable;

.field private greylist-max-o mOnRepeat:Ljava/lang/Runnable;

.field private greylist-max-o mOnStart:Ljava/lang/Runnable;

.field private greylist-max-o mOneMoreTime:Z

.field greylist mPreviousRegion:Landroid/graphics/RectF;

.field greylist mPreviousTransformation:Landroid/view/animation/Transformation;

.field greylist mRegion:Landroid/graphics/RectF;

.field greylist-max-o mRepeatCount:I

.field greylist-max-o mRepeatMode:I

.field greylist-max-o mRepeated:I

.field private greylist-max-o mScaleFactor:F

.field private blacklist mShowBackdrop:Z

.field private greylist-max-o mShowWallpaper:Z

.field greylist-max-o mStartOffset:J

.field greylist-max-o mStartTime:J

.field greylist-max-o mStarted:Z

.field greylist mTransformation:Landroid/view/animation/Transformation;

.field private greylist-max-o mZAdjustment:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 4

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 114
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 120
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 126
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 139
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 144
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 149
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 166
    iput v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 171
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 178
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 207
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 219
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 220
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 222
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 224
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 226
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 228
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 231
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 243
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 244
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 114
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 120
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 126
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 133
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 139
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 144
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 149
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 166
    iput v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 171
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 178
    iput v1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 207
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 219
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 220
    iput-boolean v1, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 222
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 224
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 226
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 228
    new-instance v2, Landroid/view/animation/Transformation;

    invoke-direct {v2}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v2, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 231
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v2

    iput-object v2, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    .line 254
    sget-object v2, Lcom/android/internal/R$styleable;->Animation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 256
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 257
    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 259
    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    const/16 v4, 0x9

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 260
    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 261
    iget-boolean v3, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 263
    iget v3, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 264
    const/4 v3, 0x7

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 266
    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    .line 268
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setBackdropColor(I)V

    .line 270
    nop

    .line 271
    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 270
    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 272
    nop

    .line 273
    const/16 v3, 0xe

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 272
    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setShowWallpaper(Z)V

    .line 274
    nop

    .line 275
    const/16 v3, 0xd

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 274
    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setHasRoundedCorners(Z)V

    .line 276
    nop

    .line 277
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 276
    invoke-virtual {p0, v3}, Landroid/view/animation/Animation;->setShowBackdrop(Z)V

    .line 279
    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 281
    .local v0, "resID":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    if-lez v0, :cond_0

    .line 284
    invoke-virtual {p0, p1, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 287
    :cond_0
    invoke-virtual {p0}, Landroid/view/animation/Animation;->ensureInterpolator()V

    .line 288
    return-void
.end method

.method private greylist-max-o fireAnimationEnd()V
    .locals 2

    .line 1098
    invoke-direct {p0}, Landroid/view/animation/Animation;->hasAnimationListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->dispatchAnimationEnd()V

    goto :goto_0

    .line 1100
    :cond_0
    iget-object v1, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1102
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o fireAnimationRepeat()V
    .locals 2

    .line 1091
    invoke-direct {p0}, Landroid/view/animation/Animation;->hasAnimationListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->dispatchAnimationRepeat()V

    goto :goto_0

    .line 1093
    :cond_0
    iget-object v1, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1095
    :cond_1
    :goto_0
    return-void
.end method

.method private greylist-max-o fireAnimationStart()V
    .locals 2

    .line 1084
    invoke-direct {p0}, Landroid/view/animation/Animation;->hasAnimationListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1085
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->dispatchAnimationStart()V

    goto :goto_0

    .line 1086
    :cond_0
    iget-object v1, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 1088
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist hasAnimationListener()Z
    .locals 1

    .line 950
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o isCanceled()Z
    .locals 4

    .line 1080
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 0
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 1170
    return-void
.end method

.method public whitelist cancel()V
    .locals 2

    .line 328
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_0

    .line 329
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 331
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 334
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 336
    return-void
.end method

.method protected whitelist clone()Landroid/view/animation/Animation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 292
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 293
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 294
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 295
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 296
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v1, v0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 297
    return-object v0
.end method

.method protected bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Landroid/view/animation/Animation;->clone()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public whitelist computeDurationHint()J
    .locals 4

    .line 981
    invoke-virtual {p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/animation/Animation;->getRepeatCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public greylist detach()V
    .locals 1

    .line 343
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v0, :cond_0

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    .line 345
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 346
    invoke-direct {p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 348
    :cond_0
    return-void
.end method

.method blacklist dispatchAnimationEnd()V
    .locals 1

    .line 1117
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 1118
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 1120
    :cond_0
    return-void
.end method

.method blacklist dispatchAnimationRepeat()V
    .locals 1

    .line 1111
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 1112
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 1114
    :cond_0
    return-void
.end method

.method blacklist dispatchAnimationStart()V
    .locals 1

    .line 1105
    iget-object v0, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 1106
    invoke-interface {v0, p0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 1108
    :cond_0
    return-void
.end method

.method protected whitelist ensureInterpolator()V
    .locals 1

    .line 969
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_0

    .line 970
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 972
    :cond_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1252
    :try_start_0
    iget-object v0, p0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 1253
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1257
    nop

    .line 1258
    return-void

    .line 1256
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1257
    throw v0
.end method

.method public whitelist getBackdropColor()I
    .locals 1

    .line 922
    iget v0, p0, Landroid/view/animation/Animation;->mBackdropColor:I

    return v0
.end method

.method public whitelist getBackgroundColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 849
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getDetachWallpaper()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 860
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getDuration()J
    .locals 2

    .line 770
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    return-wide v0
.end method

.method public whitelist getFillAfter()Z
    .locals 1

    .line 825
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    return v0
.end method

.method public whitelist getFillBefore()Z
    .locals 1

    .line 814
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    return v0
.end method

.method public whitelist getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 749
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public greylist getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "invalidate"    # Landroid/graphics/RectF;
    .param p6, "transformation"    # Landroid/view/animation/Transformation;

    .line 1210
    iget-object v0, p0, Landroid/view/animation/Animation;->mRegion:Landroid/graphics/RectF;

    .line 1211
    .local v0, "tempRegion":Landroid/graphics/RectF;
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 1213
    .local v1, "previousRegion":Landroid/graphics/RectF;
    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    invoke-virtual {p5, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1214
    invoke-virtual {p6}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, p5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1216
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {p5, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 1217
    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1218
    invoke-virtual {p5, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1220
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1222
    iget-object v2, p0, Landroid/view/animation/Animation;->mTransformation:Landroid/view/animation/Transformation;

    .line 1223
    .local v2, "tempTransformation":Landroid/view/animation/Transformation;
    iget-object v3, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1225
    .local v3, "previousTransformation":Landroid/view/animation/Transformation;
    invoke-virtual {v2, p6}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1226
    invoke-virtual {p6, v3}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1227
    invoke-virtual {v3, v2}, Landroid/view/animation/Transformation;->set(Landroid/view/animation/Transformation;)V

    .line 1228
    return-void
.end method

.method public whitelist getRepeatCount()I
    .locals 1

    .line 801
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    return v0
.end method

.method public whitelist getRepeatMode()I
    .locals 1

    .line 790
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    return v0
.end method

.method protected whitelist getScaleFactor()F
    .locals 1

    .line 667
    iget v0, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    return v0
.end method

.method public whitelist getShowBackdrop()Z
    .locals 1

    .line 908
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mShowBackdrop:Z

    return v0
.end method

.method public greylist-max-o getShowWallpaper()Z
    .locals 1

    .line 870
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mShowWallpaper:Z

    return v0
.end method

.method public whitelist getStartOffset()J
    .locals 2

    .line 780
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    return-wide v0
.end method

.method public whitelist getStartTime()J
    .locals 2

    .line 760
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartTime:J

    return-wide v0
.end method

.method public whitelist getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 16
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;

    .line 1010
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Landroid/view/animation/Animation;->mStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1011
    iput-wide v1, v0, Landroid/view/animation/Animation;->mStartTime:J

    .line 1014
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v3

    .line 1015
    .local v3, "startOffset":J
    iget-wide v7, v0, Landroid/view/animation/Animation;->mDuration:J

    .line 1017
    .local v7, "duration":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v9, :cond_1

    .line 1018
    iget-wide v12, v0, Landroid/view/animation/Animation;->mStartTime:J

    add-long/2addr v12, v3

    sub-long v12, v1, v12

    long-to-float v9, v12

    long-to-float v12, v7

    div-float/2addr v9, v12

    .local v9, "normalizedTime":F
    goto :goto_0

    .line 1022
    .end local v9    # "normalizedTime":F
    :cond_1
    iget-wide v12, v0, Landroid/view/animation/Animation;->mStartTime:J

    cmp-long v9, v1, v12

    if-gez v9, :cond_2

    move v9, v10

    goto :goto_0

    :cond_2
    move v9, v11

    .line 1025
    .restart local v9    # "normalizedTime":F
    :goto_0
    cmpl-float v12, v9, v11

    const/4 v14, 0x1

    if-gez v12, :cond_4

    invoke-direct/range {p0 .. p0}, Landroid/view/animation/Animation;->isCanceled()Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v12, v14

    .line 1026
    .local v12, "expired":Z
    :goto_2
    if-nez v12, :cond_5

    move v15, v14

    goto :goto_3

    :cond_5
    const/4 v15, 0x0

    :goto_3
    iput-boolean v15, v0, Landroid/view/animation/Animation;->mMore:Z

    .line 1028
    iget-boolean v15, v0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-nez v15, :cond_6

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v15

    invoke-static {v15, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 1030
    :cond_6
    cmpl-float v15, v9, v10

    if-gez v15, :cond_7

    iget-boolean v15, v0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v15, :cond_8

    :cond_7
    cmpg-float v15, v9, v11

    if-lez v15, :cond_9

    iget-boolean v15, v0, Landroid/view/animation/Animation;->mFillAfter:Z

    if-eqz v15, :cond_8

    goto :goto_4

    .line 1048
    :cond_8
    move-object/from16 v10, p3

    goto :goto_5

    .line 1031
    :cond_9
    :goto_4
    iget-boolean v15, v0, Landroid/view/animation/Animation;->mStarted:Z

    if-nez v15, :cond_a

    .line 1032
    invoke-direct/range {p0 .. p0}, Landroid/view/animation/Animation;->fireAnimationStart()V

    .line 1033
    iput-boolean v14, v0, Landroid/view/animation/Animation;->mStarted:Z

    .line 1034
    sget-boolean v15, Landroid/view/animation/Animation$NoImagePreloadHolder;->USE_CLOSEGUARD:Z

    if-eqz v15, :cond_a

    .line 1035
    iget-object v15, v0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    const-string v13, "cancel or detach or getTransformation"

    invoke-virtual {v15, v13}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 1039
    :cond_a
    iget-boolean v13, v0, Landroid/view/animation/Animation;->mFillEnabled:Z

    if-eqz v13, :cond_b

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v13

    invoke-static {v13, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 1041
    :cond_b
    iget-boolean v10, v0, Landroid/view/animation/Animation;->mCycleFlip:Z

    if-eqz v10, :cond_c

    .line 1042
    sub-float/2addr v11, v9

    move v9, v11

    .line 1045
    :cond_c
    move-object/from16 v10, p3

    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    .line 1048
    :goto_5
    if-eqz v12, :cond_11

    .line 1049
    iget v11, v0, Landroid/view/animation/Animation;->mRepeatCount:I

    iget v13, v0, Landroid/view/animation/Animation;->mRepeated:I

    if-eq v11, v13, :cond_10

    invoke-direct/range {p0 .. p0}, Landroid/view/animation/Animation;->isCanceled()Z

    move-result v11

    if-eqz v11, :cond_d

    goto :goto_6

    .line 1056
    :cond_d
    iget v11, v0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-lez v11, :cond_e

    .line 1057
    iget v11, v0, Landroid/view/animation/Animation;->mRepeated:I

    add-int/2addr v11, v14

    iput v11, v0, Landroid/view/animation/Animation;->mRepeated:I

    .line 1060
    :cond_e
    iget v11, v0, Landroid/view/animation/Animation;->mRepeatMode:I

    const/4 v13, 0x2

    if-ne v11, v13, :cond_f

    .line 1061
    iget-boolean v11, v0, Landroid/view/animation/Animation;->mCycleFlip:Z

    xor-int/2addr v11, v14

    iput-boolean v11, v0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 1064
    :cond_f
    iput-wide v5, v0, Landroid/view/animation/Animation;->mStartTime:J

    .line 1065
    iput-boolean v14, v0, Landroid/view/animation/Animation;->mMore:Z

    .line 1067
    invoke-direct/range {p0 .. p0}, Landroid/view/animation/Animation;->fireAnimationRepeat()V

    goto :goto_7

    .line 1050
    :cond_10
    :goto_6
    iget-boolean v5, v0, Landroid/view/animation/Animation;->mEnded:Z

    if-nez v5, :cond_11

    .line 1051
    iput-boolean v14, v0, Landroid/view/animation/Animation;->mEnded:Z

    .line 1052
    iget-object v5, v0, Landroid/view/animation/Animation;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v5}, Ldalvik/system/CloseGuard;->close()V

    .line 1053
    invoke-direct/range {p0 .. p0}, Landroid/view/animation/Animation;->fireAnimationEnd()V

    .line 1071
    :cond_11
    :goto_7
    iget-boolean v5, v0, Landroid/view/animation/Animation;->mMore:Z

    if-nez v5, :cond_12

    iget-boolean v6, v0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    if-eqz v6, :cond_12

    .line 1072
    const/4 v5, 0x0

    iput-boolean v5, v0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 1073
    return v14

    .line 1076
    :cond_12
    return v5
.end method

.method public whitelist getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 1
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;
    .param p4, "scale"    # F

    .line 1136
    iput p4, p0, Landroid/view/animation/Animation;->mScaleFactor:F

    .line 1137
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    return v0
.end method

.method public blacklist getTransformationAt(FLandroid/view/animation/Transformation;)V
    .locals 1
    .param p1, "normalizedTime"    # F
    .param p2, "outTransformation"    # Landroid/view/animation/Transformation;

    .line 995
    iget-object v0, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 996
    .local v0, "interpolatedTime":F
    invoke-virtual {p0, v0, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 997
    return-void
.end method

.method public whitelist getZAdjustment()I
    .locals 1

    .line 837
    iget v0, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    return v0
.end method

.method public greylist-max-o hasAlpha()Z
    .locals 1

    .line 1266
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist hasEnded()Z
    .locals 1

    .line 1155
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    return v0
.end method

.method public blacklist hasExtension()Z
    .locals 1

    .line 889
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hasRoundedCorners()Z
    .locals 1

    .line 880
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mHasRoundedCorners:Z

    return v0
.end method

.method public whitelist hasStarted()Z
    .locals 1

    .line 1146
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    return v0
.end method

.method public whitelist initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 376
    invoke-virtual {p0}, Landroid/view/animation/Animation;->reset()V

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 378
    return-void
.end method

.method public greylist initializeInvalidateRegion(IIII)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 1240
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    .line 1241
    .local v0, "region":Landroid/graphics/RectF;
    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1243
    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 1244
    iget-boolean v1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    if-eqz v1, :cond_0

    .line 1245
    iget-object v1, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    .line 1246
    .local v1, "previousTransformation":Landroid/view/animation/Transformation;
    iget-object v2, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 1248
    .end local v1    # "previousTransformation":Landroid/view/animation/Transformation;
    :cond_0
    return-void
.end method

.method public whitelist isFillEnabled()Z
    .locals 1

    .line 580
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    return v0
.end method

.method public whitelist isInitialized()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    return v0
.end method

.method public whitelist reset()V
    .locals 1

    .line 306
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousRegion:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 307
    iget-object v0, p0, Landroid/view/animation/Animation;->mPreviousTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mInitialized:Z

    .line 309
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 310
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 312
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mOneMoreTime:Z

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 314
    return-void
.end method

.method protected whitelist resolveSize(IFII)F
    .locals 1
    .param p1, "type"    # I
    .param p2, "value"    # F
    .param p3, "size"    # I
    .param p4, "parentSize"    # I

    .line 1184
    packed-switch p1, :pswitch_data_0

    .line 1192
    return p2

    .line 1190
    :pswitch_0
    int-to-float v0, p4

    mul-float/2addr v0, p2

    return v0

    .line 1188
    :pswitch_1
    int-to-float v0, p3

    mul-float/2addr v0, p2

    return v0

    .line 1186
    :pswitch_2
    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist restrictDuration(J)V
    .locals 8
    .param p1, "durationMillis"    # J

    .line 469
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    cmp-long v2, v0, p1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-lez v2, :cond_0

    .line 470
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 471
    iput-wide v4, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 472
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 473
    return-void

    .line 476
    :cond_0
    iget-wide v6, p0, Landroid/view/animation/Animation;->mDuration:J

    add-long/2addr v6, v0

    .line 477
    .local v6, "dur":J
    cmp-long v2, v6, p1

    if-lez v2, :cond_1

    .line 478
    sub-long v0, p1, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 479
    move-wide v6, p1

    .line 482
    :cond_1
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_2

    .line 483
    iput-wide v4, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 484
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 485
    return-void

    .line 490
    :cond_2
    iget v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    if-ltz v0, :cond_3

    int-to-long v1, v0

    cmp-long v1, v1, p1

    if-gtz v1, :cond_3

    int-to-long v0, v0

    mul-long/2addr v0, v6

    cmp-long v0, v0, p1

    if-lez v0, :cond_4

    .line 494
    :cond_3
    div-long v0, p1, v6

    long-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 495
    if-gez v0, :cond_4

    .line 496
    iput v3, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 499
    :cond_4
    return-void
.end method

.method public whitelist scaleCurrentDuration(F)V
    .locals 2
    .param p1, "scale"    # F

    .line 507
    iget-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 508
    iget-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    long-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 509
    return-void
.end method

.method public whitelist setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/animation/Animation$AnimationListener;

    .line 961
    iput-object p1, p0, Landroid/view/animation/Animation;->mListener:Landroid/view/animation/Animation$AnimationListener;

    .line 962
    return-void
.end method

.method public whitelist setBackdropColor(I)V
    .locals 0
    .param p1, "backdropColor"    # I

    .line 739
    iput p1, p0, Landroid/view/animation/Animation;->mBackdropColor:I

    .line 740
    return-void
.end method

.method public whitelist setBackgroundColor(I)V
    .locals 0
    .param p1, "bg"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 655
    return-void
.end method

.method public whitelist setDetachWallpaper(Z)V
    .locals 0
    .param p1, "detachWallpaper"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 683
    return-void
.end method

.method public whitelist setDuration(J)V
    .locals 2
    .param p1, "durationMillis"    # J

    .line 452
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 455
    iput-wide p1, p0, Landroid/view/animation/Animation;->mDuration:J

    .line 456
    return-void

    .line 453
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Animation duration cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setFillAfter(Z)V
    .locals 0
    .param p1, "fillAfter"    # Z

    .line 629
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillAfter:Z

    .line 630
    return-void
.end method

.method public whitelist setFillBefore(Z)V
    .locals 0
    .param p1, "fillBefore"    # Z

    .line 613
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillBefore:Z

    .line 614
    return-void
.end method

.method public whitelist setFillEnabled(Z)V
    .locals 0
    .param p1, "fillEnabled"    # Z

    .line 595
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mFillEnabled:Z

    .line 596
    return-void
.end method

.method public blacklist setHasRoundedCorners(Z)V
    .locals 0
    .param p1, "hasRoundedCorners"    # Z

    .line 707
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mHasRoundedCorners:Z

    .line 708
    return-void
.end method

.method public whitelist setInterpolator(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .line 415
    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 416
    return-void
.end method

.method public whitelist setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "i"    # Landroid/view/animation/Interpolator;

    .line 426
    iput-object p1, p0, Landroid/view/animation/Animation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 427
    return-void
.end method

.method public greylist-max-o setListenerHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .line 386
    iget-object v0, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 387
    new-instance v0, Landroid/view/animation/Animation$1;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$1;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnStart:Ljava/lang/Runnable;

    .line 392
    new-instance v0, Landroid/view/animation/Animation$2;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$2;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnRepeat:Ljava/lang/Runnable;

    .line 397
    new-instance v0, Landroid/view/animation/Animation$3;

    invoke-direct {v0, p0}, Landroid/view/animation/Animation$3;-><init>(Landroid/view/animation/Animation;)V

    iput-object v0, p0, Landroid/view/animation/Animation;->mOnEnd:Ljava/lang/Runnable;

    .line 403
    :cond_0
    iput-object p1, p0, Landroid/view/animation/Animation;->mListenerHandler:Landroid/os/Handler;

    .line 404
    return-void
.end method

.method public whitelist setRepeatCount(I)V
    .locals 0
    .param p1, "repeatCount"    # I

    .line 567
    if-gez p1, :cond_0

    .line 568
    const/4 p1, -0x1

    .line 570
    :cond_0
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatCount:I

    .line 571
    return-void
.end method

.method public whitelist setRepeatMode(I)V
    .locals 0
    .param p1, "repeatMode"    # I

    .line 554
    iput p1, p0, Landroid/view/animation/Animation;->mRepeatMode:I

    .line 555
    return-void
.end method

.method public whitelist setShowBackdrop(Z)V
    .locals 0
    .param p1, "showBackdrop"    # Z

    .line 726
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mShowBackdrop:Z

    .line 727
    return-void
.end method

.method public greylist-max-o setShowWallpaper(Z)V
    .locals 0
    .param p1, "showWallpaper"    # Z

    .line 694
    iput-boolean p1, p0, Landroid/view/animation/Animation;->mShowWallpaper:Z

    .line 695
    return-void
.end method

.method public whitelist setStartOffset(J)V
    .locals 0
    .param p1, "startOffset"    # J

    .line 439
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartOffset:J

    .line 440
    return-void
.end method

.method public whitelist setStartTime(J)V
    .locals 1
    .param p1, "startTimeMillis"    # J

    .line 522
    iput-wide p1, p0, Landroid/view/animation/Animation;->mStartTime:J

    .line 523
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mEnded:Z

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mStarted:Z

    .line 524
    iput-boolean v0, p0, Landroid/view/animation/Animation;->mCycleFlip:Z

    .line 525
    iput v0, p0, Landroid/view/animation/Animation;->mRepeated:I

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/Animation;->mMore:Z

    .line 527
    return-void
.end method

.method public whitelist setZAdjustment(I)V
    .locals 0
    .param p1, "zAdjustment"    # I

    .line 640
    iput p1, p0, Landroid/view/animation/Animation;->mZAdjustment:I

    .line 641
    return-void
.end method

.method public whitelist start()V
    .locals 2

    .line 534
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 535
    return-void
.end method

.method public whitelist startNow()V
    .locals 2

    .line 542
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 543
    return-void
.end method

.method public whitelist willChangeBounds()Z
    .locals 1

    .line 946
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist willChangeTransformationMatrix()Z
    .locals 1

    .line 934
    const/4 v0, 0x1

    return v0
.end method
