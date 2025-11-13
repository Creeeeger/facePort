.class public final Lcom/android/keyguard/KeyguardMessageAreaController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardMessageAreaController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardMessageAreaController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->access$000(Lcom/android/keyguard/KeyguardMessageAreaController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardMessageAreaController;->mAnnounceRunnable:Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardMessageAreaController;->mAnnounceRunnable:Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;

    iput-object p1, v1, Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;->mTextToAnnounce:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->access$100(Lcom/android/keyguard/KeyguardMessageAreaController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardMessageArea;

    new-instance v1, Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardMessageAreaController$1;Ljava/lang/CharSequence;)V

    const-wide/16 p0, 0xfa

    invoke-virtual {v0, v1, p0, p1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
