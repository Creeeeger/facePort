.class public final synthetic Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentItemView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentItemView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentItemView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentItemView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentItemView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentItemView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentItemView;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/MiniSViewCoverContentItemView;->mViewModel:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->onPress()V

    return-void
.end method
