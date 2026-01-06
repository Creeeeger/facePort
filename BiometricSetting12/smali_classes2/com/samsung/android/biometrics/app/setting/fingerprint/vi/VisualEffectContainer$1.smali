.class Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;
.super Ljava/lang/Object;
.source "VisualEffectContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->setScreenSize(II)V

    return-void
.end method
