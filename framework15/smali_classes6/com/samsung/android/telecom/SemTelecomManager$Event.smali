.class public final Lcom/samsung/android/telecom/SemTelecomManager$Event;
.super Ljava/lang/Object;
.source "SemTelecomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/telecom/SemTelecomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Event"
.end annotation


# static fields
.field public static final blacklist SEM_EVENT_ADD_CALL:Ljava/lang/String; = "com.samsung.telecom.CALL_EVENT_ADD_CALL"

.field public static final blacklist SEM_EVENT_ANSWER:Ljava/lang/String; = "com.samsung.telecom.Call.EVENT_ANSWER"

.field public static final blacklist SEM_EVENT_ANSWER_RINGING_CALL:Ljava/lang/String; = "com.samsung.telecom.Call.EVENT_ANSWER_RINGING_CALL"

.field public static final blacklist SEM_EVENT_CALL_CONNECT_TIME:Ljava/lang/String; = "com.samsung.telecom.CALL_EVENT_CALL_CONNECT_TIME"

.field public static final blacklist SEM_EVENT_CALL_CREATE_TIME:Ljava/lang/String; = "com.samsung.telecom.CALL_EVENT_CALL_CREATE_TIME"

.field public static final blacklist SEM_EVENT_CHOSEN_PHONE_ID:Ljava/lang/String; = "com.samsung.telecom.CALL_EVENT_CHOSEN_PHONE_ID"

.field public static final blacklist SEM_EVENT_END_CALL:Ljava/lang/String; = "com.samsung.telecom.Call.EVENT_END_CALL"

.field public static final blacklist SEM_EVENT_END_CALL_FROM_TELECOM_MANAGER:Ljava/lang/String; = "com.samsung.telecom.Call.EVENT_END_CALL_FROM_TELECOM_MANAGER"

.field public static final blacklist SEM_EVENT_LINE_CTRL:Ljava/lang/String; = "com.samsung.telecom.Call.EVENT_LINE_CTRL"

.field public static final blacklist SEM_EVENT_OPEN_PLATFORM_CONTROL_UX:Ljava/lang/String; = "com.samsung.telecom.Call.EVENT_OPEN_PLATFORM_CONTROL_UX"

.field public static final blacklist SEM_EVENT_PULL_CALL:Ljava/lang/String; = "com.samsung.telecom.CALL_EVENT_PULL_CALL"

.field public static final blacklist SEM_EVENT_READ_CALLER_ID:Ljava/lang/String; = "com.samsung.telecom.Call.EVENT_READ_CALLER_ID"

.field public static final blacklist SEM_EVENT_RESTART_RINGING_OR_CALL_WAITING:Ljava/lang/String; = "com.samsung.telecom.Call.EVENT_RESTART_RINGING_OR_CALL_WAITING"

.field public static final blacklist SEM_EVENT_SET_ALERTING:Ljava/lang/String; = "com.samsung.telecom.Call.EVENT_SET_ALERTING"

.field public static final blacklist SEM_EVENT_SET_ALERTING_TO_BLUETOOTH:Ljava/lang/String; = "com.samsung.telecom.Call.EVENT_SET_ALERTING_TO_BLUETOOTH"

.field public static final blacklist SEM_EVENT_SET_ECHOLOCATE_CALL_STATE:Ljava/lang/String; = "com.samsung.telecom.Call.EVENT_SET_ECHOLOCATE_CALL_STATE"

.field public static final blacklist SEM_EVENT_SET_ECHOLOCATE_UI_CALL_STATE:Ljava/lang/String; = "com.samsung.telecom.Call.EVENT_SET_ECHOLOCATE_UI_CALL_STATE"

.field public static final blacklist SEM_EVENT_START_RINGTONE_IF_POSSIBLE:Ljava/lang/String; = "com.samsung.telecom.Call.EVENT_START_RINGTONE_IF_POSSIBLE"

.field public static final blacklist SEM_EVENT_UPDATE_CALL:Ljava/lang/String; = "com.samsung.server.telecom.event.UPDATE_CALL"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
