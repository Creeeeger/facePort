.class public final synthetic Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/BaseSecPasswordTextView$UserActivityListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    return-void
.end method


# virtual methods
.method public final onUserActivity()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController$$ExternalSyntheticLambda6;->f$0:Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->onUserInput()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setOkButtonEnabled(Z)V

    return-void
.end method
