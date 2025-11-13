.class public final synthetic Lcom/android/systemui/animation/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/animation/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean p0, p0, Lcom/android/systemui/animation/RemoteAnimationTargetCompat$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/android/wm/shell/shared/TransitionUtil;->isWallpaper(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/wm/shell/shared/TransitionUtil;->isNonApp(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    :goto_0
    return p0
.end method
