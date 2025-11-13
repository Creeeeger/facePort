.class public final synthetic Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;

    sget-object v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->SCALE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWaitForReset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->mWaitForReset:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;->reset(Z)V

    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/KeyguardSecAffordanceView$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/statusbar/KeyguardSecAffordanceView;I)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
