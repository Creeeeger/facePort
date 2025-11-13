.class public final Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-virtual {p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->updateRelatedGUIByPowerSaving()V

    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->setScreenTimeoutAdapter(Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$1;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    sget-object p1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->setScreenTimeoutAdapter(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
