.class public final synthetic Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Runnable;

    check-cast p1, Landroid/util/Property;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    iget-object p1, v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->this$0:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconAnimationEndRunnable:Ljava/lang/Runnable;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->mIsolatedIconAnimationEndRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method
