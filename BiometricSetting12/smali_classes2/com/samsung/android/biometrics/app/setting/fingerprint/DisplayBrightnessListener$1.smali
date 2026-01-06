.class Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$1;
.super Landroid/os/FileObserver;
.source "DisplayBrightnessListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$OnBrightnessListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onEvent$0$DisplayBrightnessListener$1()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;)Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$OnBrightnessListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$OnBrightnessListener;->onChanged(I)V

    return-void
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->getBrightnessFromFile()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->access$002(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;I)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$1;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
