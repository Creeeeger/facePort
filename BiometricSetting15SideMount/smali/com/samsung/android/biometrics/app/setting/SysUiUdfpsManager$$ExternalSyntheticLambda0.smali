.class public final synthetic Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;

    .line 9
    .line 10
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/DisplayStateManager;->mCurrentRotation:I

    .line 11
    .line 12
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsAnyUdfps:Z

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    new-instance p0, Landroid/graphics/Point;

    .line 27
    .line 28
    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 29
    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 35
    .line 36
    new-instance v2, Landroid/graphics/Point;

    .line 37
    .line 38
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 39
    .line 40
    .line 41
    const-class v3, Landroid/view/WindowManager;

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/view/WindowManager;

    .line 48
    .line 49
    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    iput v0, v2, Landroid/graphics/Point;->y:I

    .line 72
    .line 73
    iget v2, v2, Landroid/graphics/Point;->x:I

    .line 74
    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move v4, v2

    .line 79
    move v2, v0

    .line 80
    move v0, v4

    .line 81
    :goto_1
    new-instance v1, Landroid/graphics/Point;

    .line 82
    .line 83
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 84
    .line 85
    .line 86
    div-int/lit8 v0, v0, 0x2

    .line 87
    .line 88
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginLeft:I

    .line 89
    .line 90
    sub-int/2addr v0, v3

    .line 91
    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 92
    .line 93
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginBottom:I

    .line 94
    .line 95
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorAreaHeight:I

    .line 96
    .line 97
    div-int/lit8 p0, p0, 0x2

    .line 98
    .line 99
    add-int/2addr p0, v0

    .line 100
    sub-int/2addr v2, p0

    .line 101
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 102
    .line 103
    move-object p0, v1

    .line 104
    :goto_2
    return-object p0

    .line 105
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiUdfpsManager;->mUdfpsSensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsSensorWindow;

    .line 106
    .line 107
    return-object p0

    .line 108
    :pswitch_1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFingerprintSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;

    .line 109
    .line 110
    return-object p0

    .line 111
    :pswitch_2
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mFpSvcProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 112
    .line 113
    return-object p0

    .line 114
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mPsProvider:Lcom/samsung/android/biometrics/app/setting/PowerServiceProvider;

    .line 115
    .line 116
    return-object p0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
