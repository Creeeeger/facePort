.class public final Lcom/samsung/android/media/convert/core/Convert$ContentType;
.super Ljava/lang/Object;
.source "Convert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/convert/core/Convert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContentType"
.end annotation


# static fields
.field public static final blacklist VIDEO_3G2:Ljava/lang/String; = "video/3gpp2"

.field public static final blacklist VIDEO_3GP:Ljava/lang/String; = "video/3gp"

.field public static final blacklist VIDEO_3GPP:Ljava/lang/String; = "video/3gpp"

.field public static final blacklist VIDEO_MP4:Ljava/lang/String; = "video/mp4"

.field public static final blacklist VIDEO_MP4V_ES:Ljava/lang/String; = "video/mp4v-es"

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

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/media/convert/core/Convert$ContentType;->sSupportedVideoTypes:Ljava/util/ArrayList;

    .line 304
    const-string/jumbo v1, "video/3gpp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    const-string/jumbo v1, "video/3gpp2"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    const-string/jumbo v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    const-string/jumbo v1, "video/mp4v-es"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    const-string/jumbo v1, "video/3gp"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
