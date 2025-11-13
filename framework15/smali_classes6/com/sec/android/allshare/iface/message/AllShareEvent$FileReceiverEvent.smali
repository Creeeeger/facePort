.class public Lcom/sec/android/allshare/iface/message/AllShareEvent$FileReceiverEvent;
.super Ljava/lang/Object;
.source "AllShareEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/allshare/iface/message/AllShareEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileReceiverEvent"
.end annotation


# static fields
.field public static final blacklist EVENT_FILE_RECEIVER_COMPLETED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_FILE_RECEIVER_COMPLECTED"

.field public static final blacklist EVENT_FILE_RECEIVER_FAILED:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_FILE_RECEIVER_FAILED"

.field public static final blacklist EVENT_FILE_RECEIVER_PROGRESS:Ljava/lang/String; = "com.sec.android.allshare.event.EVENT_FILE_RECEIVER_PROGRESS"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
