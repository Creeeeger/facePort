.class public final Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mClearAllLayout:Landroid/widget/FrameLayout;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0c4b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->mClearAllLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f0a0c4a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->semSetButtonShapeEnabled(Z)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowButtonBackground()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0xff

    :goto_0
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iput-object p0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    iget-object p2, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f13038b

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f13005f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)V

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$2;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)V

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
