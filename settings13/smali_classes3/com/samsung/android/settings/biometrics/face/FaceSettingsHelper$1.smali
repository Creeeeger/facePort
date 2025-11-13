.class Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper$1;
.super Ljava/lang/Object;
.source "FaceSettingsHelper.java"

# interfaces
.implements Lcom/samsung/android/knox/cmfa/IAuthResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setAdvancedAccessControl(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 0

    const-string p0, "FcstFaceSettingsHelper"

    const-string p1, "onFail"

    .line 620
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess()V
    .locals 1

    const-string p0, "FcstFaceSettingsHelper"

    const-string v0, "onSuccess"

    .line 615
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
