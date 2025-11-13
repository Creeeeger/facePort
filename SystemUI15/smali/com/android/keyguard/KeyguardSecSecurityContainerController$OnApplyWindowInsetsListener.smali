.class public final Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v0, p1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->isPassword(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    :goto_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget v4, v3, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    if-eq v4, v2, :cond_6

    iput v2, v3, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    if-eqz v2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    iput-boolean v4, v3, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins()V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-virtual {v3}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget v4, v4, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    sget v5, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v3

    if-eq v3, v0, :cond_3

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    sget-object v3, Lcom/android/keyguard/SecurityUtils;->sImeHeight:[I

    aget v5, v3, v0

    if-eqz v5, :cond_4

    if-eq v5, v4, :cond_5

    :cond_4
    aput v4, v3, v0

    :cond_5
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    invoke-interface {v3, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateSIPShownState(Z)V

    :cond_6
    invoke-static {p1, v2}, Ljava/lang/Integer;->max(II)I

    move-result p1

    goto :goto_4

    :cond_7
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_9

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    iget v3, v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    if-eq v3, p1, :cond_9

    iput p1, v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    move v0, v1

    :goto_3
    iput-boolean v0, v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    iget-object p1, v2, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updateSIPShownState(Z)V

    :cond_9
    move p1, v1

    :goto_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$1000(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$700(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$800(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecSecurityContainerController;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->access$900(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v2, v3, p0, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p2, v1, v1, v1, p1}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
