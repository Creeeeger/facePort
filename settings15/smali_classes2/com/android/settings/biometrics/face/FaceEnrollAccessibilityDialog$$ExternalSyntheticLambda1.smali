.class public final synthetic Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollAccessibilityDialog;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {p0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method
