.class public final Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-static {}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->resetInstance()V

    return-void
.end method
