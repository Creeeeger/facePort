.class Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$1;
.super Landroid/os/Handler;
.source "FaceEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;
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

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$1;->this$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->access$002(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;Z)Z

    return-void
.end method
