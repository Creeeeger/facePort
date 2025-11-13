.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic $runnable:Ljava/lang/Runnable;

.field public final synthetic $show:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(ZLjava/lang/Runnable;Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$2;->$show:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$2;->$runnable:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$2;->$show:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$2;->$runnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$startProgressSpringAnimation$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationX:Landroidx/dynamicanimation/animation/SpringAnimation;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mProgressScaleAnimationY:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method
