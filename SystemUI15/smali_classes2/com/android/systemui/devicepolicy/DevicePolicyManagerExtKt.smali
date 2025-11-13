.class public abstract Lcom/android/systemui/devicepolicy/DevicePolicyManagerExtKt;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public static areKeyguardShortcutsDisabled$default(Landroid/app/admin/DevicePolicyManager;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    and-int/lit16 p1, p0, 0x200

    const/16 v0, 0x200

    if-eq p1, v0, :cond_1

    const p1, 0x7fffffff

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
