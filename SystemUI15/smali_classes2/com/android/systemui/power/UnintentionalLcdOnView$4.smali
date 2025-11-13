.class public final Lcom/android/systemui/power/UnintentionalLcdOnView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/UnintentionalLcdOnView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$4;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView$4;->this$0:Lcom/android/systemui/power/UnintentionalLcdOnView;

    iget-object p0, p0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mCircleImage:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
