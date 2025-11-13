.class public final Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/uwb/labs/common/UwbStateChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;

    return-void
.end method


# virtual methods
.method public final onUpdatedState(II)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onUpdatedState, state: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment$1;->this$0:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ""

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    const-string v5, "STATE_ENABLED_HW_IDLE"

    goto :goto_0

    :cond_1
    const-string v5, "STATE_ENABLED_ACTIVE"

    goto :goto_0

    :cond_2
    const-string v5, "STATE_ENABLED_INACTIVE"

    goto :goto_0

    :cond_3
    const-string v5, "STATE_DISABLED"

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", reason: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_9

    if-eq p2, v4, :cond_8

    if-eq p2, v3, :cond_7

    if-eq p2, v2, :cond_6

    const/4 v2, 0x4

    if-eq p2, v2, :cond_5

    const/4 v2, 0x5

    if-eq p2, v2, :cond_4

    goto :goto_1

    :cond_4
    const-string v1, "STATE_CHANGED_REASON_SYSTEM_REGULATION"

    goto :goto_1

    :cond_5
    const-string v1, "STATE_CHANGED_REASON_ERROR_UNKNOWN"

    goto :goto_1

    :cond_6
    const-string v1, "STATE_CHANGED_REASON_SYSTEM_BOOT"

    goto :goto_1

    :cond_7
    const-string v1, "STATE_CHANGED_REASON_SYSTEM_POLICY"

    goto :goto_1

    :cond_8
    const-string v1, "STATE_CHANGED_REASON_ALL_SESSIONS_CLOSED"

    goto :goto_1

    :cond_9
    const-string v1, "STATE_CHANGED_REASON_SESSION_STARTED"

    :goto_1
    const-string p2, "UwbSimpleTestFragment"

    invoke-static {v0, v1, p2}, Lcom/android/settings/Utils$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;->mRangingPreference:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isUwbEnabled:Z

    iget-object p2, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mContext:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    new-instance v0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$3;-><init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;Z)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestFragment;->mRangingPreference:Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;

    iput-boolean v4, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->isUwbEnabled:Z

    iget-object p1, p0, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance p2, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$3;

    invoke-direct {p2, p0, v4}, Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference$3;-><init>(Lcom/samsung/android/settings/uwb/labs/view/uwbtest/UwbSimpleTestPreference;Z)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_2
    return-void
.end method
