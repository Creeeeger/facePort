.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    sget v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->$r8$clinit:I

    const-string v0, "com.samsung.android.action.INTELLIGENCE_SERVICE_PROCESSING_ONLINE_INTENT"

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->openPhonePopupForIntelligenceSettings(Ljava/lang/String;)V

    return-void
.end method
