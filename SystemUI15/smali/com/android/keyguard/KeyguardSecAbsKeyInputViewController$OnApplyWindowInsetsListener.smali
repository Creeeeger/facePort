.class public final Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;-><init>(Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;)V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController$OnApplyWindowInsetsListener;->this$0:Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;

    iget v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mImeBottom:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mImeBottom:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mIsImeShown:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->updateLayout$1()V

    :cond_1
    return-object p2
.end method
