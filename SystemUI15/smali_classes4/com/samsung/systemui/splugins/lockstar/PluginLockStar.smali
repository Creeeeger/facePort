.class public interface abstract Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPlugin;


# annotations
.annotation runtime Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;
    action = "com.samsung.systemui.action.PLUGIN_LOCK_STAR"
    version = 0xfa3
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.samsung.systemui.action.PLUGIN_LOCK_STAR"

.field public static final CLOCK_TYPE:Ljava/lang/String; = "Clock"

.field public static final COMPLICATION_WIDGET_TYPE:Ljava/lang/String; = "ComplicationWidget"

.field public static final INDICATOR_TYPE:Ljava/lang/String; = "Indicator"

.field public static final LOCK_ICON_TYPE:Ljava/lang/String; = "LockIcon"

.field public static final MAIN_DISPLAY:I = 0x0

.field public static final MAJOR_VERSION:I = 0x4

.field public static final MINOR_VERSION:I = 0x3

.field public static final MUSIC_TYPE:Ljava/lang/String; = "Music"

.field public static final NOTIFICATION_TYPE:Ljava/lang/String; = "Notification"

.field public static final PUNCH_HOLE_TYPE:Ljava/lang/String; = "PunchHole"

.field public static final STATUS_BAR_TYPE:Ljava/lang/String; = "StatusBar"

.field public static final STICKER_TYPE:Ljava/lang/String; = "Sticker"

.field public static final SUB_DISPLAY:I = 0x1

.field public static final TIMEOUT_TYPE:Ljava/lang/String; = "Timeout"

.field public static final TYPE_KEY:Ljava/lang/String; = "type"

.field public static final VERSION:I = 0xfa3

.field public static final WIDGET_TYPE:Ljava/lang/String; = "Widget"


# virtual methods
.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getAODData(Z)Landroid/os/Bundle;
.end method

.method public getFunction(Ljava/lang/String;)Ljava/util/function/Function;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getLockStarValues()Lcom/samsung/systemui/splugins/lockstar/LockStarValues;
.end method

.method public abstract getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSupplier(Ljava/lang/String;)Ljava/util/function/Supplier;
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ea
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getVersion()I
    .locals 0

    const/16 p0, 0xfa3

    return p0
.end method

.method public abstract init(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$PluginLockStarCallback;)V
.end method

.method public abstract isLockStarEnabled()Z
.end method

.method public abstract isPositionSynchronized(Ljava/lang/String;)Z
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method

.method public abstract isTouchable(Landroid/view/MotionEvent;)Z
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ec
    .end annotation
.end method

.method public abstract onChangedDisplay(I)V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ed
    .end annotation
.end method

.method public abstract onChangedDisplaySize(II)V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ed
    .end annotation
.end method

.method public abstract onChangedItemSize(Ljava/lang/String;II)V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ed
    .end annotation
.end method

.method public onChangedNoNeedUnlockServiceState(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public abstract onChangedOrientation(Z)V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ed
    .end annotation
.end method

.method public abstract onFinishedGoingToSleep()V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method

.method public abstract onFinishedWakingUp()V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method

.method public abstract onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ee
    .end annotation
.end method

.method public abstract onMediaNowBarExpandStateChanged(Z)V
.end method

.method public onPackageAdded(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3eb
    .end annotation

    return-void
.end method

.method public abstract onPackageChanged(Ljava/lang/String;)V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3eb
    .end annotation
.end method

.method public abstract onPackageRemoved(Ljava/lang/String;Z)V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3eb
    .end annotation
.end method

.method public onRequestResult(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public abstract onStartedGoingToSleep()V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method

.method public abstract onStartedWakingUp()V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method

.method public abstract requestExtraData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method

.method public abstract setDarkAmount(Ljava/lang/Float;)V
    .annotation runtime Lcom/samsung/systemui/splugins/annotations/Requires;
        target = Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;
        version = 0x3ef
    .end annotation
.end method
