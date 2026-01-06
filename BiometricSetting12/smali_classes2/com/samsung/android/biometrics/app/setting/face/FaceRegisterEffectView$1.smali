.class Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;
.super Ljava/lang/Object;
.source "FaceRegisterEffectView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->access$000(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;II)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->access$100(Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;II)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceRegisterEffectView;->invalidate()V

    return-void
.end method
