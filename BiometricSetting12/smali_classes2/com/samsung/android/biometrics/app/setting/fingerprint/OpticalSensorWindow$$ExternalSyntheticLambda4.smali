.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda4;->f$1:I

    iput-wide p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda4;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda4;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda4;->f$1:I

    iget-wide v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda4;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->lambda$showSensorIconWhenScreenOff$2$OpticalSensorWindow(IJ)V

    return-void
.end method
