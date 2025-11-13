.class public final synthetic Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method
