.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;
.super Ljava/lang/Object;
.source "InDisplaySensorWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisualEffectLayer"
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mViEffectType:I

.field private mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$4300(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->updateValue()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->observe(Z)V

    return-void
.end method

.method static synthetic access$4700(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->updateValue()V

    return-void
.end method

.method private observe(Z)V
    .locals 5

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer$1;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$4600(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "fingerprint_effect"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mContentObserver:Landroid/database/ContentObserver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VI effect observe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private updateValue()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$4400(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "fingerprint_effect"

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mViEffectType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->cleanUp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$4500(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->observe(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->cleanUp()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    :cond_0
    return-void
.end method

.method disableVisualEffectTouchMapUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->disableTouchMapUpdate()V

    :cond_0
    return-void
.end method

.method startVisualEffect()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->start()V

    :cond_0
    return-void
.end method

.method updateDisplayChanged()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->mVisualEffectView:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->updateDisplayChanged()V

    :cond_0
    return-void
.end method
