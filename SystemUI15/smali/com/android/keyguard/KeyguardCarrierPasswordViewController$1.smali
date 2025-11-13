.class public final Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$1;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    iget v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->updateLayout$1()V

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mCurrentOrientation:I

    :cond_0
    return-void
.end method
