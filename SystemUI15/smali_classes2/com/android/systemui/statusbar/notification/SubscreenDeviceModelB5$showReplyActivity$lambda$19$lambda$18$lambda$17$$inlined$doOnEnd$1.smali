.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyActivity$lambda$19$lambda$18$lambda$17$$inlined$doOnEnd$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic $context$inlined:Landroid/content/Context;

.field public final synthetic $intent$inlined:Landroid/content/Intent;

.field public final synthetic $options$inlined:Landroid/app/ActivityOptions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyActivity$lambda$19$lambda$18$lambda$17$$inlined$doOnEnd$1;->$context$inlined:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyActivity$lambda$19$lambda$18$lambda$17$$inlined$doOnEnd$1;->$intent$inlined:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyActivity$lambda$19$lambda$18$lambda$17$$inlined$doOnEnd$1;->$options$inlined:Landroid/app/ActivityOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyActivity$lambda$19$lambda$18$lambda$17$$inlined$doOnEnd$1;->$context$inlined:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyActivity$lambda$19$lambda$18$lambda$17$$inlined$doOnEnd$1;->$intent$inlined:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$showReplyActivity$lambda$19$lambda$18$lambda$17$$inlined$doOnEnd$1;->$options$inlined:Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
