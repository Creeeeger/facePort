.class Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer$1;
.super Ljava/lang/Object;
.source "InDisplaySensorWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

.field final synthetic val$this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer$1;->val$this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer$1;->this$1:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->setVisibility(I)V

    return-void
.end method
