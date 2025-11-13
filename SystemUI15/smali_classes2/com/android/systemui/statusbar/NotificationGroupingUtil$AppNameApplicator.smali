.class public final Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;
.super Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$AppNameApplicator;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 1

    if-eqz p4, :cond_0

    instance-of v0, p1, Lcom/android/internal/widget/ConversationLayout;

    if-eqz v0, :cond_0

    move-object p3, p1

    check-cast p3, Lcom/android/internal/widget/ConversationLayout;

    invoke-virtual {p3}, Lcom/android/internal/widget/ConversationLayout;->shouldHideAppName()Z

    move-result p3

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationGroupingUtil$VisibilityApplicator;->apply(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void
.end method
