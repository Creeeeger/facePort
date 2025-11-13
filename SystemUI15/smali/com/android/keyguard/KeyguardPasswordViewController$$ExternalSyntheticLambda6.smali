.class public final synthetic Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardPasswordViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPasswordViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/KeyguardPasswordViewController;

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPasswordViewController$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/KeyguardPasswordViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    invoke-static {p2}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3e

    if-eq p2, p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->verifyPasswordAndUnlock()V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
