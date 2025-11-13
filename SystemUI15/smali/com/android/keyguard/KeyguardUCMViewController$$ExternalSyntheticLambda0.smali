.class public final synthetic Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardUCMViewController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMViewController;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardUCMViewController;

    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;->f$1:I

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p2, p1, v1}, Lcom/android/keyguard/KeyguardUCMViewController;->onPasswordChecked(IIZZ)V

    return-void
.end method
