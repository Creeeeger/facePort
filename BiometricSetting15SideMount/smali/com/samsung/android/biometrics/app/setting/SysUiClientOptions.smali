.class public final Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mExtraInfo:Landroid/os/Bundle;

.field public final mOpId:J

.field public final mPackageName:Ljava/lang/String;

.field public mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field public mRequireTouchBlock:Z

.field public final mSessionId:I

.field public final mType:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(IIIJLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mType:I

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mUserId:I

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mSessionId:I

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mOpId:J

    .line 11
    .line 12
    if-nez p6, :cond_0

    .line 13
    .line 14
    const-string p6, ""

    .line 15
    .line 16
    :cond_0
    iput-object p6, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mPackageName:Ljava/lang/String;

    .line 17
    .line 18
    if-nez p7, :cond_1

    .line 19
    .line 20
    new-instance p7, Landroid/os/Bundle;

    .line 21
    .line 22
    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iput-object p7, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientOptions;->mExtraInfo:Landroid/os/Bundle;

    .line 26
    .line 27
    return-void
.end method
