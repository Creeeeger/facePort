.class Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;
.super Ljava/lang/Object;
.source "BrightnessSeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/BrightnessSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SemBrightnessManager"
.end annotation


# instance fields
.field private final mBrightnessObserver:Landroid/database/ContentObserver;

.field private mChangeType:I

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

.field private mIsHBMOnOff:Z

.field private mMaxBrightness:I

.field private final mMaxBrightnessChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mOnBrightnessChangeListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnHBMListener:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessMaximum:I

.field private final mScreenBrightnessMinimum:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmChangeType(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mChangeType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsHBMOnOff(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mIsHBMOnOff:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnBrightnessChangeListener(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)Landroidx/core/util/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mOnBrightnessChangeListener:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnHBMListener(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)Landroidx/core/util/Consumer;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mOnHBMListener:Landroidx/core/util/Consumer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmChangeType(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mChangeType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsHBMOnOff(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mIsHBMOnOff:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mconvertToBrightness(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->convertToBrightness(F)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetBrightness(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->getBrightness()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetMaxBrightnessLimit(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->setMaxBrightnessLimit(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/core/util/Consumer;Landroidx/core/util/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/core/util/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 637
    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mMaxBrightness:I

    const/4 v0, 0x0

    .line 640
    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mChangeType:I

    .line 648
    new-instance v1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$1;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$1;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 659
    new-instance v1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$2;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mMaxBrightnessChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 678
    new-instance v1, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$3;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager$3;-><init>(Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    .line 689
    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContext:Landroid/content/Context;

    .line 690
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 691
    iput-object p2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mOnBrightnessChangeListener:Landroidx/core/util/Consumer;

    .line 692
    iput-object p3, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mOnHBMListener:Landroidx/core/util/Consumer;

    const-string p2, "power"

    .line 693
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    const-string p3, "display"

    .line 695
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 697
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mScreenBrightnessMinimum:I

    .line 698
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mScreenBrightnessMaximum:I

    const-string p1, "high_brightness_mode_pms_enter"

    .line 706
    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mIsHBMOnOff:Z

    return-void
.end method

.method private convertToBrightness(F)I
    .locals 1

    .line 773
    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mScreenBrightnessMinimum:I

    iget p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mScreenBrightnessMaximum:I

    invoke-static {v0, p0, p1}, Landroid/util/MathUtils;->lerp(IIF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getBrightness()I
    .locals 2

    .line 744
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->isInVrMode()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 745
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness_for_vr"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 747
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "screen_brightness"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private isInVrMode()Z
    .locals 3

    const-string p0, "BrightnessSeekBarPreference"

    :try_start_0
    const-string v0, "vrmanager"

    .line 786
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInVrMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to check vr mode!"

    .line 793
    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private returnMaxBrightness(I)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    return p1

    :cond_0
    const/16 p0, 0xff

    return p0
.end method

.method private setBrightness(I)V
    .locals 0

    .line 740
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->semSetTemporaryBrightness(I)V

    return-void
.end method

.method private setMaxBrightnessLimit(I)V
    .locals 1

    .line 751
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->returnMaxBrightness(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mMaxBrightness:I

    .line 752
    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mScreenBrightnessMaximum:I

    if-le p1, v0, :cond_0

    .line 753
    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mMaxBrightness:I

    .line 755
    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mMaxBrightness:I

    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mScreenBrightnessMinimum:I

    if-ge p1, v0, :cond_1

    .line 756
    iput v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mMaxBrightness:I

    :cond_1
    return-void
.end method


# virtual methods
.method clearTransitionTime()V
    .locals 1

    const/4 v0, -0x1

    .line 806
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->setTransitionTime(I)V

    return-void
.end method

.method public getDuration()I
    .locals 2

    .line 823
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "auto_brightness_transition_time"

    const/16 v1, 0xbb8

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-gez p0, :cond_0

    return v1

    :cond_0
    return p0
.end method

.method getRatioOfBrightness()F
    .locals 2

    .line 800
    invoke-direct {p0}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->getBrightness()I

    move-result v0

    .line 801
    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mScreenBrightnessMinimum:I

    int-to-float v1, v1

    iget p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mScreenBrightnessMaximum:I

    int-to-float p0, p0

    int-to-float v0, v0

    invoke-static {v1, p0, v0}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result p0

    return p0
.end method

.method isHBMOnOff()Z
    .locals 0

    .line 814
    iget-boolean p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mIsHBMOnOff:Z

    return p0
.end method

.method isHBMSupported()Z
    .locals 2

    .line 761
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 763
    iget v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mScreenBrightnessMaximum:I

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/Rune;->supportAutoBrightness(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isOverHeat(F)Z
    .locals 1

    .line 767
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->convertToBrightness(F)I

    move-result p1

    .line 768
    iget v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mMaxBrightness:I

    if-ge v0, p1, :cond_0

    iget p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mChangeType:I

    if-nez p0, :cond_0

    const/4 p0, -0x1

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method register()V
    .locals 4

    .line 710
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    .line 711
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v1, "high_brightness_mode_pms_enter"

    .line 712
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 714
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.MAX_BRIGHTNESS_CHANGED"

    .line 715
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mMaxBrightnessChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method setBrightnessByRatio(F)V
    .locals 0

    .line 731
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->convertToBrightness(F)I

    move-result p1

    .line 732
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->setBrightness(I)V

    return-void
.end method

.method setTransitionTime(I)V
    .locals 1

    .line 810
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "auto_brightness_transition_time"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method unregister()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 721
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 722
    iget-object v1, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mHBM_PMS_EnterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 724
    iget-object v0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mMaxBrightnessChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method updateBrightness(F)V
    .locals 1

    .line 818
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->convertToBrightness(F)I

    move-result p1

    .line 819
    iget-object p0, p0, Lcom/samsung/android/settings/display/BrightnessSeekBarPreference$SemBrightnessManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "screen_brightness"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
