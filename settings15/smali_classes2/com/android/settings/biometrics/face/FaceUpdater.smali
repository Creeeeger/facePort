.class public final Lcom/android/settings/biometrics/face/FaceUpdater;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFaceManager:Landroid/hardware/face/FaceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceUpdater;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceUpdater;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/face/FaceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceUpdater;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceUpdater;->mFaceManager:Landroid/hardware/face/FaceManager;

    return-void
.end method
