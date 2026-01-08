.class public final synthetic Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/face/FaceGuideFragment;->mActivity:Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/face/FaceEnrollActivity;->startEnrollFragment()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
