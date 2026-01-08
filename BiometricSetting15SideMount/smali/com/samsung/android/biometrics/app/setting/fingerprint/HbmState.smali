.class public abstract Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmState;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/HbmController$1;


# virtual methods
.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract handleDisplayStateChanged(I)V
.end method

.method public stop()V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract turnOffHbm()V
.end method

.method public abstract turnOnHbm()V
.end method
