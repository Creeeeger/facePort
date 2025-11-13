.class public final Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# instance fields
.field public final defValue:F

.field public final interpolator:Landroid/view/animation/PathInterpolator;

.field public final isReverse:Z

.field public final length:J


# direct methods
.method public constructor <init>(JF)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->isReverse:Z

    .line 8
    iput-wide p1, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->length:J

    .line 9
    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->defValue:F

    return-void
.end method

.method public constructor <init>(JLandroid/view/animation/PathInterpolator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->isReverse:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->defValue:F

    .line 4
    iput-wide p1, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->length:J

    .line 5
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->interpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(JLandroid/view/animation/PathInterpolator;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    .line 11
    iput p4, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->defValue:F

    .line 12
    iput-wide p1, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->length:J

    .line 13
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->interpolator:Landroid/view/animation/PathInterpolator;

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/AnimationHelper$Item;->isReverse:Z

    return-void
.end method
