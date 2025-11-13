.class public final Landroid/hardware/camera2/params/Face$Builder;
.super Ljava/lang/Object;
.source "Face.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/params/Face;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist FIELD_BOUNDS:J = 0x2L

.field private static final blacklist FIELD_BUILT:J = 0x1L

.field private static final blacklist FIELD_ID:J = 0x8L

.field private static final blacklist FIELD_LEFT_EYE:J = 0x10L

.field private static final blacklist FIELD_MOUTH:J = 0x40L

.field private static final blacklist FIELD_NAME_BOUNDS:Ljava/lang/String; = "bounds"

.field private static final blacklist FIELD_NAME_LEFT_EYE:Ljava/lang/String; = "left eye"

.field private static final blacklist FIELD_NAME_MOUTH:Ljava/lang/String; = "mouth"

.field private static final blacklist FIELD_NAME_RIGHT_EYE:Ljava/lang/String; = "right eye"

.field private static final blacklist FIELD_NAME_SCORE:Ljava/lang/String; = "score"

.field private static final blacklist FIELD_RIGHT_EYE:J = 0x20L

.field private static final blacklist FIELD_SCORE:J = 0x4L


# instance fields
.field private blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mId:I

.field private blacklist mLeftEye:Landroid/graphics/Point;

.field private blacklist mMouth:Landroid/graphics/Point;

.field private blacklist mRightEye:Landroid/graphics/Point;

.field private blacklist mScore:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/params/Face$Builder;->mScore:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/params/Face$Builder;->mId:I

    iput-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mLeftEye:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mRightEye:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mMouth:Landroid/graphics/Point;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/hardware/camera2/params/Face;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/camera2/params/Face$Builder;->mScore:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/hardware/camera2/params/Face$Builder;->mId:I

    iput-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mLeftEye:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mRightEye:Landroid/graphics/Point;

    iput-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mMouth:Landroid/graphics/Point;

    invoke-static {p1}, Landroid/hardware/camera2/params/Face;->-$$Nest$fgetmBounds(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBounds:Landroid/graphics/Rect;

    invoke-static {p1}, Landroid/hardware/camera2/params/Face;->-$$Nest$fgetmScore(Landroid/hardware/camera2/params/Face;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mScore:I

    invoke-static {p1}, Landroid/hardware/camera2/params/Face;->-$$Nest$fgetmId(Landroid/hardware/camera2/params/Face;)I

    move-result v0

    iput v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mId:I

    invoke-static {p1}, Landroid/hardware/camera2/params/Face;->-$$Nest$fgetmLeftEye(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mLeftEye:Landroid/graphics/Point;

    invoke-static {p1}, Landroid/hardware/camera2/params/Face;->-$$Nest$fgetmRightEye(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mRightEye:Landroid/graphics/Point;

    invoke-static {p1}, Landroid/hardware/camera2/params/Face;->-$$Nest$fgetmMouth(Landroid/hardware/camera2/params/Face;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mMouth:Landroid/graphics/Point;

    return-void
.end method

.method private blacklist checkFieldSet(JLjava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" must be set before building."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkIdUnsupportedThenNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" must be unset or null if id is ID_UNSUPPORTED."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/hardware/camera2/params/Face;
    .locals 9

    invoke-direct {p0}, Landroid/hardware/camera2/params/Face$Builder;->checkNotUsed()V

    const-wide/16 v0, 0x2

    const-string v2, "bounds"

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/camera2/params/Face$Builder;->checkFieldSet(JLjava/lang/String;)V

    const-wide/16 v0, 0x4

    const-string v2, "score"

    invoke-direct {p0, v0, v1, v2}, Landroid/hardware/camera2/params/Face$Builder;->checkFieldSet(JLjava/lang/String;)V

    iget v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mLeftEye:Landroid/graphics/Point;

    const-string v1, "left eye"

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/Face$Builder;->checkIdUnsupportedThenNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mRightEye:Landroid/graphics/Point;

    const-string v1, "right eye"

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/Face$Builder;->checkIdUnsupportedThenNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mMouth:Landroid/graphics/Point;

    const-string v1, "mouth"

    invoke-direct {p0, v0, v1}, Landroid/hardware/camera2/params/Face$Builder;->checkIdUnsupportedThenNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mLeftEye:Landroid/graphics/Point;

    iget-object v1, p0, Landroid/hardware/camera2/params/Face$Builder;->mRightEye:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/hardware/camera2/params/Face$Builder;->mMouth:Landroid/graphics/Point;

    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/params/Face;->-$$Nest$smcheckFace(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    iget-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    new-instance v0, Landroid/hardware/camera2/params/Face;

    iget-object v3, p0, Landroid/hardware/camera2/params/Face$Builder;->mBounds:Landroid/graphics/Rect;

    iget v4, p0, Landroid/hardware/camera2/params/Face$Builder;->mScore:I

    iget v5, p0, Landroid/hardware/camera2/params/Face$Builder;->mId:I

    iget-object v6, p0, Landroid/hardware/camera2/params/Face$Builder;->mLeftEye:Landroid/graphics/Point;

    iget-object v7, p0, Landroid/hardware/camera2/params/Face$Builder;->mRightEye:Landroid/graphics/Point;

    iget-object v8, p0, Landroid/hardware/camera2/params/Face$Builder;->mMouth:Landroid/graphics/Point;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/hardware/camera2/params/Face;-><init>(Landroid/graphics/Rect;IILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-object v0
.end method

.method public whitelist setBounds(Landroid/graphics/Rect;)Landroid/hardware/camera2/params/Face$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/camera2/params/Face$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/camera2/params/Face$Builder;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public whitelist setId(I)Landroid/hardware/camera2/params/Face$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/camera2/params/Face$Builder;->checkNotUsed()V

    invoke-static {p1}, Landroid/hardware/camera2/params/Face;->-$$Nest$smcheckId(I)V

    iget-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/camera2/params/Face$Builder;->mId:I

    return-object p0
.end method

.method public whitelist setLeftEyePosition(Landroid/graphics/Point;)Landroid/hardware/camera2/params/Face$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/camera2/params/Face$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/camera2/params/Face$Builder;->mLeftEye:Landroid/graphics/Point;

    return-object p0
.end method

.method public whitelist setMouthPosition(Landroid/graphics/Point;)Landroid/hardware/camera2/params/Face$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/camera2/params/Face$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/camera2/params/Face$Builder;->mMouth:Landroid/graphics/Point;

    return-object p0
.end method

.method public whitelist setRightEyePosition(Landroid/graphics/Point;)Landroid/hardware/camera2/params/Face$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/camera2/params/Face$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/camera2/params/Face$Builder;->mRightEye:Landroid/graphics/Point;

    return-object p0
.end method

.method public whitelist setScore(I)Landroid/hardware/camera2/params/Face$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/camera2/params/Face$Builder;->checkNotUsed()V

    invoke-static {p1}, Landroid/hardware/camera2/params/Face;->-$$Nest$smcheckScore(I)V

    iget-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/camera2/params/Face$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/camera2/params/Face$Builder;->mScore:I

    return-object p0
.end method
