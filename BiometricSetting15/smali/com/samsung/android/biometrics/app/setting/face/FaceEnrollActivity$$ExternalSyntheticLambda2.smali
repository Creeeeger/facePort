.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->$r8$clinit:I

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->hideGlassesGuide(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget v0, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->$r8$clinit:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->hideGlassesGuide(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
