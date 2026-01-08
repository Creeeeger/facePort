.class public abstract Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$sInstanceHolder;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# static fields
.field public static final sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DRM_PROPERTY_FOR_BRIGHTNESS:Z

    .line 8
    .line 9
    xor-int/lit8 v2, v2, 0x1

    .line 10
    .line 11
    new-instance v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$sInstanceHolder$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;-><init>(Landroid/os/Looper;ZLjava/util/function/Supplier;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor$sInstanceHolder;->sInstance:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessMonitor;

    .line 20
    .line 21
    return-void
.end method
