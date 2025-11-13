.class public final Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;
.super Landroid/widget/LinearLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

.field public appIcon:Landroid/graphics/drawable/Drawable;

.field public appName:Ljava/lang/String;

.field public channelListView:Landroid/widget/LinearLayout;

.field public final channelRows:Ljava/util/List;

.field public channels:Ljava/util/List;

.field public controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channels:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a00f1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/AppControlView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    const v0, 0x7f0a0a5f

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelListView:Landroid/widget/LinearLayout;

    return-void
.end method

.method public final updateRows()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->appNotificationsEnabled:Z

    new-instance v2, Landroid/transition/AutoTransition;

    invoke-direct {v2}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    new-instance v3, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateRows$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateRows$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;)V

    invoke-virtual {v2, v3}, Landroid/transition/AutoTransition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/TransitionSet;

    invoke-static {p0, v2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelListView:Landroid/widget/LinearLayout;

    if-nez v4, :cond_1

    move-object v4, v1

    :cond_1
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    if-nez v2, :cond_3

    move-object v2, v1

    :cond_3
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/AppControlView;->iconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    if-nez v2, :cond_5

    move-object v2, v1

    :cond_5
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/AppControlView;->channelName:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v1

    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appName:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v5, 0x7f130d1d

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    if-nez v2, :cond_7

    move-object v2, v1

    :cond_7
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/AppControlView;->switch:Landroid/widget/Switch;

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    move-object v2, v1

    :goto_4
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->appControlRow:Lcom/android/systemui/statusbar/notification/row/AppControlView;

    if-nez v2, :cond_9

    move-object v2, v1

    :cond_9
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/row/AppControlView;->switch:Landroid/widget/Switch;

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    move-object v2, v1

    :goto_5
    new-instance v3, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView$updateAppControlRow$1;-><init>(Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v4, 0x7f0d025c

    invoke-virtual {v0, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ChannelRow;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    move-object v5, v1

    :goto_7
    iput-object v5, v4, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    iput-object v3, v4, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channel:Landroid/app/NotificationChannel;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    :cond_c
    iget-object v3, v4, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channel:Landroid/app/NotificationChannel;

    if-nez v3, :cond_d

    goto/16 :goto_c

    :cond_d
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelName:Landroid/widget/TextView;

    if-nez v5, :cond_e

    move-object v5, v1

    :cond_e
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, ""

    if-nez v6, :cond_f

    move-object v6, v7

    :cond_f
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    if-nez v6, :cond_10

    move-object v6, v1

    :cond_10
    iget-object v8, v4, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->controller:Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;

    if-eqz v8, :cond_11

    goto :goto_8

    :cond_11
    move-object v8, v1

    :goto_8
    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/row/ChannelEditorDialogController;->groupNameLookup:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    if-nez v5, :cond_12

    goto :goto_9

    :cond_12
    move-object v7, v5

    :goto_9
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_13
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getGroup()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_17

    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    if-nez v5, :cond_14

    move-object v5, v1

    :cond_14
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_a

    :cond_15
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    if-nez v5, :cond_16

    move-object v5, v1

    :cond_16
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_b

    :cond_17
    :goto_a
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->channelDescription:Landroid/widget/TextView;

    if-nez v5, :cond_18

    move-object v5, v1

    :cond_18
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b
    iget-object v5, v4, Lcom/android/systemui/statusbar/notification/row/ChannelRow;->switch:Landroid/widget/Switch;

    if-nez v5, :cond_19

    move-object v5, v1

    :cond_19
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v6, 0x1

    :cond_1a
    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_c
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelRows:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/ChannelEditorListView;->channelListView:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1b

    move-object v3, v1

    :cond_1b
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_6

    :cond_1c
    return-void
.end method
