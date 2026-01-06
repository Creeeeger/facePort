.class Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "FaceEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->initFaceEnroll(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const v1, 0x8000

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$400(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$3;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$400(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
