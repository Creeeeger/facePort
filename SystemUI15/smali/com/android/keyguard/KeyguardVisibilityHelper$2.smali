.class public final Lcom/android/keyguard/KeyguardVisibilityHelper$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardVisibilityHelper;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardVisibilityHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$2;->this$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/util/Property;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$2;->this$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/keyguard/KeyguardVisibilityHelper;->mKeyguardViewVisibilityAnimating:Z

    iget-object p1, p1, Lcom/android/keyguard/KeyguardVisibilityHelper;->mView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardVisibilityHelper$2;->this$0:Lcom/android/keyguard/KeyguardVisibilityHelper;

    const-string p1, "CallbackSet Visibility to GONE"

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardVisibilityHelper;->log(Ljava/lang/String;)V

    return-void
.end method
