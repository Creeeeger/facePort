.class public final Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardInputViewController;->dismissTips(Z)V

    return-void
.end method

.method public final onOrientationChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$1;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mCurrentOrientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mCurrentOrientation:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout$1()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->initializeBottomContainerView()V

    :cond_0
    return-void
.end method
