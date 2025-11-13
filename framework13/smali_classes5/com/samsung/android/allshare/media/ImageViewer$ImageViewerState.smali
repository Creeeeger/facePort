.class public final enum Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
.super Ljava/lang/Enum;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/media/ImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageViewerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

.field public static final enum whitelist BUFFERING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

.field public static final enum whitelist CONTENT_CHANGED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

.field public static final enum whitelist SHOWING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

.field public static final enum whitelist STOPPED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

.field public static final enum whitelist UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;


# instance fields
.field private final blacklist enumString:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 11

    .line 121
    new-instance v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->STOPPED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    .line 126
    new-instance v1, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    const-string v3, "BUFFERING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->BUFFERING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    .line 131
    new-instance v3, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    const-string v5, "SHOWING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->SHOWING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    .line 142
    new-instance v5, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    const-string v7, "CONTENT_CHANGED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    .line 147
    new-instance v7, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    const-string v9, "UNKNOWN"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    .line 116
    const/4 v9, 0x5

    new-array v9, v9, [Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->$VALUES:[Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "enumStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 153
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 154
    iput-object p3, p0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->enumString:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public static blacklist stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    .locals 1
    .param p0, "enumStr"    # Ljava/lang/String;

    .line 166
    if-nez p0, :cond_0

    .line 167
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0

    .line 169
    :cond_0
    const-string v0, "BUFFERING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->BUFFERING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0

    .line 171
    :cond_1
    const-string v0, "CONTENT_CHANGED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->CONTENT_CHANGED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0

    .line 173
    :cond_2
    const-string v0, "SHOWING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->SHOWING:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0

    .line 175
    :cond_3
    const-string v0, "STOPPED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 176
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->STOPPED:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0

    .line 177
    :cond_4
    const-string v0, "UNKNOWN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0

    .line 180
    :cond_5
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->UNKNOWN:Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 116
    const-class v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0
.end method

.method public static whitelist values()[Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;
    .locals 1

    .line 116
    sget-object v0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->$VALUES:[Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    invoke-virtual {v0}, [Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;

    return-object v0
.end method


# virtual methods
.method public blacklist enumToString()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/samsung/android/allshare/media/ImageViewer$ImageViewerState;->enumString:Ljava/lang/String;

    return-object v0
.end method
