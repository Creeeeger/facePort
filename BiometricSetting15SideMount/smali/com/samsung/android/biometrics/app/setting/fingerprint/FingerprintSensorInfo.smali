.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final mBrightnessNitForOptical:F

.field public mCalibrationLightColor:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field public final mIsAnyUdfps:Z

.field public mIsNaviHide:Z

.field public final mIsOptical:Z

.field public final mIsUltrasonic:Z

.field public final mLightColor:Ljava/lang/String;

.field public final mNitsForOptical:F

.field public mSensorAreaHeight:I

.field public final mSensorAreaSizeInfo:[Ljava/lang/String;

.field public mSensorAreaWidth:I

.field public mSensorImageSize:I

.field public mSensorMarginBottom:I

.field public mSensorMarginLeft:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "00ff00"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mLightColor:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz p2, :cond_5

    .line 11
    .line 12
    new-instance v1, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    invoke-interface {p2, v1}, Landroid/hardware/fingerprint/IFingerprintService;->semGetSensorData(Landroid/os/Bundle;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p2, p1}, Landroid/hardware/fingerprint/IFingerprintService;->getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_3

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_3

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    check-cast p2, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 45
    .line 46
    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isUltrasonicType()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x1

    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsUltrasonic:Z

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isOpticalType()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_2

    .line 63
    .line 64
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsOptical:Z

    .line 65
    .line 66
    :cond_2
    invoke-virtual {p2}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_0

    .line 71
    .line 72
    iput-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsAnyUdfps:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "FingerprintSensorInfo: "

    .line 78
    .line 79
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p2, "BSS_FingerprintSensorInfo"

    .line 94
    .line 95
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    :cond_3
    const-string p1, "sem_area"

    .line 99
    .line 100
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorAreaSizeInfo:[Ljava/lang/String;

    .line 105
    .line 106
    iget-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsOptical:Z

    .line 107
    .line 108
    if-eqz p1, :cond_4

    .line 109
    .line 110
    const-string p1, "nits"

    .line 111
    .line 112
    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mLightColor:Ljava/lang/String;

    .line 121
    .line 122
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mCalibrationLightColor:Ljava/lang/String;

    .line 123
    .line 124
    const-string p1, "brightness"

    .line 125
    .line 126
    const p2, 0x439f8000    # 319.0f

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mBrightnessNitForOptical:F

    .line 134
    .line 135
    const-string p1, "lightColor"

    .line 136
    .line 137
    const p2, 0x44034000    # 525.0f

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mNitsForOptical:F

    .line 145
    .line 146
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->updateSensorInfo()V

    .line 147
    .line 148
    .line 149
    :cond_5
    return-void
.end method


# virtual methods
.method public final getSensorImagePoint(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsAnyUdfps:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    new-instance v2, Landroid/graphics/Point;

    .line 11
    .line 12
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 13
    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorImageSize:I

    .line 18
    .line 19
    div-int/lit8 v1, v1, 0x2

    .line 20
    .line 21
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginLeft:I

    .line 22
    .line 23
    sub-int v3, v1, v3

    .line 24
    .line 25
    iput v3, v2, Landroid/graphics/Point;->x:I

    .line 26
    .line 27
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginBottom:I

    .line 28
    .line 29
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorAreaHeight:I

    .line 30
    .line 31
    div-int/lit8 p0, p0, 0x2

    .line 32
    .line 33
    add-int/2addr p0, v3

    .line 34
    add-int/2addr p0, v1

    .line 35
    iput p0, v2, Landroid/graphics/Point;->y:I

    .line 36
    .line 37
    :cond_0
    iget p0, p1, Landroid/graphics/Point;->x:I

    .line 38
    .line 39
    div-int/lit8 p0, p0, 0x2

    .line 40
    .line 41
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 42
    .line 43
    sub-int/2addr p0, v1

    .line 44
    iput p0, v0, Landroid/graphics/Point;->x:I

    .line 45
    .line 46
    iget p0, p1, Landroid/graphics/Point;->y:I

    .line 47
    .line 48
    iget p1, v2, Landroid/graphics/Point;->y:I

    .line 49
    .line 50
    sub-int/2addr p0, p1

    .line 51
    iput p0, v0, Landroid/graphics/Point;->y:I

    .line 52
    .line 53
    :cond_1
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SensorInfo{raw="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorAreaSizeInfo:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", Width="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorAreaWidth:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", Height="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorAreaHeight:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v1, ", Bottom="

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginBottom:I

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", Left="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginLeft:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", Size="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorImageSize:I

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", NaviHide="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsNaviHide:Z

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v1, ", LightColor="

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mLightColor:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ", B="

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mBrightnessNitForOptical:F

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string v1, ", N="

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mNitsForOptical:F

    .line 103
    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const/16 p0, 0x7d

    .line 108
    .line 109
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p0

    .line 116
    return-object p0
.end method

.method public final updateSensorInfo()V
    .locals 8

    .line 1
    const-string v0, "updateSensorInfo: "

    .line 2
    .line 3
    const-string v1, "BSS_FingerprintSensorInfo"

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsAnyUdfps:Z

    .line 6
    .line 7
    if-eqz v2, :cond_2

    .line 8
    .line 9
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorAreaSizeInfo:[Ljava/lang/String;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x1

    .line 22
    :try_start_0
    aget-object v5, v2, v4

    .line 23
    .line 24
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    const/4 v6, 0x5

    .line 29
    invoke-static {v6, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    float-to-int v5, v5

    .line 34
    iput v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorAreaHeight:I

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    aget-object v7, v2, v5

    .line 38
    .line 39
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-static {v6, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    float-to-int v7, v7

    .line 48
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorAreaWidth:I

    .line 49
    .line 50
    const/4 v7, 0x2

    .line 51
    aget-object v7, v2, v7

    .line 52
    .line 53
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    invoke-static {v6, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    float-to-int v7, v7

    .line 62
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginBottom:I

    .line 63
    .line 64
    const/4 v7, 0x3

    .line 65
    aget-object v7, v2, v7

    .line 66
    .line 67
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    invoke-static {v6, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    float-to-int v7, v7

    .line 76
    iput v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginLeft:I

    .line 77
    .line 78
    const/4 v7, 0x4

    .line 79
    aget-object v2, v2, v7

    .line 80
    .line 81
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    invoke-static {v6, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    float-to-int v2, v2

    .line 90
    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorImageSize:I

    .line 91
    .line 92
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mSensorMarginBottom:I

    .line 93
    .line 94
    sget-object v7, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->SENSOR_BOTTOM_MARGIN_BOUNDARY_RECENT_HOME_KEY:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    invoke-static {v6, v7, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    float-to-int v3, v3

    .line 105
    if-ge v2, v3, :cond_1

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    move v4, v5

    .line 109
    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->mIsNaviHide:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :catch_0
    move-exception v2

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {v2, v3, v1}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_1
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    .line 122
    .line 123
    if-eqz v2, :cond_2

    .line 124
    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/FingerprintSensorInfo;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    :cond_2
    :goto_2
    return-void
.end method
