.class public final synthetic Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayNotificationCountProvider;->mNotificationKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
