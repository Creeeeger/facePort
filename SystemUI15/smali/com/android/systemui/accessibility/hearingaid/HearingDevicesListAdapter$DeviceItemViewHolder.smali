.class public final Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mContainer:Landroid/view/View;

.field public final mContext:Landroid/content/Context;

.field public final mGearView:Landroid/view/View;

.field public final mIconView:Landroid/widget/ImageView;

.field public final mNameView:Landroid/widget/TextView;

.field public final mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mContext:Landroid/content/Context;

    const p2, 0x7f0a0191

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mContainer:Landroid/view/View;

    const p2, 0x7f0a0190

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mNameView:Landroid/widget/TextView;

    const p2, 0x7f0a0192

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mSummaryView:Landroid/widget/TextView;

    const p2, 0x7f0a018f

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mIconView:Landroid/widget/ImageView;

    const p2, 0x7f0a0488

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/accessibility/hearingaid/HearingDevicesListAdapter$DeviceItemViewHolder;->mGearView:Landroid/view/View;

    return-void
.end method
