.class Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver$1;
.super Landroid/util/Singleton;
.source "InDisplaySensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;
    .locals 2

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$1;)V

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver$1;->create()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;

    move-result-object v0

    return-object v0
.end method
