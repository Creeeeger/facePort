.class public final Lcom/android/systemui/qs/SecQSGradationDrawableController$onViewAttached$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/SecQSGradationDrawableController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/SecQSGradationDrawableController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController$onViewAttached$1;->this$0:Lcom/android/systemui/qs/SecQSGradationDrawableController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController$onViewAttached$1;->this$0:Lcom/android/systemui/qs/SecQSGradationDrawableController;

    iget-object p0, p0, Lcom/android/systemui/qs/SecQSGradationDrawableController;->view:Lcom/android/systemui/qs/SecQSGradationDrawableView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070dc0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
