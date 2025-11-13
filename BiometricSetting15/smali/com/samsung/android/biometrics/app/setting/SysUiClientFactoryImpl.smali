.class public final Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDsm:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

.field public final mGetAddedSensorWindow:Ljava/util/function/Supplier;

.field public final mGetFpServiceProvider:Ljava/util/function/Supplier;

.field public final mGetFpsSensorInfo:Ljava/util/function/Supplier;

.field public final mGetPowerServiceProvider:Ljava/util/function/Supplier;

.field public final mHandler:Landroid/os/Handler;

.field public final mSensorIconVisibilityHandler:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mDsm:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mGetPowerServiceProvider:Ljava/util/function/Supplier;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mGetFpServiceProvider:Ljava/util/function/Supplier;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mGetFpsSensorInfo:Ljava/util/function/Supplier;

    .line 15
    .line 16
    if-eqz p7, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p7, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    invoke-direct {p7}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    :goto_0
    iput-object p7, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mGetAddedSensorWindow:Ljava/util/function/Supplier;

    .line 25
    .line 26
    if-eqz p8, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    new-instance p8, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl$$ExternalSyntheticLambda1;

    .line 30
    .line 31
    invoke-direct {p8}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    :goto_1
    iput-object p8, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClientFactoryImpl;->mSensorIconVisibilityHandler:Ljava/util/function/Consumer;

    .line 35
    .line 36
    return-void
.end method
