.class public final synthetic Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/UdfpsController;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:F

.field public final synthetic f$5:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/UdfpsController;JIIFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/UdfpsController;

    iput-wide p2, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;->f$1:J

    iput p4, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;->f$2:I

    iput p5, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;->f$3:I

    iput p6, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;->f$4:F

    iput p7, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;->f$5:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-wide v1, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;->f$1:J

    iget v3, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;->f$2:I

    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;->f$3:I

    iget v6, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;->f$4:F

    iget v7, p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda1;->f$5:F

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mIsAodInterruptActive:Z

    new-instance p0, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lcom/android/systemui/biometrics/UdfpsController$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v8, 0x3e8

    iget-object v5, v0, Lcom/android/systemui/biometrics/UdfpsController;->mFgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v5, p0, v8, v9}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/biometrics/UdfpsController;->mCancelAodFingerUpAction:Ljava/lang/Runnable;

    int-to-float p0, v3

    int-to-float v5, v4

    const-wide/16 v11, 0x0

    const/4 v13, 0x1

    const/4 v3, -0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move v4, p0

    invoke-virtual/range {v0 .. v13}, Lcom/android/systemui/biometrics/UdfpsController;->onFingerDown(JIFFFFFJJZ)V

    return-void
.end method
