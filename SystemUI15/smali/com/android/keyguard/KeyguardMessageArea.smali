.class public abstract Lcom/android/keyguard/KeyguardMessageArea;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mClearMessageRunnable:Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda1;

.field public mContainer:Landroid/view/ViewGroup;

.field public mHandler:Landroid/os/Handler;

.field public mIsVisible:Z

.field public mMessage:Ljava/lang/CharSequence;

.field public final mStyleResId:I

.field public mTimeout:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    new-instance p1, Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda1;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mStyleResId:I

    goto :goto_0

    :cond_0
    const p1, 0x7f14022e

    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mStyleResId:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->onThemeChanged()V

    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a05a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update$6()V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;Z)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update$6()V

    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object p2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {p2, p1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFingerprintAuthenticated()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-wide p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda1;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update$6()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final update$6()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardMessageArea;Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
