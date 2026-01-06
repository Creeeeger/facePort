.class Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;
.super Ljava/lang/Object;
.source "FaceEnrollActivity.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 6

    const-string v0, "BSS_FaceEnrollActivity"

    const-string v1, "onViewAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$100(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$102(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$200(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Landroid/view/DisplayCutout;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Notch Support"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$300(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$2;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "reduce_window"

    const-string v4, "id"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    const-string v0, "BSS_FaceEnrollActivity"

    const-string v1, "onViewDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
