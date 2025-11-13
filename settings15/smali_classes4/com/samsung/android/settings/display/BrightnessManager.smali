.class public final Lcom/samsung/android/settings/display/BrightnessManager;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mBrightnessObserver:Lcom/samsung/android/settings/display/BrightnessManager$1;

.field public mChangeType:I

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mHBM_PMS_EnterObserver:Lcom/samsung/android/settings/display/BrightnessManager$1;

.field public mIsHBMOnOff:Z

.field public mMaxBrightness:I

.field public final mMaxBrightnessChangedReceiver:Lcom/samsung/android/settings/display/BrightnessManager$2;

.field public final mOnBrightnessChangeListener:Landroidx/core/util/Consumer;

.field public final mOnHBMListener:Landroidx/core/util/Consumer;

.field public final mScreenBrightnessMaximum:I

.field public final mScreenBrightnessMinimum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mMaxBrightness:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mChangeType:I

    new-instance v1, Lcom/samsung/android/settings/display/BrightnessManager$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/settings/display/BrightnessManager$1;-><init>(Lcom/samsung/android/settings/display/BrightnessManager;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mBrightnessObserver:Lcom/samsung/android/settings/display/BrightnessManager$1;

    new-instance v1, Lcom/samsung/android/settings/display/BrightnessManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/BrightnessManager$2;-><init>(Lcom/samsung/android/settings/display/BrightnessManager;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mMaxBrightnessChangedReceiver:Lcom/samsung/android/settings/display/BrightnessManager$2;

    new-instance v1, Lcom/samsung/android/settings/display/BrightnessManager$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/settings/display/BrightnessManager$1;-><init>(Lcom/samsung/android/settings/display/BrightnessManager;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mHBM_PMS_EnterObserver:Lcom/samsung/android/settings/display/BrightnessManager$1;

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mOnBrightnessChangeListener:Landroidx/core/util/Consumer;

    iput-object p3, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mOnHBMListener:Landroidx/core/util/Consumer;

    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const-string p3, "display"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMinimum:I

    invoke-virtual {p2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mScreenBrightnessMaximum:I

    const-string p1, "high_brightness_mode_pms_enter"

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessManager;->mIsHBMOnOff:Z

    return-void
.end method
