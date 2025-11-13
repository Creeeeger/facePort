.class public final Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    sget v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelParent;->getMSettingsHelper()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setSuggestResponsesEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isSmartReplyUnusable()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isUnusableAccount:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isUnusableAccount:Z

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->isPossibleAiReply:Z

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->suggestResponsesBtn:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$2;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;->smartReplyTriggerBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$2$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5$checkAndExecuteSuggestResponses$runnable$2$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenDeviceModelB5;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method
