.class public final Lcom/android/settings/password/ChooseLockGenericController$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mAppRequestedMinComplexity:I

.field public final mContext:Landroid/content/Context;

.field public mDevicePasswordRequirementOnly:Z

.field public mHideInsecureScreenLockTypes:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field public mUnificationProfileId:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1

    new-instance v0, Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p2, p1, v0, p3}, Lcom/android/settings/password/ChooseLockGenericController$Builder;-><init>(Landroid/content/Context;ILcom/android/settings/password/ManagedLockPasswordProvider;Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p1, v0}, Lcom/android/settings/password/ChooseLockGenericController$Builder;-><init>(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/settings/password/ManagedLockPasswordProvider;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mHideInsecureScreenLockTypes:Z

    iput v0, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mAppRequestedMinComplexity:I

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mDevicePasswordRequirementOnly:Z

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mUnificationProfileId:I

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mUserId:I

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    iput-object p4, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/settings/password/ChooseLockGenericController;
    .locals 10

    new-instance v9, Lcom/android/settings/password/ChooseLockGenericController;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v5, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mHideInsecureScreenLockTypes:Z

    iget v6, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mAppRequestedMinComplexity:I

    iget-boolean v7, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mDevicePasswordRequirementOnly:Z

    iget v8, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mUnificationProfileId:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mUserId:I

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGenericController$Builder;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;ILcom/android/settings/password/ManagedLockPasswordProvider;Lcom/android/internal/widget/LockPatternUtils;ZIZI)V

    return-object v9
.end method
