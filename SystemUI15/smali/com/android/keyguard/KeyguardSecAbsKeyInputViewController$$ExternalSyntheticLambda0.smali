.class public final synthetic Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecondsRemaining:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout$1()V

    return-void
.end method
