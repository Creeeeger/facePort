.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;
.super Ljava/lang/Object;
.source "InDisplaySensorHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorIconOptionListener"
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mIconOptionWhenScreenOff:I

.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public isEnabledOnAod()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mIconOptionWhenScreenOff:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnabledTapToShow()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mIconOptionWhenScreenOff:I

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
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener$1;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mContentObserver:Landroid/database/ContentObserver;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "fingerprint_screen_off_icon_aod"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->updateValue()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mContentObserver:Landroid/database/ContentObserver;
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
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "fingerprint_screen_off_icon_aod"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mIconOptionWhenScreenOff:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SensorIconOptionListener.updateValue: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mIconOptionWhenScreenOff:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BSS_InDisplaySensorHelper"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mIconOptionWhenScreenOff:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "fingerprint_adaptive_icon"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;)Landroid/content/Context;

    move-result-object v4

    const-string v6, "fingerprint_screen_off_icon"

    invoke-static {v4, v6, v5, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v2

    if-eqz v0, :cond_3

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    if-eq v0, v5, :cond_2

    if-ne v2, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    iput v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mIconOptionWhenScreenOff:I

    goto :goto_2

    :cond_2
    :goto_0
    iput v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mIconOptionWhenScreenOff:I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mIconOptionWhenScreenOff:I

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorIconOptionListener.updateValue: No DB, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mIconOptionWhenScreenOff:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;)Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->mIconOptionWhenScreenOff:I

    invoke-static {v3, v1, v5, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    :cond_4
    return-void
.end method
