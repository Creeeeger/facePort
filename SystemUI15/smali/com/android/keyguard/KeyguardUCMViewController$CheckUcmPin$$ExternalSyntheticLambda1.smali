.class public final synthetic Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->onVerifyPukResponse(IILandroid/os/Bundle;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v1}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->onVerifyPinResponse(IILandroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
