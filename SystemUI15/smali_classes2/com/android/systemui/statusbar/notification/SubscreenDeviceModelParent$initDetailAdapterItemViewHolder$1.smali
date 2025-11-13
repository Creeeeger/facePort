.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initDetailAdapterItemViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field public final synthetic $holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initDetailAdapterItemViewHolder$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initDetailAdapterItemViewHolder$1;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initDetailAdapterItemViewHolder$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    const-string v2, "Click BodyLayout Key: "

    const-string v3, ", mInfo.getPkg()"

    const-string v4, ", mInfo.getAppName() "

    invoke-static {v2, v0, v3, v1, v4}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SubscreenNotificationDetailAdapter"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initDetailAdapterItemViewHolder$1;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initDetailAdapterItemViewHolder$1;->$holder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter$ItemViewHolder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent$initDetailAdapterItemViewHolder$1;->$adapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p1, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->startWaitState(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V

    const-string p0, "QPN102"

    const-string p1, "QPNE0204"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
