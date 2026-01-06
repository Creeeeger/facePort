.class Lcom/samsung/android/biometrics/app/setting/SysUiClient$FpOpMaskClient;
.super Ljava/lang/Object;
.source "SysUiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/SysUiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FpOpMaskClient"
.end annotation


# instance fields
.field private mIsKeyguard:Z


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KEY_KEYGUARD"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$FpOpMaskClient;->mIsKeyguard:Z

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/biometrics/app/setting/SysUiClient$FpOpMaskClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient$FpOpMaskClient;->mIsKeyguard:Z

    return v0
.end method
