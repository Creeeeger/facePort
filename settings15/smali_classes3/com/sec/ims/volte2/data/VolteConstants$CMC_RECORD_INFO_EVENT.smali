.class public Lcom/sec/ims/volte2/data/VolteConstants$CMC_RECORD_INFO_EVENT;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/VolteConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMC_RECORD_INFO_EVENT"
.end annotation


# static fields
.field public static final CMC_RECORD_EVENT_START:I = 0x1

.field public static final CMC_RECORD_EVENT_STOP_ERROR_UNKNOWN:I = 0x64

.field public static final CMC_RECORD_EVENT_STOP_MAX_DURATION_REACHED:I = 0x3

.field public static final CMC_RECORD_EVENT_STOP_MAX_FILESIZE_REACHED:I = 0x4

.field public static final CMC_RECORD_EVENT_STOP_NORMAL:I = 0x2

.field public static final CMC_RECORD_EVENT_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
