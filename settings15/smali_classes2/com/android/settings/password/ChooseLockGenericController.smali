.class public final Lcom/android/settings/password/ChooseLockGenericController;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mAppRequestedMinComplexity:I

.field public final mContext:Landroid/content/Context;

.field public final mDevicePasswordRequirementOnly:Z

.field public final mHideInsecureScreenLockTypes:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field public final mUnificationProfileId:I

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/settings/password/ManagedLockPasswordProvider;Lcom/android/internal/widget/LockPatternUtils;ZIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    iput-object p3, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    iput-object p4, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-boolean p5, p0, Lcom/android/settings/password/ChooseLockGenericController;->mHideInsecureScreenLockTypes:Z

    iput p6, p0, Lcom/android/settings/password/ChooseLockGenericController;->mAppRequestedMinComplexity:I

    iput-boolean p7, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDevicePasswordRequirementOnly:Z

    iput p8, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUnificationProfileId:I

    return-void
.end method


# virtual methods
.method public final getAggregatedPasswordComplexity()I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDevicePasswordRequirementOnly:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(IZ)I

    move-result v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mAppRequestedMinComplexity:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, -0x2710

    iget v2, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUnificationProfileId:I

    if-eq v2, v1, :cond_0

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordComplexity(I)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final getTitle(Lcom/android/settings/password/ScreenLockType;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const p1, 0x7f14304e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ""

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const p1, 0x7f14281d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const p1, 0x7f14281f

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const p1, 0x7f14281e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const p1, 0x7f14281b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const p1, 0x7f14281c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getVisibleAndEnabledScreenLockTypes()Ljava/util/List;
    .locals 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v7, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialsDisabledForUser(I)Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, v5, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    iget-object v8, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v9, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDevicePasswordRequirementOnly:Z

    invoke-virtual {v8, v7, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object v7

    const/16 v8, -0x2710

    iget v9, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUnificationProfileId:I

    if-eq v9, v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/app/admin/PasswordMetrics;->maxWith(Landroid/app/admin/PasswordMetrics;)V

    :cond_0
    iget v7, v7, Landroid/app/admin/PasswordMetrics;->credType:I

    invoke-static {v7}, Lcom/android/internal/widget/LockPatternUtils;->credentialTypeToPasswordQuality(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGenericController;->getAggregatedPasswordComplexity()I

    move-result v8

    invoke-static {v8}, Landroid/app/admin/PasswordMetrics;->complexityLevelToMinQuality(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-lt v6, v7, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mHideInsecureScreenLockTypes:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return v2

    :cond_1
    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->hasSecureLockScreen()Z

    move-result p0

    return p0

    :cond_2
    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f050014

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_3

    if-nez v0, :cond_3

    move v2, v3

    :cond_3
    return v2

    :cond_4
    if-nez v1, :cond_5

    iget-object p0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f050013

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_5

    if-nez v0, :cond_5

    move v2, v3

    :cond_5
    return v2
.end method
