.class Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer$1;
.super Landroid/database/ContentObserver;
.source "InDisplaySensorWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->observe(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->access$4700(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;)V

    return-void
.end method
