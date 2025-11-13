.class public final Lcom/android/keyguard/KeyguardArrowViewController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardArrowViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardArrowViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardArrowViewController$2;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardArrowViewController$2;->this$0:Lcom/android/keyguard/KeyguardArrowViewController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->initMainDisplaySize(Landroid/content/Context;)V

    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLastOrientation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLastOrientation:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowMargin()V

    if-nez v3, :cond_2

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardArrowViewController;->updateSecurityViewPosition(ZZ)V

    :cond_2
    return-void
.end method
