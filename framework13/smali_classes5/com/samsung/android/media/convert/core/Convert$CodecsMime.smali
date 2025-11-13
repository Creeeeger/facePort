.class public final Lcom/samsung/android/media/convert/core/Convert$CodecsMime;
.super Ljava/lang/Object;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/convert/core/Convert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecsMime"
.end annotation


# static fields
.field public static final blacklist AUDIO_CODEC_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final blacklist AUDIO_CODEC_AMR:Ljava/lang/String; = "audio/3gpp"

.field public static final blacklist VIDEO_CODEC_H263:Ljava/lang/String; = "video/3gpp"

.field public static final blacklist VIDEO_CODEC_H264:Ljava/lang/String; = "video/avc"

.field public static final blacklist VIDEO_CODEC_H265:Ljava/lang/String; = "video/hevc"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
