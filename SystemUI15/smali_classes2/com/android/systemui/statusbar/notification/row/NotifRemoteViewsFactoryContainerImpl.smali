.class public final Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewsFactoryContainerImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewsFactoryContainer;


# instance fields
.field public final factories:Lkotlin/collections/builders/SetBuilder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/notification/row/PrecomputedTextViewFactory;Lcom/android/systemui/statusbar/notification/row/BigPictureLayoutInflaterFactory;Lcom/android/systemui/statusbar/notification/row/NotificationOptimizedLinearLayoutFactory;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/statusbar/notification/row/PrecomputedTextViewFactory;",
            "Lcom/android/systemui/statusbar/notification/row/BigPictureLayoutInflaterFactory;",
            "Lcom/android/systemui/statusbar/notification/row/NotificationOptimizedLinearLayoutFactory;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lkotlin/collections/builders/SetBuilder;

    invoke-direct {p1}, Lkotlin/collections/builders/SetBuilder;-><init>()V

    invoke-virtual {p1, p2}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    sget-object p2, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    invoke-static {}, Landroid/widget/flags/Flags;->notifLinearlayoutOptimized()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object p2, Lcom/android/systemui/Flags;->FEATURE_FLAGS:Lcom/android/systemui/FeatureFlagsImpl;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlin/collections/builders/SetBuilder;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lkotlin/collections/builders/SetBuilder;->build()Lkotlin/collections/builders/SetBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewsFactoryContainerImpl;->factories:Lkotlin/collections/builders/SetBuilder;

    return-void
.end method
