.class public final Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
.super Ljava/lang/Object;
.source "FingerprintAuthenticateOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAttributionTag:Ljava/lang/String;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mDisplayState:I

.field private blacklist mIgnoreEnrollmentState:Z

.field private blacklist mIsMandatoryBiometrics:Z

.field private blacklist mOpPackageName:Ljava/lang/String;

.field private blacklist mSensorId:I

.field private blacklist mUserId:I

.field private blacklist mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

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
.method public blacklist build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;
    .locals 10

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x100

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultUserId()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mUserId:I

    :cond_0
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultSensorId()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mSensorId:I

    :cond_1
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x4

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultIgnoreEnrollmentState()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mIgnoreEnrollmentState:Z

    :cond_2
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x8

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultDisplayState()I

    move-result v0

    iput v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mDisplayState:I

    :cond_3
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    :cond_4
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x20

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultAttributionTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    :cond_5
    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;->-$$Nest$smdefaultVendorReason()Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    :cond_6
    new-instance v0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    iget v2, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mUserId:I

    iget v3, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mSensorId:I

    iget-boolean v4, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mIgnoreEnrollmentState:Z

    iget v5, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mDisplayState:I

    iget-object v6, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    iget-boolean v9, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mIsMandatoryBiometrics:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;-><init>(IIZILjava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;Z)V

    return-object v0
.end method

.method public blacklist setAttributionTag(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setDisplayState(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mDisplayState:I

    return-object p0
.end method

.method public blacklist setIgnoreEnrollmentState(Z)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput-boolean p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mIgnoreEnrollmentState:Z

    return-object p0
.end method

.method public blacklist setIsMandatoryBiometrics(Z)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput-boolean p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mIsMandatoryBiometrics:Z

    return-object p0
.end method

.method public blacklist setOpPackageName(Ljava/lang/String;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mOpPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSensorId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mSensorId:I

    return-object p0
.end method

.method public blacklist setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mUserId:I

    return-object p0
.end method

.method public blacklist setVendorReason(Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->mVendorReason:Landroid/hardware/biometrics/common/AuthenticateReason$Vendor;

    return-object p0
.end method
