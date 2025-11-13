.class public final Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDisplayChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mCurrentRotation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mCurrentRotation:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins(I)V

    :cond_0
    return-void
.end method
