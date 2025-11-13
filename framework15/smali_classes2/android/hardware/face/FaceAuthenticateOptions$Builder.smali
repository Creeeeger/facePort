.class public Landroid/hardware/face/FaceAuthenticateOptions$Builder;
.super Ljava/lang/Object;
.source "FaceAuthenticateOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/FaceAuthenticateOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private blacklist mAuthenticateReason:I

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mDisplayState:I

.field private blacklist mIsMandatoryBiometrics:Z

.field private blacklist mOpPackageName:Ljava/lang/String;

.field private blacklist mSensorId:I

.field private blacklist mUserId:I

.field private blacklist mWakeReason:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

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
.method public blacklist build()Landroid/hardware/face/FaceAuthenticateOptions;
    .locals 10

    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultUserId()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mUserId:I

    :cond_0
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultSensorId()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mSensorId:I

    :cond_1
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultDisplayState()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mDisplayState:I

    :cond_2
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultAuthenticateReason()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAuthenticateReason:I

    :cond_3
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultWakeReason()I

    move-result v0

    iput v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mWakeReason:I

    :cond_4
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x20

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    :cond_5
    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    invoke-static {}, Landroid/hardware/face/FaceAuthenticateOptions;->-$$Nest$smdefaultAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    :cond_6
    new-instance v0, Landroid/hardware/face/FaceAuthenticateOptions;

    iget v2, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mUserId:I

    iget v3, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mSensorId:I

    iget v4, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mDisplayState:I

    iget v5, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAuthenticateReason:I

    iget v6, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mWakeReason:I

    iget-object v7, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    iget-boolean v9, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mIsMandatoryBiometrics:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/hardware/face/FaceAuthenticateOptions;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public blacklist setAttributionTag(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setAuthenticateReason(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mAuthenticateReason:I

    return-object p0
.end method

.method public blacklist setDisplayState(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mDisplayState:I

    return-object p0
.end method

.method public blacklist setIsMandatoryBiometrics(Z)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput-boolean p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mIsMandatoryBiometrics:Z

    return-object p0
.end method

.method public blacklist setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSensorId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mSensorId:I

    return-object p0
.end method

.method public blacklist setUserId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mUserId:I

    return-object p0
.end method

.method public blacklist setWakeReason(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->mWakeReason:I

    return-object p0
.end method
