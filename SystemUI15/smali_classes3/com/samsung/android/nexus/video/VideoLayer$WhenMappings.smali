.class public final synthetic Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->values()[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->INITIALIZED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v0, v2

    sget-object v2, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->PAUSED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    aput v5, v0, v4

    sget-object v4, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->STARTED:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x3

    aput v7, v0, v6

    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->values()[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v0, v6

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v5, v0, v6

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v7, v0, v6

    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->values()[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v0, v6

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v5, v0, v6

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v7, v0, v6

    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->values()[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v0, v6

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v5, v0, v6

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v7, v0, v6

    invoke-static {}, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->values()[Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/nexus/video/VideoLayer$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v6, Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;->IDLE:Lcom/samsung/android/nexus/video/VideoPlayer$VideoState;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aput v3, v0, v6

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    return-void
.end method
