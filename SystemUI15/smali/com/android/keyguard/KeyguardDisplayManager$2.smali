.class public final Lcom/android/keyguard/KeyguardDisplayManager$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardDisplayManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardDisplayManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardDisplayManager$2;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardDisplayManager$2;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardDisplayManager;->mKeyguardFoldController:Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardDisplayManager$2;->this$0:Lcom/android/keyguard/KeyguardDisplayManager;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardDisplayManager;->hide()V

    :cond_0
    return-void
.end method
