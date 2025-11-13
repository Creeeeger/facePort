.class public final Landroid/hardware/camera2/params/Face;
.super Ljava/lang/Object;
.source "Face.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/params/Face$Builder;
    }
.end annotation


# static fields
.field public static final whitelist ID_UNSUPPORTED:I = -0x1

.field public static final whitelist SCORE_MAX:I = 0x64

.field public static final whitelist SCORE_MIN:I = 0x1


# instance fields
.field private greylist-max-o mBounds:Landroid/graphics/Rect;

.field private greylist-max-o mId:I

.field private greylist-max-o mLeftEye:Landroid/graphics/Point;

.field private greylist-max-o mMouth:Landroid/graphics/Point;

.field private greylist-max-o mRightEye:Landroid/graphics/Point;

.field private greylist-max-o mScore:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBounds(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmId(Landroid/hardware/camera2/params/Face;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/Face;->mId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeftEye(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMouth(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRightEye(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScore(Landroid/hardware/camera2/params/Face;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckFace(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/params/Face;->checkFace(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckId(I)V
    .locals 0

    invoke-static {p0}, Landroid/hardware/camera2/params/Face;->checkId(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckScore(I)V
    .locals 0

    invoke-static {p0}, Landroid/hardware/camera2/params/Face;->checkScore(I)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/Rect;I)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/params/Face;->init(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/params/Face;->init(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-void
.end method

.method private static blacklist checkFace(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If any of leftEyePosition, rightEyePosition, or mouthPosition are non-null, all three must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist checkId(I)V
    .locals 2

    if-gez p0, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Id out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private static greylist-max-o checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_0

    return-void

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

    if-nez p1, :cond_0

    return-void

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

.method private static blacklist checkScore(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x64

    if-gt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Confidence out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist init(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    const-string v0, "bounds"

    invoke-static {v0, p1}, Landroid/hardware/camera2/params/Face;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p2}, Landroid/hardware/camera2/params/Face;->checkScore(I)V

    invoke-static {p3}, Landroid/hardware/camera2/params/Face;->checkId(I)V

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const-string v0, "leftEyePosition"

    invoke-static {v0, p4}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "rightEyePosition"

    invoke-static {v0, p5}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "mouthPosition"

    invoke-static {v0, p6}, Landroid/hardware/camera2/params/Face;->checkNull(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p4, p5, p6}, Landroid/hardware/camera2/params/Face;->checkFace(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    iput-object p1, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    iput p2, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    iput p3, p0, Landroid/hardware/camera2/params/Face;->mId:I

    iput-object p4, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    iput-object p5, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    iput-object p6, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public whitelist getBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist getId()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/Face;->mId:I

    return v0
.end method

.method public whitelist getLeftEyePosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getMouthPosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getRightEyePosition()Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    return-object v0
.end method

.method public whitelist getScore()I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Landroid/hardware/camera2/params/Face;->mBounds:Landroid/graphics/Rect;

    iget v1, p0, Landroid/hardware/camera2/params/Face;->mScore:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/params/Face;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/params/Face;->mLeftEye:Landroid/graphics/Point;

    iget-object v4, p0, Landroid/hardware/camera2/params/Face;->mRightEye:Landroid/graphics/Point;

    iget-object v5, p0, Landroid/hardware/camera2/params/Face;->mMouth:Landroid/graphics/Point;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "{ bounds: %s, score: %s, id: %d, leftEyePosition: %s, rightEyePosition: %s, mouthPosition: %s }"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
