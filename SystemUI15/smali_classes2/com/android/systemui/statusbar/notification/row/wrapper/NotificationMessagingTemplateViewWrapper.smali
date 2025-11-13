.class public final Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;
.super Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mImageMessageContainer:Landroid/view/ViewGroup;

.field public final mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

.field public mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

.field public final mMinHeightWithActions:I

.field public final mTitle:Landroid/view/View;

.field public final mTitleInHeader:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x1020016

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mTitle:Landroid/view/View;

    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    const v0, 0x1020348

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mTitleInHeader:Landroid/view/View;

    check-cast p2, Lcom/android/internal/widget/MessagingLayout;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    const p2, 0x7f070b89

    invoke-static {p2, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getFontScaledHeight(ILandroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mMinHeightWithActions:I

    return-void
.end method


# virtual methods
.method public final getMinLayoutHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->mActionsContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mMinHeightWithActions:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isEllipsis()I
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public final onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLayout;->getImageMessageContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mImageMessageContainer:Landroid/view/ViewGroup;

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public final setAnimationsRunning(Z)V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingGroups()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingGroup;->getMessageContainer()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/internal/widget/MessagingImageMessage;

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    check-cast v2, Lcom/android/internal/widget/MessagingImageMessage;

    invoke-virtual {v2}, Lcom/android/internal/widget/MessagingImageMessage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    check-cast v2, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->start()V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Landroid/graphics/drawable/AnimatedImageDrawable;->stop()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final setRemoteInputVisible(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLayout;->showHistoricMessages(Z)V

    return-void
.end method

.method public final updateSummarize(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLayout;->getMessagingLinearLayout()Lcom/android/internal/widget/MessagingLinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/MessagingLayout;->getImageMessageContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mImageMessageContainer:Landroid/view/ViewGroup;

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-void
.end method

.method public final updateTransformedTypes()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->updateTransformedTypes()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mMessagingLinearLayout:Lcom/android/internal/widget/MessagingLinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationHeaderViewWrapper;->mTransformationHelper:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mTitle:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mTitleInHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->addTransformedView(Landroid/view/View;I)V

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper;->mImageMessageContainer:Landroid/view/ViewGroup;

    if-eqz p0, :cond_2

    new-instance v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMessagingTemplateViewWrapper$1;-><init>()V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result p0

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setCustomTransformation(Lcom/android/systemui/statusbar/ViewTransformationHelper$CustomTransformation;I)V

    :cond_2
    return-void
.end method
