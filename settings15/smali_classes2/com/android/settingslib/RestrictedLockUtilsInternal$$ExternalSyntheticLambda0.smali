.class public final synthetic Lcom/android/settingslib/RestrictedLockUtilsInternal$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/RestrictedLockUtilsInternal$LockSettingCheck;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$$ExternalSyntheticLambda0;->f$0:I

    iput p2, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final isEnforcing(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;I)Z
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    iget p2, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$$ExternalSyntheticLambda0;->f$0:I

    if-eq p3, p2, :cond_0

    and-int/lit16 p1, p1, 0x3b7

    :cond_0
    iget p0, p0, Lcom/android/settingslib/RestrictedLockUtilsInternal$$ExternalSyntheticLambda0;->f$1:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
