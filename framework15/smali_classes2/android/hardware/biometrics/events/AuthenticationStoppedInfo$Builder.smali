.class public final Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;
.super Ljava/lang/Object;
.source "AuthenticationStoppedInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mRequestReason:I


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/biometrics/BiometricSourceType;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const-class v0, Landroid/annotation/NonNull;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mRequestReason:I

    const-class v0, Landroid/hardware/biometrics/BiometricRequestConstants$RequestReason;

    iget v1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mRequestReason:I

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

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
.method public blacklist build()Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    new-instance v0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;

    iget-object v1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    iget v2, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mRequestReason:I

    invoke-direct {v0, v1, v2}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo;-><init>(Landroid/hardware/biometrics/BiometricSourceType;I)V

    return-object v0
.end method

.method public blacklist setBiometricSourceType(Landroid/hardware/biometrics/BiometricSourceType;)Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBiometricSourceType:Landroid/hardware/biometrics/BiometricSourceType;

    return-object p0
.end method

.method public blacklist setRequestReason(I)Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mBuilderFieldsSet:J

    iput p1, p0, Landroid/hardware/biometrics/events/AuthenticationStoppedInfo$Builder;->mRequestReason:I

    return-object p0
.end method
