.class public final synthetic Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    sget p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroid/app/AlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const-string p1, "FcstFaceLockSettings"

    const-string/jumbo p2, "startFaceRegister"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(ZZ)V

    return-void
.end method
