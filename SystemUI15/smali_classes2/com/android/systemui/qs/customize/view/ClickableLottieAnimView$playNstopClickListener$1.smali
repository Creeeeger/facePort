.class public final Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$playNstopClickListener$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$playNstopClickListener$1;->this$0:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$playNstopClickListener$1;->this$0:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    sget v0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isRemoveAnimation()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$playNstopClickListener$1;->this$0:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$playNstopClickListener$1;->this$0:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$playNstopClickListener$1;->this$0:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->resumeAnimation()V

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$playNstopClickListener$1;->this$0:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const v0, 0x7f130e46

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    const v0, 0x7f130e47

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView$playNstopClickListener$1;->this$0:Lcom/android/systemui/qs/customize/view/ClickableLottieAnimView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method
