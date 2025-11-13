.class public Lcom/samsung/android/knox/zt/internal/KnoxZtInternalConst$Event$NetworkLog;
.super Ljava/lang/Object;
.source "KnoxZtInternalConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/zt/internal/KnoxZtInternalConst$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkLog"
.end annotation


# static fields
.field public static final blacklist TAG_NETWORK_EVENT_ABNORMAL_PACKET:I = 0x2

.field public static final blacklist TAG_NETWORK_EVENT_INSECURE_PACKET:I = 0x1

.field public static final blacklist TAG_NETWORK_EVENT_LOCAL_NW_PACKET:I = 0x3


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
