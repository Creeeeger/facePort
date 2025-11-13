.class public final synthetic Lcom/android/keyguard/KeyguardSecSimPukViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController$2;->this$0:Lcom/android/keyguard/KeyguardSecSimPukViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    if-eqz v0, :cond_0

    const-string v0, "KeyguardSecSimPukViewController"

    const-string v1, "eraseSubscriptions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;->mESimSkipArea:Lcom/android/keyguard/KeyguardSecESimArea;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecESimArea;->eraseSubscriptions()V

    :cond_0
    return-void

    :pswitch_0
    check-cast p0, Lcom/android/keyguard/KeyguardSecSimPukViewController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->setSimInfoViewVisibility$1(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSimPukViewController;->updateESimLayout$1()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
