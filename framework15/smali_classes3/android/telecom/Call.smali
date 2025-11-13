.class public final Landroid/telecom/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Call$Details;,
        Landroid/telecom/Call$RttCall;,
        Landroid/telecom/Call$Callback;,
        Landroid/telecom/Call$Listener;,
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

.field public static final whitelist EXTRA_ASSERTED_DISPLAY_NAME:Ljava/lang/String; = "android.telecom.extra.ASSERTED_DISPLAY_NAME"

.field public static final whitelist EXTRA_DIAGNOSTIC_MESSAGE:Ljava/lang/String; = "android.telecom.extra.DIAGNOSTIC_MESSAGE"

.field public static final whitelist EXTRA_DIAGNOSTIC_MESSAGE_ID:Ljava/lang/String; = "android.telecom.extra.DIAGNOSTIC_MESSAGE_ID"

.field public static final whitelist EXTRA_IS_BUSINESS_CALL:Ljava/lang/String; = "android.telecom.extra.IS_BUSINESS_CALL"

.field public static final whitelist EXTRA_IS_SUPPRESSED_BY_DO_NOT_DISTURB:Ljava/lang/String; = "android.telecom.extra.IS_SUPPRESSED_BY_DO_NOT_DISTURB"

.field public static final whitelist EXTRA_LAST_EMERGENCY_CALLBACK_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.LAST_EMERGENCY_CALLBACK_TIME_MILLIS"

.field public static final whitelist EXTRA_SILENT_RINGING_REQUESTED:Ljava/lang/String; = "android.telecom.extra.SILENT_RINGING_REQUESTED"

.field public static final whitelist EXTRA_SUGGESTED_PHONE_ACCOUNTS:Ljava/lang/String; = "android.telecom.extra.SUGGESTED_PHONE_ACCOUNTS"

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iput p4, p0, Landroid/telecom/Call;->mState:I

    iput-object p5, p0, Landroid/telecom/Call;->mCallingPackage:Ljava/lang/String;

    iput p6, p0, Landroid/telecom/Call;->mTargetSdkVersion:I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableChildren:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    iget-object v0, p0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    iput-object v0, p0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    iput-object p1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    iput-object p2, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iput-object p3, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    const/4 v0, 0x0

    iput v0, p0, Landroid/telecom/Call;->mState:I

    iput-object p4, p0, Landroid/telecom/Call;->mCallingPackage:Ljava/lang/String;

    iput p5, p0, Landroid/telecom/Call;->mTargetSdkVersion:I

    return-void
.end method

