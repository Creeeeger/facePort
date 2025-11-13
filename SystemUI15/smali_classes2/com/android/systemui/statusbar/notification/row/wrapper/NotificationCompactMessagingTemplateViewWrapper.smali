.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactHeadsUpTemplateViewWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final compactMessagingView:Landroid/view/ViewGroup;

.field public conversationIconView:Lcom/android/internal/widget/CachingIconView;

.field public expandBtn:Landroid/view/View;

.field public facePileBottom:Landroid/view/View;

.field public facePileBottomBg:Landroid/view/View;

.field public facePileTop:Landroid/view/View;

.field public headerTextSecondary:Landroid/view/View;

.field public subText:Landroid/view/View;

.field public titleView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactHeadsUpTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    instance-of p1, p2, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->compactMessagingView:Landroid/view/ViewGroup;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->compactMessagingView:Landroid/view/ViewGroup;

    const v1, 0x1020293

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->compactMessagingView:Landroid/view/ViewGroup;

    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->titleView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->compactMessagingView:Landroid/view/ViewGroup;

    const v1, 0x1020348

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->headerTextSecondary:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->compactMessagingView:Landroid/view/ViewGroup;

    const v1, 0x1020346

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->subText:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->compactMessagingView:Landroid/view/ViewGroup;

    const v1, 0x1020291

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->facePileTop:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->compactMessagingView:Landroid/view/ViewGroup;

    const v1, 0x102028f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->facePileBottom:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->compactMessagingView:Landroid/view/ViewGroup;

    const v1, 0x1020290

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->facePileBottomBg:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->compactMessagingView:Landroid/view/ViewGroup;

    const v1, 0x10202da

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->expandBtn:Landroid/view/View;

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public final updateTransformedTypes()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->conversationIconView:Lcom/android/internal/widget/CachingIconView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->titleView:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->headerTextSecondary:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->subText:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->facePileTop:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->facePileBottom:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->facePileBottomBg:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationCompactMessagingTemplateViewWrapper;->expandBtn:Landroid/view/View;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->addViewsTransformingToSimilar([Landroid/view/View;)V

    return-void
.end method
