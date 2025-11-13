.class public final Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final onBackInvokedCallback:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1$onBackInvokedCallback$1;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;->this$0:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1$onBackInvokedCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1$onBackInvokedCallback$1;-><init>(Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;)V

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;->onBackInvokedCallback:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1$onBackInvokedCallback$1;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;->onBackInvokedCallback:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1$onBackInvokedCallback$1;

    const v0, 0xf4240

    invoke-interface {p1, v0, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;->onBackInvokedCallback:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1$onBackInvokedCallback$1;

    invoke-interface {p1, p0}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    return-void
.end method