.method private static greylist-max-o areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_6

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    :cond_2
    :try_start_0
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v4, Landroid/os/Bundle;

    if-eqz v6, :cond_3

    instance-of v6, v5, Landroid/os/Bundle;

    if-eqz v6, :cond_3

    move-object v6, v4

    check-cast v6, Landroid/os/Bundle;

    move-object v7, v5

    check-cast v7, Landroid/os/Bundle;

    invoke-static {v6, v7}, Landroid/telecom/Call;->areBundlesEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_3

    return v1

    :cond_3
    instance-of v6, v4, [B

    if-eqz v6, :cond_4

    instance-of v6, v5, [B

    if-eqz v6, :cond_4

    move-object v6, v4

    check-cast v6, [B

    move-object v7, v5

    check-cast v7, [B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_5

    return v1

    :cond_4
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_5

    return v1

    :cond_5
    goto :goto_1

    :catch_0
    move-exception v0

    return v1

    :cond_6
    :goto_1
    goto :goto_0

    :cond_7
    return v0

    :cond_8
    :goto_2
    if-ne p0, p1, :cond_9

    goto :goto_3

    :cond_9
    move v0, v1

    :goto_3
    return v0
.end method

.method private greylist-max-o fireCallDestroyed()V
    .locals 6

    move-object v0, p0

    iget-object v1, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v1, v0}, Landroid/telecom/Phone;->internalRemoveCall(Landroid/telecom/Call;)V

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

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v2}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$8;

    invoke-direct {v5, p0, v3, v0, v2}, Landroid/telecom/Call$8;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/CallbackRecord;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$5;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$5;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$3;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$3;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o fireConferenceableCallsChanged()V
    .locals 6

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$9;

    invoke-direct {v5, p0, v3, v2}, Landroid/telecom/Call$9;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o fireDetailsChanged(Landroid/telecom/Call$Details;)V
    .locals 6

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$4;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$4;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call$Details;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o fireOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11

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

    move-object v5, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/telecom/Call$Callback;

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

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o fireOnIsRttChanged(ZLandroid/telecom/Call$RttCall;)V
    .locals 6

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v2, p1, p2}, Landroid/telecom/Call$$ExternalSyntheticLambda1;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o fireOnRttModeChanged(I)V
    .locals 6

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda4;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda4;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o fireParentChanged(Landroid/telecom/Call;)V
    .locals 6

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$2;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$2;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/Call;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o firePostDialWait(Ljava/lang/String;)V
    .locals 6

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$7;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$7;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o fireStateChanged(I)V
    .locals 6

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$1;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$1;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V
    .locals 6

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$6;

    invoke-direct {v5, p0, v3, v2, p1}, Landroid/telecom/Call$6;-><init>(Landroid/telecom/Call;Landroid/telecom/Call$Callback;Landroid/telecom/Call;Landroid/telecom/InCallService$VideoCall;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$fireOnIsRttChanged$4(Landroid/telecom/Call$Callback;Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/telecom/Call$Callback;->onRttStatusChanged(Landroid/telecom/Call;ZLandroid/telecom/Call$RttCall;)V

    return-void
.end method

.method static synthetic blacklist lambda$fireOnRttModeChanged$5(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onRttModeChanged(Landroid/telecom/Call;I)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnHandoverComplete$3(Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/telecom/Call$Callback;->onHandoverComplete(Landroid/telecom/Call;)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnHandoverFailed$2(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onHandoverFailed(Landroid/telecom/Call;I)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnRttInitiationFailure$1(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onRttInitiationFailure(Landroid/telecom/Call;I)V

    return-void
.end method

.method static synthetic blacklist lambda$internalOnRttUpgradeRequest$0(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/telecom/Call$Callback;->onRttRequest(Landroid/telecom/Call;I)V

    return-void
.end method

.method private static greylist-max-o stateToString(I)Ljava/lang/String;
    .locals 3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-class v1, Landroid/telecom/Call;

    const-string v2, "Unknown state %d"

    invoke-static {v1, v2, v0}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_1
    const-string v0, "SIMULATED_RINGING"

    return-object v0

    :pswitch_2
    const-string v0, "AUDIO_PROCESSING"

    return-object v0

    :pswitch_3
    const-string v0, "DISCONNECTING"

    return-object v0

    :pswitch_4
    const-string v0, "CONNECTING"

    return-object v0

    :pswitch_5
    const-string v0, "SELECT_PHONE_ACCOUNT"

    return-object v0

    :pswitch_6
    const-string v0, "DISCONNECTED"

    return-object v0

    :pswitch_7
    const-string v0, "ACTIVE"

    return-object v0

    :pswitch_8
    const-string v0, "HOLDING"

    return-object v0

    :pswitch_9
    const-string v0, "RINGING"

    return-object v0

    :pswitch_a
    const-string v0, "DIALING"

    return-object v0

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

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->addConferenceParticipants(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public whitelist addListener(Landroid/telecom/Call$Listener;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    return-void
.end method

.method public whitelist answer(I)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->answerCall(Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist conference(Landroid/telecom/Call;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public whitelist deflect(Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->deflectCall(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public whitelist disconnect()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->disconnectCall(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist enterBackgroundAudioProcessing()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call must be active or ringing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->enterBackgroundAudioProcessing(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist exitBackgroundAudioProcessing(Z)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->exitBackgroundAudioProcessing(Ljava/lang/String;Z)V

    return-void

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

    iget-boolean v0, p0, Landroid/telecom/Call;->mChildrenCached:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telecom/Call;->mChildrenCached:Z

    iget-object v0, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

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

    iget-object v2, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v2, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/telecom/Call;->mChildrenCached:Z

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/telecom/Call;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_0

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

    iget-object v0, p0, Landroid/telecom/Call;->mUnmodifiableConferenceableCalls:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDetails()Landroid/telecom/Call$Details;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    return-object v0
.end method

.method public whitelist getGenericConferenceActiveChildCall()Landroid/telecom/Call;
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getParent()Landroid/telecom/Call;
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Call;->mPhone:Landroid/telecom/Phone;

    iget-object v1, p0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRemainingPostDialSequence()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRttCall()Landroid/telecom/Call$RttCall;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    return-object v0
.end method

.method public whitelist getState()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/telecom/Call;->mState:I

    return v0
.end method

.method public whitelist getVideoCall()Landroid/telecom/InCallService$VideoCall;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    return-object v0
.end method

.method public whitelist handoverTo(Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/telecom/InCallAdapter;->handoverTo(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;ILandroid/os/Bundle;)V

    return-void
.end method

.method public whitelist hold()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->holdCall(Ljava/lang/String;)V

    return-void
.end method

.method final greylist-max-o internalGetCallId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method final greylist-max-o internalOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telecom/Call;->fireOnConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method final greylist-max-o internalOnHandoverComplete()V
    .locals 6

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda2;

    invoke-direct {v5, v3, v2}, Landroid/telecom/Call$$ExternalSyntheticLambda2;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method final greylist-max-o internalOnHandoverFailed(I)V
    .locals 6

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda0;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method final greylist-max-o internalOnRttInitiationFailure(I)V
    .locals 6

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda5;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda5;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method final greylist-max-o internalOnRttUpgradeRequest(I)V
    .locals 6

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

    move-object v2, p0

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/Call$Callback;

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/Call$$ExternalSyntheticLambda3;

    invoke-direct {v5, v3, v2, p1}, Landroid/telecom/Call$$ExternalSyntheticLambda3;-><init>(Landroid/telecom/Call$Callback;Landroid/telecom/Call;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method final greylist-max-o internalSetDisconnected()V
    .locals 27

    move-object/from16 v0, p0

    iget v1, v0, Landroid/telecom/Call;->mState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    iput v2, v0, Landroid/telecom/Call;->mState:I

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/telecom/Call$Details;

    move-object v2, v1

    iget v3, v0, Landroid/telecom/Call;->mState:I

    iget-object v4, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getTelecomCallId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v5}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v5

    iget-object v6, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getHandlePresentation()I

    move-result v6

    iget-object v7, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v7}, Landroid/telecom/Call$Details;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v8}, Landroid/telecom/Call$Details;->getCallerDisplayNamePresentation()I

    move-result v8

    iget-object v9, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v9}, Landroid/telecom/Call$Details;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v9

    iget-object v10, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v10}, Landroid/telecom/Call$Details;->getCallCapabilities()I

    move-result v10

    iget-object v11, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v11}, Landroid/telecom/Call$Details;->getCallProperties()I

    move-result v11

    iget-object v12, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v12}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v12

    iget-object v13, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v13}, Landroid/telecom/Call$Details;->getConnectTimeMillis()J

    move-result-wide v13

    iget-object v15, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v15}, Landroid/telecom/Call$Details;->getGatewayInfo()Landroid/telecom/GatewayInfo;

    move-result-object v15

    move-object/from16 v26, v1

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v16

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v17

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v19

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCreationTimeMillis()J

    move-result-wide v20

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getContactDisplayName()Ljava/lang/String;

    move-result-object v22

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallDirection()I

    move-result v23

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getCallerNumberVerificationStatus()I

    move-result v24

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getContactPhotoUri()Landroid/net/Uri;

    move-result-object v25

    invoke-direct/range {v2 .. v25}, Landroid/telecom/Call$Details;-><init>(ILjava/lang/String;Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;JLjava/lang/String;IILandroid/net/Uri;)V

    move-object/from16 v1, v26

    iput-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    :cond_0
    iget v1, v0, Landroid/telecom/Call;->mState:I

    invoke-direct {v0, v1}, Landroid/telecom/Call;->fireStateChanged(I)V

    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    :cond_1
    return-void
.end method

.method final greylist-max-o internalSetPostDialWait(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    iget-object v0, p0, Landroid/telecom/Call;->mRemainingPostDialSequence:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/telecom/Call;->firePostDialWait(Ljava/lang/String;)V

    return-void
.end method

.method final greylist-max-o internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V
    .locals 31
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p1 .. p1}, Landroid/telecom/Call$Details;->createFromParcelableCall(Landroid/telecom/ParcelableCall;)Landroid/telecom/Call$Details;

    move-result-object v2

    iget-object v3, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-static {v3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    if-eqz v3, :cond_0

    iput-object v2, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    :cond_0
    const/4 v5, 0x0

    iget-object v6, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    if-nez v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getCannedSmsResponses()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    const/4 v5, 0x1

    :cond_1
    iget-object v6, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    if-nez v6, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    iget-object v6, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-virtual {v6}, Landroid/telecom/VideoCallImpl;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v6

    :goto_0
    nop

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->isVideoCallProviderChanged()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v6, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    move v9, v4

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_6

    iget-object v11, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    if-eqz v11, :cond_4

    iget-object v11, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-virtual {v11}, Landroid/telecom/VideoCallImpl;->destroy()V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->isVideoCallProviderChanged()Z

    move-result v11

    if-eqz v11, :cond_5

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

    :cond_6
    move-object/from16 v13, p1

    :goto_3
    iget-object v11, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    if-eqz v11, :cond_7

    iget-object v11, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/telecom/VideoCallImpl;->setVideoState(I)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v11

    iget v12, v0, Landroid/telecom/Call;->mTargetSdkVersion:I

    const/16 v14, 0x1e

    if-ge v12, v14, :cond_8

    const/16 v12, 0xd

    if-ne v11, v12, :cond_8

    const/4 v11, 0x2

    :cond_8
    iget v12, v0, Landroid/telecom/Call;->mState:I

    if-eq v12, v11, :cond_9

    move v12, v4

    goto :goto_4

    :cond_9
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_a

    iput v11, v0, Landroid/telecom/Call;->mState:I

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    invoke-static {v15, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    xor-int/2addr v15, v4

    if-eqz v15, :cond_b

    iput-object v14, v0, Landroid/telecom/Call;->mParentId:Ljava/lang/String;

    :cond_b
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v7

    iget-object v10, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-static {v7, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    xor-int/2addr v10, v4

    if-eqz v10, :cond_c

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, v0, Landroid/telecom/Call;->mChildrenIds:Ljava/util/List;

    move-object/from16 v17, v2

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/telecom/Call;->mChildrenCached:Z

    goto :goto_5

    :cond_c
    move-object/from16 v17, v2

    const/4 v2, 0x0

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getActiveChildCallId()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/16 v16, 0x1

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_d

    iput-object v4, v0, Landroid/telecom/Call;->mActiveGenericConferenceChild:Ljava/lang/String;

    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getConferenceableCallIds()Ljava/util/List;

    move-result-object v18

    move-object/from16 v19, v4

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v20, v6

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

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

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v1, v21

    check-cast v1, Landroid/telecom/Call;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    move-object/from16 v1, p2

    move-object/from16 v6, v22

    goto :goto_6

    :cond_f
    iget-object v1, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Landroid/telecom/Call;->mConferenceableCalls:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireConferenceableCallsChanged()V

    :cond_10
    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getIsRttCallChanged()Z

    move-result v21

    if-eqz v21, :cond_14

    move/from16 v21, v1

    iget-object v1, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    move-object/from16 v22, v4

    const/16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getParcelableRttCall()Landroid/telecom/ParcelableRttCall;

    move-result-object v1

    new-instance v4, Ljava/io/InputStreamReader;

    move/from16 v29, v6

    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    move-object/from16 v30, v7

    invoke-virtual {v1}, Landroid/telecom/ParcelableRttCall;->getReceiveStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v25, v4

    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v1}, Landroid/telecom/ParcelableRttCall;->getTransmitStream()Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    move-object/from16 v26, v4

    new-instance v4, Landroid/telecom/Call$RttCall;

    iget-object v6, v0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/telecom/ParcelableRttCall;->getRttMode()I

    move-result v27

    iget-object v7, v0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    move-object/from16 v23, v4

    move-object/from16 v24, v6

    move-object/from16 v28, v7

    invoke-direct/range {v23 .. v28}, Landroid/telecom/Call$RttCall;-><init>(Ljava/lang/String;Ljava/io/InputStreamReader;Ljava/io/OutputStreamWriter;ILandroid/telecom/InCallAdapter;)V

    iget-object v6, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-nez v6, :cond_11

    const/4 v6, 0x1

    move/from16 v21, v6

    move/from16 v6, v29

    goto :goto_7

    :cond_11
    iget-object v6, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-virtual {v6}, Landroid/telecom/Call$RttCall;->getRttAudioMode()I

    move-result v6

    invoke-virtual {v4}, Landroid/telecom/Call$RttCall;->getRttAudioMode()I

    move-result v7

    if-eq v6, v7, :cond_12

    const/4 v6, 0x1

    goto :goto_7

    :cond_12
    move/from16 v6, v29

    :goto_7
    iput-object v4, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    move/from16 v1, v21

    goto :goto_9

    :cond_13
    move/from16 v29, v6

    move-object/from16 v30, v7

    goto :goto_8

    :cond_14
    move/from16 v21, v1

    move-object/from16 v22, v4

    move/from16 v29, v6

    move-object/from16 v30, v7

    :goto_8
    iget-object v1, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-eqz v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getParcelableRttCall()Landroid/telecom/ParcelableRttCall;

    move-result-object v1

    if-nez v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/ParcelableCall;->getIsRttCallChanged()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x1

    iget-object v4, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-virtual {v4}, Landroid/telecom/Call$RttCall;->close()V

    const/4 v4, 0x0

    iput-object v4, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    move/from16 v6, v29

    goto :goto_9

    :cond_15
    move/from16 v1, v21

    move/from16 v6, v29

    :goto_9
    if-eqz v12, :cond_16

    iget v4, v0, Landroid/telecom/Call;->mState:I

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireStateChanged(I)V

    :cond_16
    if-eqz v3, :cond_17

    iget-object v4, v0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireDetailsChanged(Landroid/telecom/Call$Details;)V

    :cond_17
    if-eqz v5, :cond_18

    iget-object v4, v0, Landroid/telecom/Call;->mCannedTextResponses:Ljava/util/List;

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireCannedTextResponsesLoaded(Ljava/util/List;)V

    :cond_18
    if-eqz v9, :cond_19

    iget-object v4, v0, Landroid/telecom/Call;->mVideoCallImpl:Landroid/telecom/VideoCallImpl;

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireVideoCallChanged(Landroid/telecom/InCallService$VideoCall;)V

    :cond_19
    if-eqz v15, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getParent()Landroid/telecom/Call;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireParentChanged(Landroid/telecom/Call;)V

    :cond_1a
    if-nez v10, :cond_1b

    if-eqz v2, :cond_1c

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/Call;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireChildrenChanged(Ljava/util/List;)V

    :cond_1c
    if-eqz v1, :cond_1e

    iget-object v4, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    if-eqz v4, :cond_1d

    move/from16 v4, v16

    goto :goto_a

    :cond_1d
    const/4 v4, 0x0

    :goto_a
    iget-object v7, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-direct {v0, v4, v7}, Landroid/telecom/Call;->fireOnIsRttChanged(ZLandroid/telecom/Call$RttCall;)V

    :cond_1e
    if-eqz v6, :cond_1f

    iget-object v4, v0, Landroid/telecom/Call;->mRttCall:Landroid/telecom/Call$RttCall;

    invoke-virtual {v4}, Landroid/telecom/Call$RttCall;->getRttAudioMode()I

    move-result v4

    invoke-direct {v0, v4}, Landroid/telecom/Call;->fireOnRttModeChanged(I)V

    :cond_1f
    iget v4, v0, Landroid/telecom/Call;->mState:I

    const/4 v7, 0x7

    if-ne v4, v7, :cond_20

    if-eqz v12, :cond_20

    invoke-direct/range {p0 .. p0}, Landroid/telecom/Call;->fireCallDestroyed()V

    :cond_20
    return-void
.end method

.method public whitelist isRttActive()Z
    .locals 2

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

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->mergeConference(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    return-void
.end method

.method public whitelist playDtmfTone(C)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->playDtmfTone(Ljava/lang/String;C)V

    return-void
.end method

.method public whitelist postDialContinue(Z)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->postDialContinue(Ljava/lang/String;Z)V

    return-void
.end method

.method public whitelist pullExternalCall()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/telecom/Call$Details;->hasProperty(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->pullExternalCall(Ljava/lang/String;)V

    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final greylist-max-o putExtra(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->putExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final whitelist putExtras(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    :cond_1
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/Call$Callback;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist registerCallback(Landroid/telecom/Call$Callback;Landroid/os/Handler;)V
    .locals 2

    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    new-instance v1, Landroid/telecom/CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/CallbackRecord;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public whitelist reject(I)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist reject(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

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

    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/Call;->mExtras:Landroid/os/Bundle;

    :cond_1
    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/telecom/InCallAdapter;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final varargs whitelist removeExtras([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Call;->removeExtras(Ljava/util/List;)V

    return-void
.end method

.method public whitelist removeListener(Landroid/telecom/Call$Listener;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    return-void
.end method

.method public whitelist respondToRttRequest(IZ)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->respondToRttRequest(Ljava/lang/String;IZ)V

    return-void
.end method

.method public whitelist sendCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget v2, p0, Landroid/telecom/Call;->mTargetSdkVersion:I

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/telecom/InCallAdapter;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    return-void
.end method

.method public whitelist sendRttRequest()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->sendRttRequest(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist splitFromConference()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->splitFromConference(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist stopDtmfTone()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopDtmfTone(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist stopRtt()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->stopRtt(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist swapConference()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->swapConference(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call [id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telecom/Call;->mState:I

    invoke-static {v1}, Landroid/telecom/Call;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/Call;->mDetails:Landroid/telecom/Call$Details;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist transfer(Landroid/net/Uri;Z)V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Landroid/telecom/InCallAdapter;->transferCall(Ljava/lang/String;Landroid/net/Uri;Z)V

    return-void
.end method

.method public blacklist transfer(Landroid/telecom/Call;)V
    .locals 3

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    iget-object v2, p1, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/telecom/InCallAdapter;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist unhold()V
    .locals 2

    iget-object v0, p0, Landroid/telecom/Call;->mInCallAdapter:Landroid/telecom/InCallAdapter;

    iget-object v1, p0, Landroid/telecom/Call;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/telecom/InCallAdapter;->unholdCall(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist unregisterCallback(Landroid/telecom/Call$Callback;)V
    .locals 3

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/telecom/Call;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

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

    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v0, p0, Landroid/telecom/Call;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
