.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsOpticalBlackMaskWindow;
.super Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public mBlackMaskView:Lcom/samsung/android/biometrics/app/setting/fingerprint/BlackMaskView;


# virtual methods
.method public final getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    .line 8
    .line 9
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 10
    .line 11
    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 12
    .line 13
    const v5, 0x1000018

    .line 14
    .line 15
    .line 16
    const/4 v6, -0x3

    .line 17
    const/16 v4, 0x96f

    .line 18
    .line 19
    move-object v1, v7

    .line 20
    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 21
    .line 22
    .line 23
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 24
    .line 25
    const v1, -0x10001

    .line 26
    .line 27
    .line 28
    and-int/2addr v0, v1

    .line 29
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 30
    .line 31
    const/4 v0, 0x3

    .line 32
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 33
    .line 34
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 35
    .line 36
    or-int/lit16 v0, v0, 0x2050

    .line 37
    .line 38
    iput v0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-static {p0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isTpaMode(Landroid/content/Context;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_0

    .line 47
    .line 48
    iget p0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 49
    .line 50
    const/high16 v0, 0x100000

    .line 51
    .line 52
    or-int/2addr p0, v0

    .line 53
    iput p0, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 54
    .line 55
    :cond_0
    const/4 p0, 0x0

    .line 56
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 57
    .line 58
    .line 59
    const/high16 p0, 0x40000

    .line 60
    .line 61
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 62
    .line 63
    .line 64
    const/high16 p0, 0x20000000

    .line 65
    .line 66
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->semAddPrivateFlags(I)V

    .line 67
    .line 68
    .line 69
    const/high16 p0, 0x20000

    .line 70
    .line 71
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 72
    .line 73
    .line 74
    const/16 p0, 0x8

    .line 75
    .line 76
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 77
    .line 78
    .line 79
    const-string p0, "FP BlackMaskView"

    .line 80
    .line 81
    invoke-virtual {v7, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    .line 83
    .line 84
    return-object v7
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "BSS_UdfpsOpticalBlackMaskWindow"

    .line 2
    .line 3
    return-object p0
.end method
