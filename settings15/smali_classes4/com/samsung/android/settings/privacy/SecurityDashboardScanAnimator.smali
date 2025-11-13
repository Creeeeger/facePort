.class public final Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mHandler:Landroid/os/Handler;

.field public mPerformScanVi:Z

.field public mScanViMenuControllers:Ljava/util/Map;

.field public mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;


# direct methods
.method public static findController(Ljava/lang/String;Ljava/util/List;)Lcom/android/settingslib/core/AbstractPreferenceController;
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/core/AbstractPreferenceController;

    return-object p0
.end method


# virtual methods
.method public final refreshMenuItemsStatusWithVi(ILjava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mScanViMenuControllers:Ljava/util/Map;

    move-object v1, p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mScanViMenuControllers:Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->updateStateAfterVi()V

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iget-object v3, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mStatusPreference:Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mScanViMenuControllers:Ljava/util/Map;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mScanViMenuControllers:Ljava/util/Map;

    check-cast v1, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;

    sget-object v1, Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;->SCANNING:Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->setStatus(Lcom/samsung/android/settings/privacy/SecurityDashboardConstants$Status;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/privacy/SecurityDashboardPreferenceController;->getScanCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->updateScanCategoryIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;Ljava/util/List;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/samsung/android/settings/privacy/SecurityDashboardScanAnimator;->refreshMenuItemsStatusWithVi(ILjava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v3, p0, v2}, Lcom/samsung/android/settings/widget/SecurityDashboardStatusPreference;->setScanning(ZZ)V

    :goto_0
    return-void
.end method
