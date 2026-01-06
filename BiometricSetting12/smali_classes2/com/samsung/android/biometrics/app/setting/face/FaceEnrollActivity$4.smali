.class Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$4;
.super Landroid/widget/Toast$Callback;
.source "FaceEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->onResume()V
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

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-direct {p0}, Landroid/widget/Toast$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onToastHidden()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$002(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z

    return-void
.end method

.method public onToastShown()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$4;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$002(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z

    return-void
.end method
