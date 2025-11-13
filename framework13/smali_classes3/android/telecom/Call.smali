.class public final Landroid/telecom/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Listener;,
        Landroid/telecom/Call$RttCall;,
        Landroid/telecom/Call$Callback;,
        Landroid/telecom/Call$Details;,
        Landroid/telecom/Call$RejectReason;,
        Landroid/telecom/Call$CallState;
    }
.end annotation


# static fields
.field public static final whitelist AVAILABLE_PHONE_ACCOUNTS:Ljava/lang/String; = "selectPhoneAccountAccounts"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EVENT_CLEAR_DIAGNOSTIC_MESSAGE:Ljava/lang/String; = "android.telecom.event.CLEAR_DIAGNOSTIC_MESSAGE"

.field public static final whitelist EVENT_DISPLAY_DIAGNOSTIC_MESSAGE:Ljava/lang/String; = "android.telecom.event.DISPLAY_DIAGNOSTIC_MESSAGE"

.field public static final greylist-max-o EVENT_HANDOVER_COMPLETE:Ljava/lang/String; = "android.telecom.event.HANDOVER_COMPLETE"

.field public static final greylist-max-o EVENT_HANDOVER_FAILED:Ljava/lang/String; = "android.telecom.event.HANDOVER_FAILED"

.field public static final greylist-max-o EVENT_HANDOVER_SOURCE_DISCONNECTED:Ljava/lang/String; = "android.telecom.event.HANDOVER_SOURCE_DISCONNECTED"

.field public static final greylist-max-o EVENT_REQUEST_HANDOVER:Ljava/lang/String; = "android.telecom.event.REQUEST_HANDOVER"

.field public static final whitelist EXTRA_DIAGNOSTIC_MESSAGE:Ljava/lang/String; = "android.telecom.extra.DIAGNOSTIC_MESSAGE"

.field public static final whitelist EXTRA_DIAGNOSTIC_MESSAGE_ID:Ljava/lang/String; = "android.telecom.extra.DIAGNOSTIC_MESSAGE_ID"

.field public static final greylist-max-o EXTRA_HANDOVER_EXTRAS:Ljava/lang/String; = "android.telecom.extra.HANDOVER_EXTRAS"

.field public static final greylist-max-o EXTRA_HANDOVER_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telecom.extra.HANDOVER_PHONE_ACCOUNT_HANDLE"

.field public static final greylist-max-o EXTRA_HANDOVER_VIDEO_STATE:Ljava/lang/String; = "android.telecom.extra.HANDOVER_VIDEO_STATE"

.field public static final whitelist EXTRA_LAST_EMERGENCY_CALLBACK_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.LAST_EMERGENCY_CALLBACK_TIME_MILLIS"

.field public static final whitelist EXTRA_SILENT_RINGING_REQUESTED:Ljava/lang/String; = "android.telecom.extra.SILENT_RINGING_REQUESTED"

.field public static final whitelist EXTRA_SUGGESTED_PHONE_ACCOUNTS:Ljava/lang/String; = "android.telecom.extra.SUGGESTED_PHONE_ACCOUNTS"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "Telecom-Call"

.field public static final whitelist REJECT_REASON_DECLINED:I = 0x1

.field public static final whitelist REJECT_REASON_UNWANTED:I = 0x2

.field public static final whitelist STATE_ACTIVE:I = 0x4

.field public static final whitelist STATE_AUDIO_PROCESSING:I = 0xc

.field public static final whitelist STATE_CONNECTING:I = 0x9

.field public static final whitelist STATE_DIALING:I = 0x1

.field public static final whitelist STATE_DISCONNECTED:I = 0x7

.field public static final whitelist STATE_DISCONNECTING:I = 0xa

.field public static final whitelist STATE_HOLDING:I = 0x3

.field public static final whitelist STATE_NEW:I = 0x0

.field public static final whitelist STATE_PRE_DIAL_WAIT:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STATE_PULLING_CALL:I = 0xb

.field public static final whitelist STATE_RINGING:I = 0x2

.field public static final whitelist STATE_SELECT_PHONE_ACCOUNT:I = 0x8

.field public static final whitelist STATE_SIMULATED_RINGING:I = 0xd


# instance fields
.field private blacklist mActiveGenericConferenceChild:Ljava/lang/String;

.field private final greylist-max-o mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/CallbackRecord<",
            "Landroid/telecom/Call$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mCallingPackage:Ljava/lang/String;

.field private greylist-max-o mCannedTextResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mChildrenCached:Z

.field private final greylist-max-o mChildrenIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDetails:Landroid/telecom/Call$Details;

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private greylist-max-o mParentId:Ljava/lang/String;

.field private final greylist-max-o mPhone:Landroid/telecom/Phone;

.field private greylist-max-o mRemainingPostDialSequence:Ljava/lang/String;

.field private greylist-max-o mRttCall:Landroid/telecom/Call$RttCall;

.field private greylist-max-o mState:I

.field private greylist-max-o mTargetSdkVersion:I

.field private final greylist-max-o mTelecomCallId:Ljava/lang/String;

