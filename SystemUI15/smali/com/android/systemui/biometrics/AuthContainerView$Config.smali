.class public final Lcom/android/systemui/biometrics/AuthContainerView$Config;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mCallback:Lcom/android/systemui/biometrics/AuthController;

.field public mContext:Landroid/content/Context;

.field public mOpPackageName:Ljava/lang/String;

.field public mOperationId:J

.field public mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public mRequestId:J

.field public mRequireConfirmation:Z

.field public mScaleProvider:Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda1;

.field public mSensorIds:[I

.field public mSkipIntro:Z

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    return-void
.end method
