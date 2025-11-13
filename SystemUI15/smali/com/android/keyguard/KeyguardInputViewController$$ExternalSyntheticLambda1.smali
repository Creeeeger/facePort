.class public final synthetic Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardInputViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardInputViewController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardInputViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->shouldTipsPopup()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardInputViewController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardInputViewController$2;-><init>(Lcom/android/keyguard/KeyguardInputViewController;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardInputViewController;->mForgotPasswordText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