.field private final greylist-max-o mUnmodifiableChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mUnmodifiableConferenceableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mVideoCallImpl:Landroid/telecom/VideoCallImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbackRecords(Landroid/telecom/Call;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Landroid/telecom/Call;)Landroid/telecom/Phone;
    .locals 0

    iget-object p0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUnmodifiableConferenceableCalls(Landroid/telecom/Call;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smareBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/telecom/Call;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smstateToString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/telecom/Call;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;ILjava/lang/String;I)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;
    .param p4, "state"    # I
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "targetSdkVersion"    # I

    .line 2470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    .line 1700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    .line 1701
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    .line 1702
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    .line 1703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 1704
    nop

    .line 1705
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 1708
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 1709
    iput-object v0, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    .line 1711
    iput-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 2471
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    .line 2472
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 2473
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 2474
    iput p4, p0, Landroid/telecom/Call;->mState:I

    .line 2475
    iput-object p5, p0, Landroid/telecom/Call;->mCallingPackage:Ljava/lang/String;

    .line 2476
    iput p6, p0, Landroid/telecom/Call;->mTargetSdkVersion:I

    .line 2477
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "telecomCallId"    # Ljava/lang/String;
    .param p3, "inCallAdapter"    # Landroid/telecom/InCallAdapter;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "targetSdkVersion"    # I

    .line 2459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    .line 1700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    .line 1701
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    .line 1702
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    .line 1703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    .line 1704
    nop

    .line 1705
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    .line 1708
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 1709
    iput-object v0, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    .line 1711
    iput-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 2460
    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    .line 2461
    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 2462
    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 2463
    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Call;->mState:I

    .line 2464
    iput-object p4, p0, Landroid/telecom/Call;->mCallingPackage:Ljava/lang/String;

    .line 2465
    iput p5, p0, Landroid/telecom/Call;->mTargetSdkVersion:I

    .line 2466
    return-void
.end method

