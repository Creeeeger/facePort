.class public final Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCountDownTimer:Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer$1;

.field public mListener:Lcom/samsung/android/biometrics/app/setting/prompt/credential/AuthCredentialView$3;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/prompt/credential/LockoutTimer;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method
