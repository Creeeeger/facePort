.class public final enum Lcom/samsung/app/video/editor/external/UpdateParamType;
.super Ljava/lang/Enum;
.source "UpdateParamType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/app/video/editor/external/UpdateParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/app/video/editor/external/UpdateParamType;

.field public static final enum blacklist UPDATE_VIDEO_DEFLICKER:Lcom/samsung/app/video/editor/external/UpdateParamType;

.field public static final enum blacklist UPDATE_VIDEO_EFFECT:Lcom/samsung/app/video/editor/external/UpdateParamType;

.field public static final enum blacklist UPDATE_VIDEO_TONE_EFFECT:Lcom/samsung/app/video/editor/external/UpdateParamType;


# instance fields
.field private final blacklist value:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    .line 4
    new-instance v0, Lcom/samsung/app/video/editor/external/UpdateParamType;

    const-string v1, "UPDATE_VIDEO_EFFECT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/app/video/editor/external/UpdateParamType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/app/video/editor/external/UpdateParamType;->UPDATE_VIDEO_EFFECT:Lcom/samsung/app/video/editor/external/UpdateParamType;

    .line 5
    new-instance v1, Lcom/samsung/app/video/editor/external/UpdateParamType;

    const-string v4, "UPDATE_VIDEO_DEFLICKER"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/app/video/editor/external/UpdateParamType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/app/video/editor/external/UpdateParamType;->UPDATE_VIDEO_DEFLICKER:Lcom/samsung/app/video/editor/external/UpdateParamType;

    .line 6
    new-instance v4, Lcom/samsung/app/video/editor/external/UpdateParamType;

    const-string v6, "UPDATE_VIDEO_TONE_EFFECT"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/samsung/app/video/editor/external/UpdateParamType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/samsung/app/video/editor/external/UpdateParamType;->UPDATE_VIDEO_TONE_EFFECT:Lcom/samsung/app/video/editor/external/UpdateParamType;

    .line 3
    new-array v6, v7, [Lcom/samsung/app/video/editor/external/UpdateParamType;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/samsung/app/video/editor/external/UpdateParamType;->$VALUES:[Lcom/samsung/app/video/editor/external/UpdateParamType;

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

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/samsung/app/video/editor/external/UpdateParamType;->value:I

    .line 12
    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/app/video/editor/external/UpdateParamType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/samsung/app/video/editor/external/UpdateParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/app/video/editor/external/UpdateParamType;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/app/video/editor/external/UpdateParamType;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/app/video/editor/external/UpdateParamType;->$VALUES:[Lcom/samsung/app/video/editor/external/UpdateParamType;

    invoke-virtual {v0}, [Lcom/samsung/app/video/editor/external/UpdateParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/app/video/editor/external/UpdateParamType;

    return-object v0
.end method


# virtual methods
.method public blacklist getValue()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/samsung/app/video/editor/external/UpdateParamType;->value:I

    return v0
.end method
