.class public final synthetic Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;[ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$1:[I

    iput-object p3, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;[ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$1:[I

    iput-object p3, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$1:[I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;->onVerifyPukResponse(IILandroid/os/Bundle;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$1:[I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin$$ExternalSyntheticLambda0;->f$2:Landroid/os/Bundle;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x2

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1, p0}, Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;->onVerifyPinResponse(IILandroid/os/Bundle;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
