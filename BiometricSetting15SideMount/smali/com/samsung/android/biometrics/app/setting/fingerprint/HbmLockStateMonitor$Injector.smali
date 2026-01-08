.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Injector;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mPackageListWithNoMask:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.sec.android.app.camera"

    .line 5
    .line 6
    const-string v1, "com.sec.android.gallery3d"

    .line 7
    .line 8
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmLockStateMonitor$Injector;->mPackageListWithNoMask:[Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method
