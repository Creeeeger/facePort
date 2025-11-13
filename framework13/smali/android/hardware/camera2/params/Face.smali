.class public final Landroid/hardware/camera2/params/Face;
.super Ljava/lang/Object;
.source "Face.java"


# static fields
.field public static final whitelist ID_UNSUPPORTED:I = -0x1

.field public static final whitelist SCORE_MAX:I = 0x64

.field public static final whitelist SCORE_MIN:I = 0x1

.field public static final blacklist SCORE_PET:I = 0x65


# instance fields
.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mId:I

.field private final greylist-max-o mLeftEye:Landroid/graphics/Point;

.field private final greylist-max-o mMouth:Landroid/graphics/Point;

.field private final greylist-max-o mRightEye:Landroid/graphics/Point;

.field private final greylist-max-o mScore:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/graphics/Rect;I)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "score"    # I

    .line 145
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 147
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "score"    # I
    .param p3, "id"    # I
    .param p4, "leftEyePosition"    # Landroid/graphics/Point;
    .param p5, "rightEyePosition"    # Landroid/graphics/Point;
    .param p6, "mouthPosition"    # Landroid/graphics/Point;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-string v0, "bounds"

    invoke-static {v0, p1}, Landroid/hardware/camera2/params/Face;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    const/16 v0, 0x64

    if-le p2, v0, :cond_1

    :cond_0
    const/16 v0, 0x65

    if-ne p2, v0, :cond_5

    .line 105
    :cond_1
    const/4 v0, -0x1

    if-gez p3, :cond_3

    if-ne p3, v0, :cond_2

    goto :goto_0

    .line 106
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_3
    :goto_0
    if-ne p3, v0, :cond_4

    .line 109
    const-string v0, "leftEyePosition"

    invoke-static {v0, p4}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string/jumbo v0, "rightEyePosition"

    invoke-static {v0, p5}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    const-string/jumbo v0, "mouthPosition"

    invoke-static {v0, p6}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    :cond_4
    iput-object p1, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    .line 115
    iput p2, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    .line 116
    iput p3, p0, Landroid/hardware/camera2/params/Face;->mId:I

    .line 117
    iput-object p4, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    .line 118
    iput-object p5, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    .line 119
    iput-object p6, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    .line 120
    return-void

    .line 104
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Confidence out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 267
    if-eqz p1, :cond_0

    .line 270
    return-void

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was required, but it was null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;

    .line 273
    if-nez p1, :cond_0

    .line 276
    return-void

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was required to be null, but it wasn\'t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 160
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    .line 204
    iget v0, p0, Landroid/hardware/camera2/params/Face;->mId:I

    return v0
.end method

.method public whitelist getLeftEyePosition()Landroid/graphics/Point;
    .locals 1

    .line 220
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getMouthPosition()Landroid/graphics/Point;
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getRightEyePosition()Landroid/graphics/Point;
    .locals 1

    .line 236
    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getScore()I
    .locals 1

    .line 180
    iget v0, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    .line 261
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    .line 263
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/camera2/params/Face;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 261
    const-string/jumbo v1, "{ bounds: %s, score: %s, id: %d, leftEyePosition: %s, rightEyePosition: %s, mouthPosition: %s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
