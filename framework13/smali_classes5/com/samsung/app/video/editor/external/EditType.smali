.class public final enum Lcom/samsung/app/video/editor/external/EditType;
.super Ljava/lang/Enum;
.source "EditType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/EditType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/EditType;

.field public static final enum blacklist ADD_AUDIO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

.field public static final enum blacklist ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

.field public static final enum blacklist ADD_VIDEO_FADING:Lcom/samsung/app/video/editor/external/EditType;

.field public static final enum blacklist ADD_VIDEO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

.field public static final enum blacklist CHANGE_VOLUME:Lcom/samsung/app/video/editor/external/EditType;

.field public static final enum blacklist NONE:Lcom/samsung/app/video/editor/external/EditType;


# instance fields
.field final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    .line 8
    new-instance v0, Lcom/samsung/app/video/editor/external/EditType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/app/video/editor/external/EditType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/EditType;->NONE:Lcom/samsung/app/video/editor/external/EditType;

    .line 9
    new-instance v1, Lcom/samsung/app/video/editor/external/EditType;

    const-string v3, "CHANGE_VOLUME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/samsung/app/video/editor/external/EditType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/EditType;->CHANGE_VOLUME:Lcom/samsung/app/video/editor/external/EditType;

    .line 10
    new-instance v3, Lcom/samsung/app/video/editor/external/EditType;

    const-string v5, "ADD_VIDEO_EFFECTS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/samsung/app/video/editor/external/EditType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_EFFECTS:Lcom/samsung/app/video/editor/external/EditType;

    .line 11
    new-instance v5, Lcom/samsung/app/video/editor/external/EditType;

    const-string v7, "ADD_VIDEO_TRANSITION"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/samsung/app/video/editor/external/EditType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

    .line 12
    new-instance v7, Lcom/samsung/app/video/editor/external/EditType;

    const-string v9, "ADD_AUDIO_TRANSITION"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/samsung/app/video/editor/external/EditType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/samsung/app/video/editor/external/EditType;->ADD_AUDIO_TRANSITION:Lcom/samsung/app/video/editor/external/EditType;

    .line 13
    new-instance v9, Lcom/samsung/app/video/editor/external/EditType;

    const-string v11, "ADD_VIDEO_FADING"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/samsung/app/video/editor/external/EditType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/samsung/app/video/editor/external/EditType;->ADD_VIDEO_FADING:Lcom/samsung/app/video/editor/external/EditType;

    .line 7
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/samsung/app/video/editor/external/EditType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/samsung/app/video/editor/external/EditType;->$VALUES:[Lcom/samsung/app/video/editor/external/EditType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/samsung/app/video/editor/external/EditType;->value:I

    .line 18
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/EditType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 7
    const-class v0, Lcom/samsung/app/video/editor/external/EditType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/EditType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/EditType;
    .locals 1

    .line 7
    sget-object v0, Lcom/samsung/app/video/editor/external/EditType;->$VALUES:[Lcom/samsung/app/video/editor/external/EditType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/EditType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/EditType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/samsung/app/video/editor/external/EditType;->value:I

    return v0
.end method
