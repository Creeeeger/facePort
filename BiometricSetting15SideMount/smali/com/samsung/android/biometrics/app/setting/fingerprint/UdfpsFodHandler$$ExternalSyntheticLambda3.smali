.class public final synthetic Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda3;->f$1:F

    .line 7
    .line 8
    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda3;->f$2:F

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;

    .line 2
    .line 3
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda3;->f$1:F

    .line 4
    .line 5
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler$$ExternalSyntheticLambda3;->f$2:F

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    cmpl-float v3, v1, v2

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    cmpl-float v2, p0, v2

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mGetUdfpsCenterPointInPortraitMode:Ljava/util/function/Supplier;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/graphics/Point;

    .line 26
    .line 27
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 28
    .line 29
    float-to-int v4, v1

    .line 30
    sub-int/2addr v3, v4

    .line 31
    iget v4, v2, Landroid/graphics/Point;->y:I

    .line 32
    .line 33
    float-to-int v5, p0

    .line 34
    sub-int/2addr v4, v5

    .line 35
    new-instance v5, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v6, "onFodTouchEvent: distance = "

    .line 38
    .line 39
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget v6, v2, Landroid/graphics/Point;->x:I

    .line 43
    .line 44
    int-to-float v6, v6

    .line 45
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 46
    .line 47
    int-to-float v2, v2

    .line 48
    sub-float/2addr v6, v1

    .line 49
    float-to-double v6, v6

    .line 50
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 51
    .line 52
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 53
    .line 54
    .line 55
    move-result-wide v6

    .line 56
    sub-float/2addr v2, p0

    .line 57
    float-to-double v1, v2

    .line 58
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    add-double/2addr v1, v6

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    double-to-float p0, v1

    .line 68
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsFodHandler;->mContext:Landroid/content/Context;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 75
    .line 76
    div-float/2addr p0, v0

    .line 77
    const v0, 0x41cb3333    # 25.4f

    .line 78
    .line 79
    .line 80
    mul-float/2addr p0, v0

    .line 81
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string p0, ", diff = "

    .line 85
    .line 86
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string p0, ", "

    .line 93
    .line 94
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    const-string v0, "BSS_UdfpsFodHandler"

    .line 105
    .line 106
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .line 108
    .line 109
    :cond_0
    return-void
.end method
