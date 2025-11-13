.class public final synthetic Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    return-void
.end method


# virtual methods
.method public final onWindowFocusChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/keyguard/KeyguardFoldController;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardFoldController;

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isBouncerOnFoldOpened()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecPasswordViewController;->showKeyboard(I)V

    :cond_0
    return-void
.end method
