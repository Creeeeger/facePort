.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    sget v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/16 v0, 0x3ed

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    if-eq p0, v1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    invoke-virtual {p1, p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->setEnrollResult(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    new-instance p0, Landroid/content/Intent;

    .line 27
    .line 28
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v0, "biometrics_settings_destroy"

    .line 32
    .line 33
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    const/4 v0, -0x3

    .line 37
    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 41
    .line 42
    .line 43
    :goto_1
    return-void
.end method
