.class public final Lcom/samsung/android/settings/biometrics/Wallet24Service;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAppList:Ljava/util/ArrayList;

.field public mBound:Z

.field public mCallbackMessenger:Landroid/os/Messenger;

.field public mContext:Landroid/content/Context;

.field public mMessenger:Landroid/os/Messenger;

.field public final mWallet24ServiceConnection:Lcom/samsung/android/settings/biometrics/Wallet24Service$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/biometrics/Wallet24Service$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/Wallet24Service$1;-><init>(Lcom/samsung/android/settings/biometrics/Wallet24Service;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mWallet24ServiceConnection:Lcom/samsung/android/settings/biometrics/Wallet24Service$1;

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mContext:Landroid/content/Context;

    const-string v1, "Biometrics_Wallet24Service"

    if-eqz p1, :cond_0

    const-string v2, "com.samsung.android.ssiframework"

    invoke-static {p1, v2}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Bind to Wallet24 service."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.android.ssiframework.SsiFrameworkStatusService"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    :cond_0
    const-string p1, "There is no Wallet24 package."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mContext:Landroid/content/Context;

    :goto_0
    return-void
.end method


# virtual methods
.method public final unbindService()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mWallet24ServiceConnection:Lcom/samsung/android/settings/biometrics/Wallet24Service$1;

    if-eqz v0, :cond_0

    const-string v0, "Biometrics_Wallet24Service"

    const-string v1, "Unbind Wallet24 service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mWallet24ServiceConnection:Lcom/samsung/android/settings/biometrics/Wallet24Service$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mBound:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/Wallet24Service;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method
