.class public Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants$DataPoints;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/net/nap/NetworkAnalyticsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataPoints"
.end annotation


# static fields
.field public static final BYTES_RECEIVED:Ljava/lang/String; = "brecv"

.field public static final BYTES_SENT:Ljava/lang/String; = "bsent"

.field public static final CLOSE_TIME:Ljava/lang/String; = "end"

.field public static final DESTINATION_IP:Ljava/lang/String; = "dst"

.field public static final DESTINATION_PORT:Ljava/lang/String; = "dport"

.field public static final DNS_UID:Ljava/lang/String; = "dnsuid"

.field public static final FLAG_BYTES_RECEIVED:I = 0x1

.field public static final FLAG_BYTES_SENT:I = 0x2

.field public static final FLAG_CLOSE_TIME:I = 0x4

.field public static final FLAG_DESTINATION_IP:I = 0x8

.field public static final FLAG_DESTINATION_PORT:I = 0x10

.field public static final FLAG_DNS_UID:I = 0x10000

.field public static final FLAG_HOSTNAME:I = 0x20

.field public static final FLAG_INTERFACE_NAME:I = 0x80000

.field public static final FLAG_OPEN_TIME:I = 0x40

.field public static final FLAG_PARENT_PROCESS_HASH:I = 0x40000

.field public static final FLAG_PARENT_PROCESS_NAME:I = 0x80

.field public static final FLAG_PID:I = 0x100

.field public static final FLAG_PPID:I = 0x20000

.field public static final FLAG_PROCESS_HASH:I = 0x200

.field public static final FLAG_PROCESS_NAME:I = 0x400

.field public static final FLAG_PROTOCOL:I = 0x800

.field public static final FLAG_PUID:I = 0x1000

.field public static final FLAG_SOURCE_IP:I = 0x2000

.field public static final FLAG_SOURCE_PORT:I = 0x4000

.field public static final FLAG_UID:I = 0x8000

.field public static final HOSTNAME:Ljava/lang/String; = "hostname"

.field public static final INTERFACE_NAME:Ljava/lang/String; = "iface"

.field public static final OPEN_TIME:Ljava/lang/String; = "start"

.field public static final PARENT_PROCESS_HASH:Ljava/lang/String; = "parentprochash"

.field public static final PARENT_PROCESS_NAME:Ljava/lang/String; = "parentprocname"

.field public static final PID:Ljava/lang/String; = "pid"

.field public static final PPID:Ljava/lang/String; = "ppid"

.field public static final PROCESS_HASH:Ljava/lang/String; = "prochash"

.field public static final PROCESS_NAME:Ljava/lang/String; = "procname"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final PUID:Ljava/lang/String; = "puid"

.field public static final RECORD_TYPE:Ljava/lang/String; = "recordtype"

.field public static final SOURCE_IP:Ljava/lang/String; = "src"

.field public static final SOURCE_PORT:Ljava/lang/String; = "sport"

.field public static final UID:Ljava/lang/String; = "uid"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
