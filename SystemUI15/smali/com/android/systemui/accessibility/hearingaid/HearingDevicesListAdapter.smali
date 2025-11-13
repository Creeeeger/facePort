.class public final Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$HearingDeviceItemCallback;

.field public final mItemList:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$HearingDeviceItemCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;",
            ">;",
            "Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$HearingDeviceItemCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter;->mItemList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter;->mCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$HearingDeviceItemCallback;

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;

    check-cast p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;

    iget-object v0, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mContainer:Landroid/view/View;

    iget-boolean v1, p2, Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;->isEnabled:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mContainer:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder$$ExternalSyntheticLambda0;

    iget-object p0, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter;->mCallback:Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$HearingDeviceItemCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$HearingDeviceItemCallback;Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p2, Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;->background:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mContainer:Landroid/view/View;

    iget-object v2, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;->connectionSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;->iconWithDescription:Lkotlin/Pair;

    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p1, p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mGearView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$HearingDeviceItemCallback;Lcom/android/systemui/bluetooth/qsdialog/DeviceItem;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    const p0, 0x7f0d0064

    const/4 p1, 0x0

    invoke-static {p2, p0, p2, p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog$VolumeGroupAdapter$$ExternalSyntheticOutline0;->m(Landroid/view/ViewGroup;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    new-instance p1, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-object p1
.end method
