.class public final Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$AnimationViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final animationView:Lcom/airbnb/lottie/LottieAnimationView;

.field public final context:Landroid/content/Context;

.field public final descriptionText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$AnimationViewHolder;->context:Landroid/content/Context;

    const p1, 0x7f0a05f7

    invoke-virtual {p2, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "requireViewById(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$AnimationViewHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    const p1, 0x7f0a02d6

    invoke-virtual {p2, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/remoteauth/introduction/IntroductionImageCarousel$AnimationViewHolder;->descriptionText:Landroid/widget/TextView;

    return-void
.end method
