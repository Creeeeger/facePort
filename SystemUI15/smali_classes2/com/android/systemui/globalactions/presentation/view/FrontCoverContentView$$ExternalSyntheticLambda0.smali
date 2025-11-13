.class public final synthetic Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;

    iget-object p0, p0, Lcom/android/systemui/globalactions/presentation/view/FrontCoverContentView;->mPresenter:Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsPresenter;->onCancelDialog()V

    return-void
.end method
