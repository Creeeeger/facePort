.class public Lcom/android/keyguard/KeyguardSecPatternView;
.super Lcom/android/keyguard/KeyguardPatternView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAttached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView;->onAttachedToWindow()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DEAD_ZONE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mAttached:Z

    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_DEAD_ZONE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mAttached:Z

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardPatternView;->onFinishInflate()V

    const v0, 0x7f0a0bf1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_DEAD_ZONE:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecPatternView;->mAttached:Z

    if-eqz p1, :cond_1

    const-string p1, "onVisibilityChanged() visibility : "

    const-string v0, "KeyguardSecPatternView"

    invoke-static {p2, p1, v0}, Lcom/android/keyguard/KeyguardSecPatternView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p1, "deadzone_v2"

    const-string p2, "3.33%,3.33%,0%"

    invoke-static {p1, p2}, Landroidx/picker/adapter/AbsAdapter$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/tsp/SemTspStateManager;->setDeadZone(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/tsp/SemTspStateManager;->clearDeadZone(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
