.class public final synthetic Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda8;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda8;->f$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda8;->f$1:Z

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mHasPrepareRequest:Z

    .line 6
    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    if-eqz p0, :cond_1

    .line 11
    .line 12
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFpSvcProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 13
    .line 14
    move-object v1, p0

    .line 15
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 16
    .line 17
    const/16 v2, 0xc

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    iput-boolean p0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mHasPrepareRequest:Z

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFpSvcProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 31
    .line 32
    move-object v1, p0

    .line 33
    check-cast v1, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 34
    .line 35
    const/16 v2, 0xc

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v3, 0x0

    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 42
    .line 43
    .line 44
    const/4 p0, 0x0

    .line 45
    iput-boolean p0, v0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mHasPrepareRequest:Z

    .line 46
    .line 47
    :goto_0
    return-void
.end method
