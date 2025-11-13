.class public Lcom/android/settings/wifi/tether/TetherService;
.super Landroid/app/Service;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final EXTRA_RESULT:Ljava/lang/String; = "EntitlementResult"

.field public static final EXTRA_TETHER_PROVISIONING_RESPONSE:Ljava/lang/String; = "android.net.extra.TETHER_PROVISIONING_RESPONSE"

.field public static final EXTRA_TETHER_SILENT_PROVISIONING_ACTION:Ljava/lang/String; = "android.net.extra.TETHER_SILENT_PROVISIONING_ACTION"

.field public static final EXTRA_TETHER_SUBID:Ljava/lang/String; = "android.net.extra.TETHER_SUBID"


# instance fields
.field public mCurrentTethers:Ljava/util/ArrayList;

.field public mCurrentTypeIndex:I

.field public mExpectedProvisionResponseAction:Ljava/lang/String;

.field public mInProvisionCheck:Z

.field public mPendingCallbacks:Landroid/util/ArrayMap;

.field public mProvisionAction:Ljava/lang/String;

.field public final mReceiver:Lcom/android/settings/wifi/tether/TetherService$1;

.field public mSubId:I

.field public mWrapper:Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TetherService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mExpectedProvisionResponseAction:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mSubId:I

    new-instance v0, Lcom/android/settings/wifi/tether/TetherService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/TetherService$1;-><init>(Lcom/android/settings/wifi/tether/TetherService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mReceiver:Lcom/android/settings/wifi/tether/TetherService$1;

    return-void
.end method


# virtual methods
.method public final getProvisionBroadcastIntent(I)Landroid/content/Intent;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mProvisionAction:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "TetherService"

    const-string v1, "null provisioning action"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService;->mProvisionAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "TETHER_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    iget p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mSubId:I

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x11000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "TetherService"

    const-string v1, "Creating TetherService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "tetherPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "currentTethers"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move v3, v1

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput-object v2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onDestroy()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    const-string v1, "TetherService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "TetherService getting destroyed while mid-provisioning"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "tetherPrefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/app/Service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_0
    if-ge v2, v5, :cond_2

    if-eqz v2, :cond_1

    const/16 v6, 0x2c

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "currentTethers"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mExpectedProvisionResponseAction:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mReceiver:Lcom/android/settings/wifi/tether/TetherService$1;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mExpectedProvisionResponseAction:Ljava/lang/String;

    :cond_3
    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "Destroying TetherService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 11

    const-string p2, "android.net.extra.TETHER_SUBID"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    const-string v3, "TetherService"

    if-eqz v0, :cond_3

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mWrapper:Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mWrapper:Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mWrapper:Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result v0

    if-eq p2, v0, :cond_2

    const-string p1, "This Provisioning request is outdated, current subId: "

    invoke-static {v0, p1, v3}, Landroidx/window/area/WindowAreaControllerImpl$RearDisplayPresentationSessionConsumer$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    :cond_1
    return v2

    :cond_2
    iput v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mSubId:I

    :cond_3
    const-string p2, "extraAddTetherType"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "extraProvisionCallback"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/ResultReceiver;

    if-eqz v0, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/tether/TetherService;->mPendingCallbacks:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_4

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Invalid tethering type "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", stopping"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-virtual {v0, v4, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v2

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "Adding tether "

    invoke-static {p2, v0, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string p2, "android.net.extra.TETHER_SILENT_PROVISIONING_ACTION"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/tether/TetherService;->mProvisionAction:Ljava/lang/String;

    if-nez p2, :cond_8

    const-string p1, "null provisioning action, stop "

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v2

    :cond_8
    const-string p2, "android.net.extra.TETHER_PROVISIONING_RESPONSE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_9

    const-string p1, "null provisioning response, stop "

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v2

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mExpectedProvisionResponseAction:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mExpectedProvisionResponseAction:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mReceiver:Lcom/android/settings/wifi/tether/TetherService$1;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_b
    iget-object v6, p0, Lcom/android/settings/wifi/tether/TetherService;->mReceiver:Lcom/android/settings/wifi/tether/TetherService$1;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v8, "android.permission.TETHER_PRIVILEGED"

    const/4 v9, 0x0

    const/4 v10, 0x2

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/TetherService;->mExpectedProvisionResponseAction:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v0, :cond_c

    const-string v0, "registerReceiver "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_1
    const-string p2, "extraRemTetherType"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    if-nez v0, :cond_f

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sget-boolean v1, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v1, :cond_d

    const-string v5, "Removing tether "

    const-string v6, ", index "

    invoke-static {v5, v6, p2, v0, v3}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    :cond_d
    if-ltz v0, :cond_10

    iget-object p2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz v1, :cond_e

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "mCurrentTypeIndex: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    invoke-static {p2, v1, v3}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_e
    iget p2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    if-gt v0, p2, :cond_10

    if-lez p2, :cond_10

    sub-int/2addr p2, v4

    iput p2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    goto :goto_2

    :cond_f
    sget-boolean p2, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz p2, :cond_10

    const-string p2, "Don\'t remove tether type during provisioning"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_2
    const-string p2, "extraRunProvision"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_11

    iget p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTypeIndex:I

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->startProvisioning(I)V

    goto :goto_3

    :cond_11
    iget-boolean p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    if-nez p1, :cond_13

    sget-boolean p1, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz p1, :cond_12

    const-string p1, "Stopping self.  startid: "

    invoke-static {p3, p1, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    :cond_12
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return v2

    :cond_13
    :goto_3
    const/4 p0, 0x3

    return p0
.end method

.method public setTetherServiceWrapper(Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mWrapper:Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    return-void
.end method

.method public final startProvisioning(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->getProvisionBroadcastIntent(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/tether/TetherService;->getProvisionBroadcastIntent(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const-string v3, "TetherService"

    if-eqz v2, :cond_1

    const-string v1, "No found BroadcastReceivers for provision intent."

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/tether/TetherService;->mWrapper:Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/wifi/tether/TetherService;->mWrapper:Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/tether/TetherService;->mWrapper:Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;

    iget-object v4, v4, Lcom/android/settings/wifi/tether/TetherService$TetherServiceWrapper;->mUsageStatsManager:Landroid/app/usage/UsageStatsManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/app/usage/UsageStatsManager;->setAppInactive(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    :goto_1
    sget-boolean v1, Lcom/android/settings/wifi/tether/TetherService;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending provisioning broadcast: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/TetherService;->mCurrentTethers:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0, v0}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/TetherService;->mInProvisionCheck:Z

    return-void
.end method
