.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;
.super Ljava/lang/Object;
.source "InDisplaySensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AodStatusListener"
.end annotation


# static fields
.field private static final KEY_AOD_MODE:Ljava/lang/String; = "aod_mode"

.field private static final KEY_AOD_MODE_END_TIME:Ljava/lang/String; = "aod_mode_end_time"

.field private static final KEY_AOD_MODE_START_TIME:Ljava/lang/String; = "aod_mode_start_time"

.field private static final KEY_AOD_MODE_TAP_TO_SHOW:Ljava/lang/String; = "aod_tap_to_show_mode"

.field private static final KEY_AOD_SHOW_STATUS:Ljava/lang/String; = "aod_show_state"


# instance fields
.field private mAodEndTime:I

.field private mAodShowState:I

.field private mAodStartTime:I

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mH:Landroid/os/Handler;

.field private mIsEnabledAod:Z

.field private mIsEnabledAodTapToShow:Z

.field private mRunnableHandleOnChanged:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mH:Landroid/os/Handler;

    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mRunnableHandleOnChanged:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mRunnableHandleOnChanged:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mH:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public isEnabledShowAlways()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mIsEnabledAod:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mIsEnabledAodTapToShow:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mAodStartTime:I

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mAodEndTime:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledShowAsScheduled()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mIsEnabledAod:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mIsEnabledAodTapToShow:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mAodStartTime:I

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mAodEndTime:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledTapToShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mIsEnabledAod:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mIsEnabledAodTapToShow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNeedWindowOnAOD()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->isEnabledShowAlways()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->isEnabledShowAsScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isShowing()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mAodShowState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public observe(Z)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener$1;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "aod_show_state"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->updateValue()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mRunnableHandleOnChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentObserver:Landroid/database/ContentObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AodStatusListener.observe: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_InDisplaySensorHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public updateValue()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "aod_show_state"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mAodShowState:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "aod_mode"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mIsEnabledAod:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "aod_tap_to_show_mode"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mIsEnabledAodTapToShow:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "aod_mode_start_time"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mAodStartTime:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "aod_mode_end_time"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mAodEndTime:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AodStatusListener.updateValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mIsEnabledAod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mAodShowState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mIsEnabledAodTapToShow:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mAodStartTime:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->mAodEndTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_InDisplaySensorHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
