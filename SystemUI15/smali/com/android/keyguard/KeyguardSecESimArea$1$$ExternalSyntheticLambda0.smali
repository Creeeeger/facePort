.class public final synthetic Lcom/android/keyguard/KeyguardSecESimArea$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecESimArea$1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecESimArea$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecESimArea$1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecESimArea$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "KeyguardSecEsimArea"

    const-string p2, "onClick - Remove button"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecESimArea;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea$1;->this$0:Lcom/android/keyguard/KeyguardSecESimArea;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecESimArea;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->removeESim(I)V

    return-void
.end method
