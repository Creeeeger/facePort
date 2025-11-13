.class public final Lcom/android/systemui/settings/multisim/MultiSIMController$13;
.super Landroid/os/Handler;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/settings/multisim/MultiSIMController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$13;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMController$13;->this$0:Lcom/android/systemui/settings/multisim/MultiSIMController;

    const-string v2, "MultiSIMController"

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    const-string p0, "UIHandler MESSAGE_EMPTY"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "MESSAGE_UPDATE_SET_NETMODE_DELAY_STATE"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    goto :goto_0

    :cond_1
    const-string p1, "MESSAGE_UPDATE_MULTISIM_PREFERRED_DATA_BUTTON"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMController;->mData:Lcom/android/systemui/settings/multisim/MultiSIMData;

    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    invoke-virtual {p0}, Lcom/android/systemui/settings/multisim/MultiSIMController;->notifyDataToCallback()V

    :cond_2
    :goto_0
    return-void
.end method
