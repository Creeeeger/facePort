.class public final Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;->this$1:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;->this$1:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object v0, v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_brightness_mode_pms_enter"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "UPDATE_HIGH_BRIGHTNESS_MODE = "

    const-string v3, "SubscreenBrightnessController"

    invoke-static {v1, v3, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-boolean v0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mIsHighBrightnessMode:Z

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver$1;->this$1:Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/qp/SubscreenBrightnessController;

    iget-object p0, p0, Lcom/android/systemui/qp/SubscreenBrightnessController;->mHandler:Lcom/android/systemui/qp/SubscreenBrightnessController$3;

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
