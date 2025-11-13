.class public final Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;
.super Ljava/lang/Object;
.source "EncodeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/transcode/constants/EncodeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentType"
.end annotation


# static fields
.field public static final blacklist VIDEO_3G2:Ljava/lang/String; = "video/3gpp2"

.field public static final blacklist VIDEO_3GP:Ljava/lang/String; = "video/3gp"

.field public static final blacklist VIDEO_3GPP:Ljava/lang/String; = "video/3gpp"

.field public static final blacklist VIDEO_ASF:Ljava/lang/String; = "video/x-ms-asf"

.field public static final blacklist VIDEO_AVI:Ljava/lang/String; = "video/avi"

.field public static final blacklist VIDEO_DIVX:Ljava/lang/String; = "video/divx"

.field public static final blacklist VIDEO_FLV:Ljava/lang/String; = "video/flv"

.field public static final blacklist VIDEO_MKV:Ljava/lang/String; = "video/x-matroska"

.field public static final blacklist VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final blacklist VIDEO_MP4V_ES:Ljava/lang/String; = "video/mp4v-es"

.field public static final blacklist VIDEO_MPEG:Ljava/lang/String; = "video/mpeg"

.field public static final blacklist VIDEO_MPEG2TS:Ljava/lang/String; = "video/mp2ts"

.field public static final blacklist VIDEO_WEBM:Ljava/lang/String; = "video/webm"

.field public static final blacklist VIDEO_WMV:Ljava/lang/String; = "video/x-ms-wmv"

.field public static final blacklist sSupportedVideoTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/3gpp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/3gpp2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/mp4v-es"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/3gp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/avi"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/x-ms-wmv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/x-ms-asf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/divx"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/mpeg"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/x-matroska"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/flv"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/mp2ts"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/transcode/constants/EncodeConstants$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    const-string v1, "video/webm"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
