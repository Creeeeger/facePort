.class public final Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1$onBackInvokedCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1$onBackInvokedCallback$1;->this$0:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1$onBackInvokedCallback$1;->this$0:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder$onAttachAddBackGestureHandler$1;->this$0:Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/AlternateBouncerViewBinder;->alternateBouncerDependencies:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerDependencies;->viewModel:Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/AlternateBouncerViewModel;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->hideAlternateBouncer(Z)V

    return-void
.end method
