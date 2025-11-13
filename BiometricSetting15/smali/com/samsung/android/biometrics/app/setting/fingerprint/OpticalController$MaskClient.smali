.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mIsKeyguard:Z

.field public final mIsMaskSA:Z

.field public mSessionId:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;->mSessionId:I

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;->mIsKeyguard:Z

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalController$MaskClient;->mIsMaskSA:Z

    .line 10
    .line 11
    return-void
.end method
