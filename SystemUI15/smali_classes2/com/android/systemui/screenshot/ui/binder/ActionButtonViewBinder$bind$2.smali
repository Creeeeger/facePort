.class public final Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder$bind$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $viewModel:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder$bind$2;->$viewModel:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/binder/ActionButtonViewBinder$bind$2;->$viewModel:Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ui/viewmodel/ActionButtonViewModel;->onClicked:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
