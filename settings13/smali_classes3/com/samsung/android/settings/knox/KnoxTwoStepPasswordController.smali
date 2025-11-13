.class public Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;
.super Ljava/lang/Object;
.source "KnoxTwoStepPasswordController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDevicePasswordRequirementOnly:Z

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field private final mRequestedMinComplexity:I

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZLcom/android/internal/widget/LockPatternUtils;)V
    .locals 7

    .line 31
    invoke-static {p1, p2}, Lcom/android/settings/password/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 30
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;-><init>(Landroid/content/Context;IIZLcom/android/settings/password/ManagedLockPasswordProvider;Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;IIZLcom/android/settings/password/ManagedLockPasswordProvider;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mContext:Landroid/content/Context;

    .line 42
    iput p2, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mUserId:I

    .line 43
    iput p3, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mRequestedMinComplexity:I

    .line 44
    iput-boolean p4, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mDevicePasswordRequirementOnly:Z

    .line 45
    iput-object p5, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    .line 46
    iput-object p6, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public getAggregatedPasswordComplexity()I
    .locals 3

    .line 55
    iget v0, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mRequestedMinComplexity:I

    iget-object v1, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mUserId:I

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mDevicePasswordRequirementOnly:Z

    .line 56
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(IZ)I

    move-result p0

    .line 55
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getAggregatedPasswordMetrics()Landroid/app/admin/PasswordMetrics;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mUserId:I

    iget-boolean p0, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mDevicePasswordRequirementOnly:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object p0

    return-object p0
.end method

.method public isLockTypeEnabled(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->upgradeQuality(I)I

    move-result p0

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public upgradeQuality(I)I
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->getAggregatedPasswordMetrics()Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    iget v0, v0, Landroid/app/admin/PasswordMetrics;->credType:I

    .line 70
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result v0

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->getAggregatedPasswordComplexity()I

    move-result p0

    .line 72
    invoke-static {p0}, Landroid/app/admin/PasswordMetrics;->complexityLevelToMinQuality(I)I

    move-result p0

    .line 69
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 68
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
