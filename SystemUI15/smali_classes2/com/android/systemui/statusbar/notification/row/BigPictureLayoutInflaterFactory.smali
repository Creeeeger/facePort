.class public final Lcom/android/systemui/statusbar/notification/row/BigPictureLayoutInflaterFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotifRemoteViewsFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final instantiate(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;ILjava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 p0, 0x2

    const/4 v0, 0x0

    if-eq p2, p0, :cond_0

    return-object v0

    :cond_0
    const-class p0, Lcom/android/internal/widget/BigPictureNotificationImageView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/internal/widget/BigPictureNotificationImageView;

    invoke-direct {p0, p4, p5}, Lcom/android/internal/widget/BigPictureNotificationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/BigPictureNotificationImageView;->setIconManager(Lcom/android/internal/widget/NotificationIconManager;)V

    move-object v0, p0

    :cond_1
    return-object v0
.end method
