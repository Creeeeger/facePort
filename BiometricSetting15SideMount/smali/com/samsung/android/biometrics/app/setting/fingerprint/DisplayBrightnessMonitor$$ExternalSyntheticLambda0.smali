.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$$ExternalSyntheticLambda0;->f$1:F

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$$ExternalSyntheticLambda0;->f$1:F

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;->handleDisplayBrightnessChanged(F)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
