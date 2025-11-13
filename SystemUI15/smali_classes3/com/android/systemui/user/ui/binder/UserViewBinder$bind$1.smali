.class public final Lcom/android/systemui/user/ui/binder/UserViewBinder$bind$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $viewModel:Lcom/android/systemui/user/ui/viewmodel/UserViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/ui/viewmodel/UserViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/user/ui/binder/UserViewBinder$bind$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/user/ui/binder/UserViewBinder$bind$1;->$viewModel:Lcom/android/systemui/user/ui/viewmodel/UserViewModel;

    iget-object p0, p0, Lcom/android/systemui/user/ui/viewmodel/UserViewModel;->onClicked:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
