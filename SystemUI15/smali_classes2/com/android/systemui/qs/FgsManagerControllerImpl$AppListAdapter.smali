.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public data:Ljava/util/List;

.field public final lock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->lock:Ljava/lang/Object;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->data:Ljava/util/List;

    return-void
.end method

.method public static updateContentDescription(Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->appLabelView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->data:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    check-cast p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;

    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->data:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object v2, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->iconView:Landroid/widget/ImageView;

    check-cast p2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    iget-object p2, p2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->appLabelView:Landroid/widget/TextView;

    iget-object v2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    iget-object v2, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->appLabel:Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->durationView:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/android/systemui/qs/FgsManagerControllerImpl;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v2}, Lcom/android/systemui/util/time/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    iget-wide v4, v4, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->timeStarted:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/text/format/DateUtils;->formatDuration(JI)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$onBindViewHolder$2$1;

    invoke-direct {v2, p1, p0, v1, v0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$onBindViewHolder$2$1;-><init>(Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;Lcom/android/systemui/qs/FgsManagerControllerImpl;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->uiControl:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    sget-object p2, Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;->HIDE_BUTTON:Lcom/android/systemui/qs/FgsManagerControllerImpl$UIControl;

    const/4 v1, 0x4

    if-ne p0, p2, :cond_0

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;

    iget-boolean p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$RunningApp;->stopped:Z

    const/4 p2, 0x0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    const p2, 0x7f13109d

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setText(I)V

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->durationView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->stopButton:Landroid/widget/Button;

    const v0, 0x7f13109c

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p0, p1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;->durationView:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-static {p1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->updateContentDescription(Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    new-instance p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;

    const p1, 0x7f0d0376

    const/4 v0, 0x0

    invoke-static {p2, p1, p2, v0}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppItemViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method
