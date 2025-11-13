.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterBackButton$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterBackButton$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon$initDetailAdapterBackButton$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelCommon;

    const/16 p1, 0x12c

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->hideDetailNotificationAnimated(IZ)V

    return-void
.end method
