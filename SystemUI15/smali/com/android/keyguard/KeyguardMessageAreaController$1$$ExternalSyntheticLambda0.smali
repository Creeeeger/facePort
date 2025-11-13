.class public final synthetic Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardMessageAreaController$1;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardMessageAreaController$1;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardMessageAreaController$1;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardMessageAreaController$1;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageAreaController$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardMessageAreaController$1;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardMessageAreaController;->access$200(Lcom/android/keyguard/KeyguardMessageAreaController;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-ne p0, v1, :cond_0

    iget-object p0, v0, Lcom/android/keyguard/KeyguardMessageAreaController$1;->this$0:Lcom/android/keyguard/KeyguardMessageAreaController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageAreaController;->mAnnounceRunnable:Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageAreaController$AnnounceRunnable;->run()V

    :cond_0
    return-void
.end method
