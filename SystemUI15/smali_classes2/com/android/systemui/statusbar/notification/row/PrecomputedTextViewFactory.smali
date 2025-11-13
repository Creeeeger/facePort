.class public final Lcom/android/systemui/statusbar/notification/row/PrecomputedTextViewFactory;
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
    .locals 6

    const-class p0, Lcom/android/internal/widget/ImageFloatingTextView;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/systemui/statusbar/notification/row/PrecomputedImageFloatingTextView;

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x4

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/row/PrecomputedImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    const-class p0, Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    new-instance p0, Lcom/android/internal/widget/MessagingLayout;

    invoke-direct {p0, p4, p5}, Lcom/android/internal/widget/MessagingLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->setPrecomputedTextEnabled(Z)V

    goto :goto_0

    :cond_1
    const-class p0, Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/internal/widget/ConversationLayout;

    invoke-direct {p0, p4, p5}, Lcom/android/internal/widget/ConversationLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ConversationLayout;->setPrecomputedTextEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
