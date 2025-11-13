.class public final Lcom/samsung/android/transcode/constants/EncodeConstants$CodecsMime;
.super Ljava/lang/Object;
.source "EncodeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/constants/EncodeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CodecsMime"
.end annotation


# static fields
.field public static final blacklist AUDIO_CODEC_AAC:Ljava/lang/String; = "audio/mp4a-latm"

.field public static final blacklist AUDIO_CODEC_AMR:Ljava/lang/String; = "audio/3gpp"

.field public static final blacklist AUDIO_CODEC_AMR_WB:Ljava/lang/String; = "audio/amr-wb"

.field public static final blacklist VIDEO_CODEC_H263:Ljava/lang/String; = "video/3gpp"

.field public static final blacklist VIDEO_CODEC_H264:Ljava/lang/String; = "video/avc"

.field public static final blacklist VIDEO_CODEC_H265:Ljava/lang/String; = "video/hevc"

.field public static final blacklist VIDEO_CODEC_MPEG4:Ljava/lang/String; = "video/mp4v-es"

.field public static final blacklist VIDEO_CODEC_MVHEVC:Ljava/lang/String; = "video/x-mvhevc"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
