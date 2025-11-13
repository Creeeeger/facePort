.class public Lcom/sec/ims/volte2/data/ImsCallInfo$Qci;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/data/ImsCallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qci"
.end annotation


# static fields
.field public static final QCI_AUDIO:I = 0x1

.field public static final QCI_VIDEO_GBR:I = 0x2

.field public static final QCI_VIDEO_NGBR:I = 0x8

.field public static final QCI_VIDEO_NGBR_7:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
