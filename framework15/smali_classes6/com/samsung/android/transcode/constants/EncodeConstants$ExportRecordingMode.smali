.class public final Lcom/samsung/android/transcode/constants/EncodeConstants$ExportRecordingMode;
.super Ljava/lang/Object;
.source "EncodeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/constants/EncodeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExportRecordingMode"
.end annotation


# static fields
.field public static final blacklist FAST_NORMAL:I = 0x79

.field public static final blacklist HDR_10:I = 0xb

.field public static final blacklist HDR_10_PLUS:I = 0xa

.field public static final blacklist HYPERLAPSE_NORMAL:I = 0x7a

.field public static final blacklist NORMAL:I = 0x0

.field public static final blacklist SLOW_NORMAL:I = 0x65

.field public static final blacklist SUPERSLOW_MULTI_NORMAL:I = 0x70

.field public static final blacklist SUPERSLOW_NORMAL:I = 0x6f

.field public static final blacklist UNSUPPORT:I = -0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
