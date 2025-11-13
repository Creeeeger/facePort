.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;


# instance fields
.field public mDismissBtn:Landroid/widget/TextView;

.field public mSettingsBtn:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mDeviceModel:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getSubscreenNotificationTipResource()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip$TipViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificationTip;Landroid/view/View;)V

    return-object p2
.end method
