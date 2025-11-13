.class public final synthetic Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "Callback Set Visibility to VISIBLE"

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    return-void
.end method
