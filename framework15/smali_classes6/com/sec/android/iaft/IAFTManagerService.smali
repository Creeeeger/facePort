.class public Lcom/sec/android/iaft/IAFTManagerService;
.super Landroid/app/Service;
.source "IAFTManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/iaft/IAFTManagerService$CallBack;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IAFTManager"


# instance fields
.field private blacklist mCallBack:Lcom/sec/android/iaft/IAFTManagerService$CallBack;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIAFTManagerServiceImpl:Lcom/sec/android/iaft/IAFTManagerServiceImpl;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object p0, p0, Lcom/sec/android/iaft/IAFTManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/iaft/IAFTManagerServiceImpl;

    iget-object v1, p0, Lcom/sec/android/iaft/IAFTManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/iaft/IAFTManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/iaft/IAFTManagerService;->mIAFTManagerServiceImpl:Lcom/sec/android/iaft/IAFTManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public blacklist getCallBack()Lcom/sec/android/iaft/IAFTManagerService$CallBack;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/iaft/IAFTManagerService;->mCallBack:Lcom/sec/android/iaft/IAFTManagerService$CallBack;

    return-object v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/iaft/IAFTManagerService;->mIAFTManagerServiceImpl:Lcom/sec/android/iaft/IAFTManagerServiceImpl;

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public whitelist onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public whitelist onUnbind(Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "IAFTManager"

    const-string v1, "called onUnbind."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist setCallBack(Lcom/sec/android/iaft/IAFTManagerService$CallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/iaft/IAFTManagerService;->mCallBack:Lcom/sec/android/iaft/IAFTManagerService$CallBack;

    return-void
.end method
