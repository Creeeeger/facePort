.class public final Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$1;->this$0:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "enable_nas_feedback"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController$1;->this$0:Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/AssistantFeedbackController;->mFeedbackEnabled:Z

    :cond_0
    return-void
.end method
