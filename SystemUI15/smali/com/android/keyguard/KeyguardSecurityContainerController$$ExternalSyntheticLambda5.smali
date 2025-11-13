.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/CharSequence;

.field public final synthetic f$1:Landroid/content/res/ColorStateList;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;->f$1:Landroid/content/res/ColorStateList;

    iput-boolean p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;->f$0:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;->f$1:Landroid/content/res/ColorStateList;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;->f$2:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/keyguard/KeyguardInputViewController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    return-void
.end method
