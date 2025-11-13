.class public final synthetic Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

.field public final synthetic f$2:Landroid/content/Context;

.field public final synthetic f$3:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda2;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda2;->f$1:Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda2;->f$2:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder$$ExternalSyntheticLambda2;->f$3:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mCustomExpandedCardView:Landroid/widget/RemoteViews;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    sget-object v6, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;->INSTANCE:Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isPromotedState()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    move v0, v5

    goto :goto_1

    :cond_1
    move v0, v4

    :goto_1
    iget v5, v1, Lcom/android/systemui/statusbar/phone/ongoingactivity/OngoingActivityData;->mChipBackground:I

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    move v3, v7

    move v4, v8

    move-object v6, p0

    move v7, v1

    move v8, v0

    invoke-static/range {v2 .. v8}, Lcom/android/systemui/statusbar/phone/ongoingactivity/CardStackview/CardStackViewUtils;->addGradientBackground(Landroid/content/Context;IIILandroid/graphics/drawable/Drawable;ZZ)V

    return-void
.end method
