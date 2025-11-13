.class public final Lcom/samsung/android/media/convert/core/Convert$BitRate;
.super Ljava/lang/Object;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/convert/core/Convert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitRate"
.end annotation


# static fields
.field public static final blacklist AUDIO_AAC_BITRATE:I = 0x80

.field public static final blacklist VIDEO_D1_BITRATE:I = 0xd79

.field public static final blacklist VIDEO_FHD60_BITRATE:I = 0x6d60

.field public static final blacklist VIDEO_FHD_BITRATE:I = 0x4268

.field public static final blacklist VIDEO_HD_BITRATE:I = 0x2ee0

.field public static final blacklist VIDEO_QHD_BITRATE:I = 0x4e20

.field public static final blacklist VIDEO_UHD60_BITRATE:I = 0x11940

.field public static final blacklist VIDEO_UHD_BITRATE:I = 0xbb80

.field public static final blacklist VIDEO_VGA_BITRATE:I = 0xc06


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
