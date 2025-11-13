.class public final synthetic Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardKnoxGuardViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p3, 0x42

    if-eq p1, p3, :cond_1

    :cond_0
    const/4 p1, 0x6

    if-ne p2, p1, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;->verifyPasswordAndUnlock()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
