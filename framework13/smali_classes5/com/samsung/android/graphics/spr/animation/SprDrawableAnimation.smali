.class public abstract Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;
.super Ljava/lang/Object;
.source "SprDrawableAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final blacklist DEFAULT_FRAME_DURATION:I = 0x10

.field public static final blacklist TYPE_FRAMEANIMATION:B = 0x2t

.field public static final blacklist TYPE_NONE:B = 0x0t

.field public static final blacklist TYPE_VALUEANIMATION:B = 0x1t


# instance fields
.field protected final blacklist mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

.field protected final blacklist mDrawable:Landroid/graphics/drawable/Drawable;

.field protected final blacklist mInterval:I

.field protected blacklist mIsRunning:Z

.field public final blacklist mType:B


# direct methods
.method public constructor blacklist <init>(BLandroid/graphics/drawable/Drawable;Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    .locals 2
    .param p1, "type"    # B
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "document"    # Lcom/samsung/android/graphics/spr/document/SprDocument;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mIsRunning:Z

    .line 21
    if-eqz p2, :cond_2

    .line 24
    if-eqz p3, :cond_1

    .line 28
    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mType:B

    .line 29
    iput-object p2, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 30
    iput-object p3, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    .line 31
    iget v0, p3, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget v1, p3, Lcom/samsung/android/graphics/spr/document/SprDocument;->mAnimationInterval:I

    :goto_0
    iput v1, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mInterval:I

    .line 33
    return-void

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A document is not allocated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A drawable is not allocated."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getAnimationIndex()I
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isRunning()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mIsRunning:Z

    return v0
.end method

.method public blacklist start()V
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->stop()V

    .line 40
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mIsRunning:Z

    .line 41
    return-void
.end method

.method public blacklist stop()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->mIsRunning:Z

    .line 46
    return-void
.end method

.method public blacklist update()V
    .locals 0

    .line 53
    return-void
.end method
