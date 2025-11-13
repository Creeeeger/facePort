.class public final Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mBehindScrimSupplier:Ljava/util/function/Supplier;

.field public final mDispatchBackScrimStateConsumer:Ljava/util/function/Consumer;

.field public final mFrontScrimSupplier:Ljava/util/function/Supplier;

.field public final mKeyguardOccludedSupplier:Ljava/util/function/Supplier;

.field public final mNotificationsScrimSupplier:Ljava/util/function/Supplier;

.field public final mUpdateScrimsRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/scrim/ScrimView;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/scrim/ScrimView;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/scrim/ScrimView;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mNotificationsScrimSupplier:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mBehindScrimSupplier:Ljava/util/function/Supplier;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mFrontScrimSupplier:Ljava/util/function/Supplier;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mKeyguardOccludedSupplier:Ljava/util/function/Supplier;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mUpdateScrimsRunnable:Ljava/lang/Runnable;

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/SecLsScrimControlProvider;->mDispatchBackScrimStateConsumer:Ljava/util/function/Consumer;

    return-void
.end method