.method private static greylist-max-o areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "newBundle"    # Landroid/os/Bundle;

    .line 2927
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto :goto_1

    .line 2931
    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 2932
    return v1

    .line 2935
    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2936
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 2937
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 2938
    .local v4, "value":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2939
    .local v5, "newValue":Ljava/lang/Object;
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2940
    return v1

    .line 2942
    :cond_2
    instance-of v6, v4, Landroid/os/Bundle;

    if-eqz v6, :cond_3

    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 2943
    move-object v6, v4

    check-cast v6, Landroid/os/Bundle;

    move-object v7, v5

    check-cast v7, Landroid/os/Bundle;

    invoke-static {v6, v7}, Landroid/telecom/Call;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2944
    return v1

    .line 2947
    :cond_3
    instance-of v6, v4, [B

    if-eqz v6, :cond_4

    instance-of v6, v5, [B

    if-eqz v6, :cond_4

    .line 2948
    move-object v6, v4

    check-cast v6, [B

    move-object v7, v5

    check-cast v7, [B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2949
    return v1

    .line 2951
    :cond_4
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 2952
    return v1

    .line 2955
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "newValue":Ljava/lang/Object;
    :cond_5
    goto :goto_0

    .line 2956
    :cond_6
    return v0

    .line 2928
    :cond_7
    :goto_1
    if-ne p0, p1, :cond_8

    goto :goto_2

    :cond_8
    move v0, v1

    :goto_2
    return v0
.end method

.method private greylist-max-o fireCallDestroyed()V
    .locals 6

    .line 2825
    move-object v0, p0

    .line 2826
    .local v0, "call":Landroid/telecom/Call;
    iget-object v1, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2828
    iget-object v1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v1, v0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

    .line 2830
    :cond_0
    iget-object v1, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/CallbackRecord;

    .line 2831
    .local v2, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2832
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$8;

    invoke-direct {v5, p0, v3, v0, v2}, Landroid/telecom/Call$8;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2856
    .end local v2    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2857
    :cond_1
    return-void
.end method

.method private greylist-max-o fireCannedTextResponsesLoaded(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2779
    .local p1, "cannedTextResponses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2780
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2781
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2782
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$5;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$5;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2788
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2789
    :cond_0
    return-void
.end method

.method private greylist-max-o fireChildrenChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .line 2753
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2754
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2755
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2756
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$3;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$3;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2762
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2763
    :cond_0
    return-void
.end method

.method private greylist-max-o fireConferenceableCallsChanged()V
    .locals 6

    .line 2860
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2861
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2862
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2863
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$9;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/Call$9;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2869
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2870
    :cond_0
    return-void
.end method

.method private greylist-max-o fireDetailsChanged(Landroid/telecom/Call$Details;)V
    .locals 6
    .param p1, "details"    # Landroid/telecom/Call$Details;

    .line 2766
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2767
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2768
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2769
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$4;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$4;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call$Details;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2775
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2776
    :cond_0
    return-void
.end method

.method private greylist-max-o fireOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2881
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2882
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v5, p0

    .line 2883
    .local v5, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/telecom/Call$Callback;

    .line 2884
    .local v8, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v10, Landroid/telecom/Call$10;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v8

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Landroid/telecom/Call$10;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2890
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v5    # "call":Landroid/telecom/Call;
    .end local v8    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2891
    :cond_0
    return-void
.end method

.method private greylist-max-o fireOnIsRttChanged(ZLandroid/telecom/Call$RttCall;)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "rttCall"    # Landroid/telecom/Call$RttCall;

    .line 2899
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2900
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2901
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2902
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda4;

    invoke-direct {v5, v3, v2, p1, p2}, Landroid/telecom/Call$$ExternalSyntheticLambda4;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2903
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2904
    :cond_0
    return-void
.end method

.method private greylist-max-o fireOnRttModeChanged(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 2912
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2913
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2914
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2915
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2916
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2917
    :cond_0
    return-void
.end method

.method private greylist-max-o fireParentChanged(Landroid/telecom/Call;)V
    .locals 6
    .param p1, "newParent"    # Landroid/telecom/Call;

    .line 2740
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2741
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2742
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2743
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$2;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$2;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2749
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2750
    :cond_0
    return-void
.end method

.method private greylist-max-o firePostDialWait(Ljava/lang/String;)V
    .locals 6
    .param p1, "remainingPostDialSequence"    # Ljava/lang/String;

    .line 2805
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2806
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2807
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2808
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$7;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$7;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2814
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2815
    :cond_0
    return-void
.end method

.method private greylist-max-o fireStateChanged(I)V
    .locals 6
    .param p1, "newState"    # I

    .line 2727
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2728
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2729
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2730
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$1;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$1;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2736
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2737
    :cond_0
    return-void
.end method

.method private greylist-max-o fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V
    .locals 6
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;

    .line 2792
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2793
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2794
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2795
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$6;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$6;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2801
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2802
    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$fireOnIsRttChanged$4(Landroid/telecom/Call$Callback;Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V
    .locals 0
    .param p0, "callback"    # Landroid/telecom/Call$Callback;
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "enabled"    # Z
    .param p3, "rttCall"    # Landroid/telecom/Call$RttCall;

    .line 2902
    invoke-virtual {p0, p1, p2, p3}, Landroid/telecom/Call$Callback;->onRttStatusChanged(Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V

    return-void
.end method

.method static synthetic blacklist lambda$fireOnRttModeChanged$5(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .locals 0
    .param p0, "callback"    # Landroid/telecom/Call$Callback;
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "mode"    # I

    .line 2915
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onRttModeChanged(Landroid/telecom/Call;I)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnHandoverComplete$3(Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V
    .locals 0
    .param p0, "callback"    # Landroid/telecom/Call$Callback;
    .param p1, "call"    # Landroid/telecom/Call;

    .line 2722
    invoke-virtual {p0, p1}, Landroid/telecom/Call$Callback;->onHandoverComplete(Landroid/telecom/Call;)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnHandoverFailed$2(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .locals 0
    .param p0, "callback"    # Landroid/telecom/Call$Callback;
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "error"    # I

    .line 2713
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onHandoverFailed(Landroid/telecom/Call;I)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnRttInitiationFailure$1(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .locals 0
    .param p0, "callback"    # Landroid/telecom/Call$Callback;
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "reason"    # I

    .line 2704
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onRttInitiationFailure(Landroid/telecom/Call;I)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnRttUpgradeRequest$0(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .locals 0
    .param p0, "callback"    # Landroid/telecom/Call$Callback;
    .param p1, "call"    # Landroid/telecom/Call;
    .param p2, "requestId"    # I

    .line 2695
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onRttRequest(Landroid/telecom/Call;I)V

    return-void
.end method

.method private static greylist-max-o stateToString(I)Ljava/lang/String;
    .locals 4
    .param p0, "state"    # I

    .line 2395
    packed-switch p0, :pswitch_data_0

    .line 2419
    :pswitch_0
    const-class v0, Landroid/telecom/Call;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unknown state %d"

    invoke-static {v0, v2, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2420
    const-string v0, "UNKNOWN"

    return-object v0

    .line 2415
    :pswitch_1
    const-string v0, "SIMULATED_RINGING"

    return-object v0

    .line 2417
    :pswitch_2
    const-string v0, "AUDIO_PROCESSING"

    return-object v0

    .line 2411
    :pswitch_3
    const-string v0, "DISCONNECTING"

    return-object v0

    .line 2409
    :pswitch_4
    const-string v0, "CONNECTING"

    return-object v0

    .line 2413
    :pswitch_5
    const-string v0, "SELECT_PHONE_ACCOUNT"

    return-object v0

    .line 2407
    :pswitch_6
    const-string v0, "DISCONNECTED"

    return-object v0

    .line 2403
    :pswitch_7
    const-string v0, "ACTIVE"

    return-object v0

    .line 2405
    :pswitch_8
    const-string v0, "HOLDING"

    return-object v0

    .line 2399
    :pswitch_9
    const-string v0, "RINGING"

    return-object v0

    .line 2401
    :pswitch_a
    const-string v0, "DIALING"

    return-object v0

    .line 2397
    :pswitch_b
    const-string v0, "NEW"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist stateToStringInternal(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .line 2427
    invoke-static {p0}, Landroid/telecom/Call;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist addConferenceParticipants(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 1953
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    .line 1954
    return-void
.end method

.method public whitelist addListener(Landroid/telecom/Call$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telecom/Call$Listener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2441
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 2442
    return-void
.end method

.method public whitelist answer(I)V
    .locals 2
    .param p1, "videoState"    # I

    .line 1735
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->answerCall(Ljava/lang/String;I)V

    .line 1736
    return-void
.end method

.method public whitelist conference(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "callToConferenceWith"    # Landroid/telecom/Call;

    .line 1919
    if-eqz p1, :cond_0

    .line 1920
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    :cond_0
    return-void
.end method

.method public whitelist deflect(Landroid/net/Uri;)V
    .locals 2
    .param p1, "address"    # Landroid/net/Uri;

    .line 1744
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->deflectCall(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1745
    return-void
.end method

.method public whitelist disconnect()V
    .locals 2

    .line 1795
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 1796
    return-void
.end method

.method public whitelist enterBackgroundAudioProcessing()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1833
    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1834
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call must be active or ringing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1836
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->enterBackgroundAudioProcessing(Ljava/lang/String;)V

    .line 1837
    return-void
.end method

.method public whitelist exitBackgroundAudioProcessing(Z)V
    .locals 2
    .param p1, "shouldRing"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1853
    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 1856
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->exitBackgroundAudioProcessing(Ljava/lang/String;Z)V

    .line 1857
    return-void

    .line 1854
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call must in the audio processing state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getCannedTextResponses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2299
    iget-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getChildren()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .line 2221
    iget-boolean v0, p0, Landroid/telecom/Call;->mChildrenCached:Z

    if-nez v0, :cond_1

    .line 2222
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Call;->mChildrenCached:Z

    .line 2223
    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2225
    iget-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2226
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v2, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v2

    .line 2227
    .local v2, "call":Landroid/telecom/Call;
    if-nez v2, :cond_0

    .line 2229
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    goto :goto_1

    .line 2231
    :cond_0
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2233
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "call":Landroid/telecom/Call;
    :goto_1
    goto :goto_0

    .line 2236
    :cond_1
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getConferenceableCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .line 2245
    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDetails()Landroid/telecom/Call$Details;
    .locals 1

    .line 2318
    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    return-object v0
.end method

.method public whitelist getGenericConferenceActiveChildCall()Landroid/telecom/Call;
    .locals 2

    .line 2278
    iget-object v0, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2279
    iget-object v1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v1, v0}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    return-object v0

    .line 2281
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getParent()Landroid/telecom/Call;
    .locals 2

    .line 2208
    iget-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2209
    iget-object v1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v1, v0}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    return-object v0

    .line 2211
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRemainingPostDialSequence()Ljava/lang/String;
    .locals 1

    .line 1727
    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRttCall()Landroid/telecom/Call$RttCall;
    .locals 1

    .line 2327
    iget-object v0, p0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    return-object v0
.end method

.method public whitelist getState()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2256
    iget v0, p0, Landroid/telecom/Call;->mState:I

    return v0
.end method

.method public whitelist getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    .line 2308
    iget-object v0, p0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    return-object v0
.end method

.method public whitelist handoverTo(Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "toHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "videoState"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 2098
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telecom/InCallAdapter;->handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V

    .line 2099
    return-void
.end method

.method public whitelist hold()V
    .locals 2

    .line 1802
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->holdCall(Ljava/lang/String;)V

    .line 1803
    return-void
.end method

.method final greylist-max-o internalGetCallId()Ljava/lang/String;
    .locals 1

    .line 2481
    iget-object v0, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method final greylist-max-o internalOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2687
    invoke-direct {p0, p1, p2}, Landroid/telecom/Call;->fireOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2688
    return-void
.end method

.method final greylist-max-o internalOnHandoverComplete()V
    .locals 6

    .line 2719
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2720
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2721
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2722
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3, v2}, Landroid/telecom/Call$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2723
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2724
    :cond_0
    return-void
.end method

.method final greylist-max-o internalOnHandoverFailed(I)V
    .locals 6
    .param p1, "error"    # I

    .line 2710
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2711
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2712
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2713
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda5;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda5;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2714
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2715
    :cond_0
    return-void
.end method

.method final greylist-max-o internalOnRttInitiationFailure(I)V
    .locals 6
    .param p1, "reason"    # I

    .line 2701
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2702
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2703
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2704
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2705
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2706
    :cond_0
    return-void
.end method

.method final greylist-max-o internalOnRttUpgradeRequest(I)V
    .locals 6
    .param p1, "requestId"    # I

    .line 2692
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2693
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    move-object v2, p0

    .line 2694
    .local v2, "call":Landroid/telecom/Call;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    .line 2695
    .local v3, "callback":Landroid/telecom/Call$Callback;
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2696
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    .end local v2    # "call":Landroid/telecom/Call;
    .end local v3    # "callback":Landroid/telecom/Call$Callback;
    goto :goto_0

    .line 2697
    :cond_0
    return-void
.end method

.method final greylist-max-o internalSetDisconnected()V
    .locals 26

    .line 2654
    move-object/from16 v0, p0

    iget v1, v0, Landroid/telecom/Call;->mState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    .line 2655
    const/4 v4, 0x7

    iput v4, v0, Landroid/telecom/Call;->mState:I

    .line 2656
    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    if-eqz v1, :cond_0

    .line 2657
    new-instance v2, Landroid/telecom/Call$Details;

    move-object v3, v2

    .line 2658
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getTelecomCallId()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2659
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v6

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2660
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v7

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2661
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2662
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v9

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2663
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v10

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2664
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v11

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2665
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallProperties()I

    move-result v12

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2666
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v13

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2667
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v14

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2668
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v16

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2669
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v17

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2670
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v18

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2671
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2672
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v20

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2673
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCreationTimeMillis()J

    move-result-wide v21

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2674
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getContactDisplayName()Ljava/lang/String;

    move-result-object v23

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2675
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallDirection()I

    move-result v24

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2676
    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallerNumberVerificationStatus()I

    move-result v25

    invoke-direct/range {v3 .. v25}, Landroid/telecom/Call$Details;-><init>(ILjava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/String;II)V

    iput-object v2, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2678
    invoke-direct {v0, v2}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    .line 2680
    :cond_0
    iget v1, v0, Landroid/telecom/Call;->mState:I

    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 2681
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 2683
    :cond_1
    return-void
.end method

.method final greylist-max-o internalSetPostDialWait(Ljava/lang/String;)V
    .locals 0
    .param p1, "remaining"    # Ljava/lang/String;

    .line 2648
    iput-object p1, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    .line 2649
    invoke-direct {p0, p1}, Landroid/telecom/Call;->firePostDialWait(Ljava/lang/String;)V

    .line 2650
    return-void
.end method

.method final greylist-max-o internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V
    .locals 32
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/ParcelableCall;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;)V"
        }
    .end annotation

    .line 2488
    .local p2, "callIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/telecom/Call;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p1 .. p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v2

    .line 2489
    .local v2, "details":Landroid/telecom/Call$Details;
    iget-object v3, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    .line 2490
    .local v3, "detailsChanged":Z
    if-eqz v3, :cond_0

    .line 2491
    iput-object v2, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2494
    :cond_0
    const/4 v5, 0x0

    .line 2495
    .local v5, "cannedTextResponsesChanged":Z
    iget-object v6, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    if-nez v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2496
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2497
    nop

    .line 2498
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    .line 2499
    const/4 v5, 0x1

    .line 2502
    :cond_1
    iget-object v6, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    .line 2503
    :cond_2
    invoke-virtual {v6}, Landroid/telecom/VideoCallImpl;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v6

    :goto_0
    nop

    .line 2504
    .local v6, "previousVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v8

    .line 2508
    .local v8, "newVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->isVideoCallProviderChanged()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2509
    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v4

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 2510
    .local v9, "videoCallChanged":Z
    :goto_1
    if-eqz v9, :cond_6

    .line 2511
    iget-object v11, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    if-eqz v11, :cond_4

    .line 2512
    invoke-virtual {v11}, Landroid/telecom/VideoCallImpl;->destroy()V

    .line 2514
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->isVideoCallProviderChanged()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2515
    iget-object v11, v0, Landroid/telecom/Call;->mCallingPackage:Ljava/lang/String;

    iget v12, v0, Landroid/telecom/Call;->mTargetSdkVersion:I

    move-object/from16 v13, p1

    invoke-virtual {v13, v11, v12}, Landroid/telecom/ParcelableCall;->getVideoCallImpl(Ljava/lang/String;I)Landroid/telecom/VideoCallImpl;

    move-result-object v11

    goto :goto_2

    :cond_5
    move-object/from16 v13, p1

    const/4 v11, 0x0

    :goto_2
    iput-object v11, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    goto :goto_3

    .line 2510
    :cond_6
    move-object/from16 v13, p1

    .line 2518
    :goto_3
    iget-object v11, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    if-eqz v11, :cond_7

    .line 2519
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/telecom/VideoCallImpl;->setVideoState(I)V

    .line 2522
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v11

    .line 2523
    .local v11, "state":I
    iget v12, v0, Landroid/telecom/Call;->mTargetSdkVersion:I

    const/16 v14, 0x1e

    if-ge v12, v14, :cond_8

    const/16 v12, 0xd

    if-ne v11, v12, :cond_8

    .line 2524
    const/4 v11, 0x2

    .line 2526
    :cond_8
    iget v12, v0, Landroid/telecom/Call;->mState:I

    if-eq v12, v11, :cond_9

    move v12, v4

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    .line 2527
    .local v12, "stateChanged":Z
    :goto_4
    if-eqz v12, :cond_a

    .line 2528
    iput v11, v0, Landroid/telecom/Call;->mState:I

    .line 2531
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v14

    .line 2532
    .local v14, "parentId":Ljava/lang/String;
    iget-object v15, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    xor-int/2addr v15, v4

    .line 2533
    .local v15, "parentChanged":Z
    if-eqz v15, :cond_b

    .line 2534
    iput-object v14, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    .line 2537
    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v7

    .line 2538
    .local v7, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-static {v7, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v4

    .line 2539
    .local v10, "childrenChanged":Z
    if-eqz v10, :cond_c

    .line 2540
    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 2541
    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    move-object/from16 v17, v2

    .end local v2    # "details":Landroid/telecom/Call$Details;
    .local v17, "details":Landroid/telecom/Call$Details;
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2542
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/telecom/Call;->mChildrenCached:Z

    goto :goto_5

    .line 2539
    .end local v17    # "details":Landroid/telecom/Call$Details;
    .restart local v2    # "details":Landroid/telecom/Call$Details;
    :cond_c
    move-object/from16 v17, v2

    const/4 v2, 0x0

    .line 2545
    .end local v2    # "details":Landroid/telecom/Call$Details;
    .restart local v17    # "details":Landroid/telecom/Call$Details;
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getActiveChildCallId()Ljava/lang/String;

    move-result-object v4

    .line 2546
    .local v4, "activeChildCallId":Ljava/lang/String;
    iget-object v2, v0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v16, 0x1

    xor-int/lit8 v2, v2, 0x1

    .line 2548
    .local v2, "activeChildChanged":Z
    if-eqz v2, :cond_d

    .line 2549
    iput-object v4, v0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    .line 2552
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConferenceableCallIds()Ljava/util/List;

    move-result-object v18

    .line 2553
    .local v18, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v19, v4

    .end local v4    # "activeChildCallId":Ljava/lang/String;
    .local v19, "activeChildCallId":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v20, v6

    .end local v6    # "previousVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    .local v20, "previousVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 2554
    .local v4, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    check-cast v6, Ljava/lang/String;

    .line 2555
    .local v6, "otherId":Ljava/lang/String;
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 2556
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v1, v21

    check-cast v1, Landroid/telecom/Call;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2558
    .end local v6    # "otherId":Ljava/lang/String;
    :cond_e
    move-object/from16 v1, p2

    move-object/from16 v6, v22

    goto :goto_6

    .line 2560
    :cond_f
    iget-object v1, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "Telecom-Call"

    if-nez v1, :cond_10

    .line 2561
    iget-object v1, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2562
    iget-object v1, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2563
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireConferenceableCallsChanged()V

    .line 2565
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v4

    .end local v4    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .local v21, "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    const-string/jumbo v4, "internalUpdate - conferenceableCalls: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2560
    .end local v21    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .restart local v4    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    :cond_10
    move-object/from16 v21, v4

    .line 2569
    .end local v4    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    .restart local v21    # "conferenceableCalls":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    :goto_7
    const/4 v1, 0x0

    .line 2570
    .local v1, "isRttChanged":Z
    const/4 v4, 0x0

    .line 2571
    .local v4, "rttModeChanged":Z
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getIsRttCallChanged()Z

    move-result v22

    if-eqz v22, :cond_14

    move/from16 v22, v1

    .end local v1    # "isRttChanged":Z
    .local v22, "isRttChanged":Z
    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    move/from16 v23, v4

    .end local v4    # "rttModeChanged":Z
    .local v23, "rttModeChanged":Z
    const/16 v4, 0x400

    .line 2572
    invoke-virtual {v1, v4}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2573
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getParcelableRttCall()Landroid/telecom/ParcelableRttCall;

    move-result-object v1

    .line 2574
    .local v1, "parcelableRttCall":Landroid/telecom/ParcelableRttCall;
    new-instance v4, Ljava/io/InputStreamReader;

    move-object/from16 v30, v7

    .end local v7    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v30, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 2576
    move-object/from16 v31, v8

    .end local v8    # "newVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    .local v31, "newVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    invoke-virtual {v1}, Landroid/telecom/ParcelableRttCall;->getReceiveStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v26, v4

    .line 2578
    .local v26, "receiveStream":Ljava/io/InputStreamReader;
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v7, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    .line 2580
    invoke-virtual {v1}, Landroid/telecom/ParcelableRttCall;->getTransmitStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v27, v4

    .line 2582
    .local v27, "transmitStream":Ljava/io/OutputStreamWriter;
    new-instance v4, Landroid/telecom/Call$RttCall;

    iget-object v7, v0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 2583
    invoke-virtual {v1}, Landroid/telecom/ParcelableRttCall;->getRttMode()I

    move-result v28

    iget-object v8, v0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    move-object/from16 v24, v4

    move-object/from16 v25, v7

    move-object/from16 v29, v8

    invoke-direct/range {v24 .. v29}, Landroid/telecom/Call$RttCall;-><init>(Ljava/lang/String;Ljava/io/InputStreamReader;Ljava/io/OutputStreamWriter;ILandroid/telecom/InCallAdapter;)V

    .line 2584
    .local v4, "newRttCall":Landroid/telecom/Call$RttCall;
    iget-object v7, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-nez v7, :cond_11

    .line 2585
    const/4 v7, 0x1

    move/from16 v22, v7

    .end local v22    # "isRttChanged":Z
    .local v7, "isRttChanged":Z
    goto :goto_8

    .line 2586
    .end local v7    # "isRttChanged":Z
    .restart local v22    # "isRttChanged":Z
    :cond_11
    invoke-virtual {v7}, Landroid/telecom/Call$RttCall;->getRttAudioMode()I

    move-result v7

    invoke-virtual {v4}, Landroid/telecom/Call$RttCall;->getRttAudioMode()I

    move-result v8

    if-eq v7, v8, :cond_12

    .line 2587
    const/4 v7, 0x1

    move/from16 v23, v7

    .line 2589
    :cond_12
    :goto_8
    iput-object v4, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    .line 2590
    .end local v1    # "parcelableRttCall":Landroid/telecom/ParcelableRttCall;
    .end local v4    # "newRttCall":Landroid/telecom/Call$RttCall;
    .end local v26    # "receiveStream":Ljava/io/InputStreamReader;
    .end local v27    # "transmitStream":Ljava/io/OutputStreamWriter;
    move/from16 v1, v22

    move/from16 v4, v23

    goto :goto_a

    .line 2572
    .end local v30    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "newVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    .local v7, "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "newVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    :cond_13
    move-object/from16 v30, v7

    move-object/from16 v31, v8

    .end local v7    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "newVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    .restart local v30    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "newVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    goto :goto_9

    .line 2571
    .end local v22    # "isRttChanged":Z
    .end local v23    # "rttModeChanged":Z
    .end local v30    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v31    # "newVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    .local v1, "isRttChanged":Z
    .local v4, "rttModeChanged":Z
    .restart local v7    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "newVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    :cond_14
    move/from16 v22, v1

    move/from16 v23, v4

    move-object/from16 v30, v7

    move-object/from16 v31, v8

    .line 2590
    .end local v1    # "isRttChanged":Z
    .end local v4    # "rttModeChanged":Z
    .end local v7    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "newVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    .restart local v22    # "isRttChanged":Z
    .restart local v23    # "rttModeChanged":Z
    .restart local v30    # "childCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v31    # "newVideoProvider":Lcom/android/internal/telecom/IVideoProvider;
    :goto_9
    iget-object v1, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-eqz v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getParcelableRttCall()Landroid/telecom/ParcelableRttCall;

    move-result-object v1

    if-nez v1, :cond_15

    .line 2591
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getIsRttCallChanged()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2592
    const/4 v1, 0x1

    .line 2593
    .end local v22    # "isRttChanged":Z
    .restart local v1    # "isRttChanged":Z
    iget-object v4, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-virtual {v4}, Landroid/telecom/Call$RttCall;->close()V

    .line 2594
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    move/from16 v4, v23

    goto :goto_a

    .line 2598
    .end local v1    # "isRttChanged":Z
    .restart local v22    # "isRttChanged":Z
    :cond_15
    move/from16 v1, v22

    move/from16 v4, v23

    .end local v22    # "isRttChanged":Z
    .end local v23    # "rttModeChanged":Z
    .restart local v1    # "isRttChanged":Z
    .restart local v4    # "rttModeChanged":Z
    :goto_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "internalUpdate - stateChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", detailsChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", videoCallChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isRttChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", rttModeChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cannedTextResChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", parentChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", childrenChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", activeChildChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    if-eqz v12, :cond_16

    .line 2609
    iget v7, v0, Landroid/telecom/Call;->mState:I

    invoke-direct {v0, v7}, Landroid/telecom/Call;->fireStateChanged(I)V

    .line 2611
    :cond_16
    if-eqz v3, :cond_17

    .line 2612
    iget-object v7, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-direct {v0, v7}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    .line 2614
    :cond_17
    if-eqz v5, :cond_18

    .line 2615
    iget-object v7, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    invoke-direct {v0, v7}, Landroid/telecom/Call;->fireCannedTextResponsesLoaded(Ljava/util/List;)V

    .line 2617
    :cond_18
    if-eqz v9, :cond_19

    .line 2619
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "internalUpdate - videoCallImpl: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isVideoCallProviderChanged: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2620
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->isVideoCallProviderChanged()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2619
    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    iget-object v6, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-direct {v0, v6}, Landroid/telecom/Call;->fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V

    .line 2624
    :cond_19
    if-eqz v15, :cond_1a

    .line 2625
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/telecom/Call;->fireParentChanged(Landroid/telecom/Call;)V

    .line 2627
    :cond_1a
    if-nez v10, :cond_1b

    if-eqz v2, :cond_1c

    .line 2628
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/telecom/Call;->fireChildrenChanged(Ljava/util/List;)V

    .line 2630
    :cond_1c
    if-eqz v1, :cond_1e

    .line 2631
    iget-object v6, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-eqz v6, :cond_1d

    move/from16 v7, v16

    goto :goto_b

    :cond_1d
    const/4 v7, 0x0

    :goto_b
    invoke-direct {v0, v7, v6}, Landroid/telecom/Call;->fireOnIsRttChanged(ZLandroid/telecom/Call$RttCall;)V

    .line 2633
    :cond_1e
    if-eqz v4, :cond_1f

    .line 2634
    iget-object v6, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-virtual {v6}, Landroid/telecom/Call$RttCall;->getRttAudioMode()I

    move-result v6

    invoke-direct {v0, v6}, Landroid/telecom/Call;->fireOnRttModeChanged(I)V

    .line 2641
    :cond_1f
    iget v6, v0, Landroid/telecom/Call;->mState:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_20

    .line 2642
    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    .line 2644
    :cond_20
    return-void
.end method

.method public whitelist isRttActive()Z
    .locals 2

    .line 2335
    iget-object v0, p0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist mergeConference()V
    .locals 2

    .line 1936
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->mergeConference(Ljava/lang/String;)V

    .line 1937
    return-void
.end method

.method public whitelist phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .line 1909
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 1911
    return-void
.end method

.method public whitelist playDtmfTone(C)V
    .locals 2
    .param p1, "digit"    # C

    .line 1868
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->playDtmfTone(Ljava/lang/String;C)V

    .line 1869
    return-void
.end method

.method public whitelist postDialContinue(Z)V
    .locals 2
    .param p1, "proceed"    # Z

    .line 1901
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->postDialContinue(Ljava/lang/String;Z)V

    .line 1902
    return-void
.end method

.method public whitelist pullExternalCall()V
    .locals 2

    .line 1969
    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1970
    return-void

    .line 1973
    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->pullExternalCall(Ljava/lang/String;)V

    .line 1974
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 2153
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2156
    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2157
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2158
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2168
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2171
    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 2138
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2141
    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2142
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2143
    return-void
.end method

.method public final whitelist putExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 2119
    if-nez p1, :cond_0

    .line 2120
    return-void

    .line 2123
    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 2124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2126
    :cond_1
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 2127
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2128
    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/Call$Callback;)V
    .locals 1
    .param p1, "callback"    # Landroid/telecom/Call$Callback;

    .line 2344
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V

    .line 2345
    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/telecom/Call$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 2354
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 2356
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 2357
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    new-instance v1, Landroid/telecom/CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/CallbackRecord;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2359
    :cond_0
    return-void
.end method

.method public whitelist reject(I)V
    .locals 2
    .param p1, "rejectReason"    # I

    .line 1764
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;I)V

    .line 1765
    return-void
.end method

.method public whitelist reject(ZLjava/lang/String;)V
    .locals 2
    .param p1, "rejectWithMessage"    # Z
    .param p2, "textMessage"    # Ljava/lang/String;

    .line 1754
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1755
    return-void
.end method

.method public final whitelist removeExtras(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2181
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 2182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2183
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2184
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 2185
    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2186
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    .line 2189
    :cond_1
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    .line 2190
    return-void
.end method

.method public final varargs whitelist removeExtras([Ljava/lang/String;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .line 2198
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Call;->removeExtras(Ljava/util/List;)V

    .line 2199
    return-void
.end method

.method public whitelist removeListener(Landroid/telecom/Call$Listener;)V
    .locals 0
    .param p1, "listener"    # Landroid/telecom/Call$Listener;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2454
    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 2455
    return-void
.end method

.method public whitelist respondToRttRequest(IZ)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "accept"    # Z

    .line 2031
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->respondToRttRequest(Ljava/lang/String;IZ)V

    .line 2032
    return-void
.end method

.method public whitelist sendCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2011
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget v2, p0, Landroid/telecom/Call;->mTargetSdkVersion:I

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telecom/InCallAdapter;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 2012
    return-void
.end method

.method public whitelist sendRttRequest()V
    .locals 2

    .line 2020
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->sendRttRequest(Ljava/lang/String;)V

    .line 2021
    return-void
.end method

.method public whitelist splitFromConference()V
    .locals 2

    .line 1929
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->splitFromConference(Ljava/lang/String;)V

    .line 1930
    return-void
.end method

.method public whitelist stopDtmfTone()V
    .locals 2

    .line 1879
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopDtmfTone(Ljava/lang/String;)V

    .line 1880
    return-void
.end method

.method public whitelist stopRtt()V
    .locals 2

    .line 2106
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopRtt(Ljava/lang/String;)V

    .line 2107
    return-void
.end method

.method public whitelist swapConference()V
    .locals 2

    .line 1943
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->swapConference(Ljava/lang/String;)V

    .line 1944
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 2380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2381
    const-string v1, "Call [id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    .line 2382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2383
    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/Call;->mState:I

    .line 2384
    invoke-static {v1}, Landroid/telecom/Call;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2385
    const-string v1, ", details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    .line 2386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2387
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2380
    return-object v0
.end method

.method public blacklist transfer(Landroid/net/Uri;Z)V
    .locals 2
    .param p1, "targetNumber"    # Landroid/net/Uri;
    .param p2, "isConfirmationRequired"    # Z

    .line 1777
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->transferCall(Ljava/lang/String;Landroid/net/Uri;Z)V

    .line 1778
    return-void
.end method

.method public blacklist transfer(Landroid/telecom/Call;)V
    .locals 3
    .param p1, "toCall"    # Landroid/telecom/Call;

    .line 1788
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    .line 1789
    return-void
.end method

.method public whitelist unhold()V
    .locals 2

    .line 1809
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->unholdCall(Ljava/lang/String;)V

    .line 1810
    return-void
.end method

.method public whitelist unregisterCallback(Landroid/telecom/Call$Callback;)V
    .locals 3
    .param p1, "callback"    # Landroid/telecom/Call$Callback;

    .line 2368
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 2369
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 2370
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 2371
    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2372
    goto :goto_1

    .line 2374
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/Call$Callback;>;"
    :cond_0
    goto :goto_0

    .line 2376
    :cond_1
    :goto_1
    return-void
.end method
