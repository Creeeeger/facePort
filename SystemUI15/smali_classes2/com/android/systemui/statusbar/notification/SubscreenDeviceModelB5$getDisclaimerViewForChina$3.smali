.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$3;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$getDisclaimerViewForChina$3;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->mDialog:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDialog;->dismiss()V

    :cond_0
    return-void
.end method
