.class public Landroid/hardware/face/FaceEnrollOptions$Builder;
.super Ljava/lang/Object;
.source "FaceEnrollOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceEnrollOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBuilderFieldsSet:J

.field private blacklist mEnrollReason:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/face/FaceEnrollOptions$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/hardware/face/FaceEnrollOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

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
.method public blacklist build()Landroid/hardware/face/FaceEnrollOptions;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/face/FaceEnrollOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/face/FaceEnrollOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceEnrollOptions$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/hardware/face/FaceEnrollOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/hardware/face/FaceEnrollOptions;->-$$Nest$smdefaultEnrollReason()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceEnrollOptions$Builder;->mEnrollReason:I

    :cond_0
    new-instance v0, Landroid/hardware/face/FaceEnrollOptions;

    iget v1, p0, Landroid/hardware/face/FaceEnrollOptions$Builder;->mEnrollReason:I

    invoke-direct {v0, v1}, Landroid/hardware/face/FaceEnrollOptions;-><init>(I)V

    return-object v0
.end method

.method public blacklist setEnrollReason(I)Landroid/hardware/face/FaceEnrollOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/face/FaceEnrollOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/face/FaceEnrollOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceEnrollOptions$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/face/FaceEnrollOptions$Builder;->mEnrollReason:I

    return-object p0
.end method
