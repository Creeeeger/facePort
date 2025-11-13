.class public final Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mDevicePasswordRequirementOnly:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mRequestedMinComplexity:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(IIZLcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mUserId:I

    iput p2, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mRequestedMinComplexity:I

    iput-boolean p3, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mDevicePasswordRequirementOnly:Z

    iput-object p4, p0, Lcom/samsung/android/settings/knox/KnoxTwoStepPasswordController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method
