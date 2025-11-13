.class public final Lcom/android/systemui/globalactions/presentation/viewmodel/ScreenCapturePopupActionViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field public mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field public final mPopupController:Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ScreenCapturePopupActionViewModel;->mPopupController:Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    return-void
.end method


# virtual methods
.method public final getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ScreenCapturePopupActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object p0
.end method

.method public final isAvailableShow()Z
    .locals 13

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ScreenCapturePopupActionViewModel;->mPopupController:Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;->mPrefrerences:Landroid/content/SharedPreferences;

    const-string v1, "count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v4, "current count : "

    const-string v5, ", diff : "

    invoke-static {v0, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;->mPrefrerences:Landroid/content/SharedPreferences;

    const-string v8, "dismissTime"

    const-wide/16 v9, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    sub-long/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ScreenCapturePopupController"

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/globalactions/util/LogWrapper;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;->mPrefrerences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v8, v9, v10}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;->mPrefrerences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/util/ScreenCapturePopupController;->mPrefrerences:Landroid/content/SharedPreferences;

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    add-int/2addr p0, v3

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v2, v3

    :cond_0
    return v2
.end method

.method public final onPress()V
    .locals 0

    return-void
.end method

.method public final setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/viewmodel/ScreenCapturePopupActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method
