.class public final enum Lcom/samsung/android/photoremasterservice/ServiceID$Description;
.super Ljava/lang/Enum;
.source "ServiceID.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/photoremasterservice/ServiceID;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Description"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/photoremasterservice/ServiceID$Description;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_DEINIT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_EXCEPTION:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_GET_INT_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_GET_LONG_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_GET_STRING_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_INIT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_ON_UPDATE_METADATA:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_ON_UPDATE_PROGRESS:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_PROCESS_AESTHETIC_SCORING:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_PROCESS_IMAGE:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_PROCESS_IMAGE_LEGACY:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_RET:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_SET_CONTEXT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum blacklist MSG_SET_LONG_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_SET_OBJECT_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_SET_PROGRESS_UPDATE_LISTENER:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_SET_STRING_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_STOP:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field private static final blacklist SERVICE_ID_DESCRIPTION:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/photoremasterservice/ServiceID$Description;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist code:I

.field private final blacklist description:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 22

    .line 38
    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v1, "MSG_EXCEPTION"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_EXCEPTION:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 39
    new-instance v1, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v3, "MSG_RET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2, v3}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_RET:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 40
    new-instance v3, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v5, "MSG_SET_CONTEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4, v5}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_CONTEXT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 42
    new-instance v5, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v7, "MSG_INIT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6, v7}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v5, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_INIT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 43
    new-instance v7, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v9, "MSG_DEINIT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8, v9}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_DEINIT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 44
    new-instance v9, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v11, "MSG_STOP"

    const/4 v12, 0x5

    const-string v13, "MSG_STOP"

    invoke-direct {v9, v11, v12, v10, v13}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_STOP:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 45
    new-instance v11, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v13, "MSG_PROCESS_IMAGE"

    const/4 v14, 0x6

    const-string v15, "MSG_PROCESS_IMAGE"

    invoke-direct {v11, v13, v14, v12, v15}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v11, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_PROCESS_IMAGE:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 46
    new-instance v13, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v15, "MSG_PROCESS_IMAGE_LEGACY"

    const/4 v12, 0x7

    const-string v10, "MSG_PROCESS_IMAGE_LEGACY"

    invoke-direct {v13, v15, v12, v14, v10}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_PROCESS_IMAGE_LEGACY:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 47
    new-instance v10, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v15, "MSG_PROCESS_AESTHETIC_SCORING"

    const/16 v14, 0x8

    const-string v8, "MSG_PROCESS_AESTHETIC_SCORING"

    invoke-direct {v10, v15, v14, v12, v8}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v10, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_PROCESS_AESTHETIC_SCORING:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 48
    new-instance v8, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v15, "MSG_SET_OBJECT_PARAM"

    const/16 v12, 0x9

    const-string v6, "MSG_SET_OBJECT_PARAM"

    invoke-direct {v8, v15, v12, v14, v6}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_OBJECT_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 49
    new-instance v6, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v15, "MSG_SET_STRING_PARAM"

    const/16 v14, 0xa

    const-string v4, "MSG_SET_STRING_PARAM"

    invoke-direct {v6, v15, v14, v12, v4}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_STRING_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 50
    new-instance v4, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v15, "MSG_SET_LONG_PARAM"

    const/16 v12, 0xb

    const-string v2, "MSG_SET_LONG_PARAM"

    invoke-direct {v4, v15, v12, v14, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_LONG_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 51
    new-instance v2, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v15, "MSG_GET_STRING_PARAM"

    const/16 v14, 0xc

    move-object/from16 v16, v4

    const-string v4, "MSG_GET_STRING_PARAM"

    invoke-direct {v2, v15, v14, v12, v4}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_GET_STRING_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 52
    new-instance v4, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v15, "MSG_GET_INT_PARAM"

    const/16 v12, 0xd

    move-object/from16 v17, v2

    const-string v2, "MSG_GET_INT_PARAM"

    invoke-direct {v4, v15, v12, v14, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_GET_INT_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 53
    new-instance v2, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v15, "MSG_GET_LONG_PARAM"

    const/16 v14, 0xe

    move-object/from16 v18, v4

    const-string v4, "MSG_GET_LONG_PARAM"

    invoke-direct {v2, v15, v14, v12, v4}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_GET_LONG_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 54
    new-instance v4, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v15, "MSG_SET_PROGRESS_UPDATE_LISTENER"

    const/16 v12, 0xf

    move-object/from16 v19, v2

    const-string v2, "MSG_SET_PROGRESS_UPDATE_LISTENER"

    invoke-direct {v4, v15, v12, v14, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_PROGRESS_UPDATE_LISTENER:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 55
    new-instance v2, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v15, "MSG_ON_UPDATE_METADATA"

    const/16 v14, 0x10

    move-object/from16 v20, v4

    const-string v4, "MSG_ON_UPDATE_METADATA"

    invoke-direct {v2, v15, v14, v12, v4}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v2, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_ON_UPDATE_METADATA:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 56
    new-instance v4, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v15, "MSG_ON_UPDATE_PROGRESS"

    const/16 v12, 0x11

    move-object/from16 v21, v2

    const-string v2, "MSG_ON_UPDATE_PROGRESS"

    invoke-direct {v4, v15, v12, v14, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_ON_UPDATE_PROGRESS:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 37
    const/16 v2, 0x12

    new-array v2, v2, [Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const/4 v12, 0x0

    aput-object v0, v2, v12

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v10, v2, v0

    const/16 v0, 0x9

    aput-object v8, v2, v0

    const/16 v0, 0xa

    aput-object v6, v2, v0

    const/16 v0, 0xb

    aput-object v16, v2, v0

    const/16 v0, 0xc

    aput-object v17, v2, v0

    const/16 v0, 0xd

    aput-object v18, v2, v0

    const/16 v0, 0xe

    aput-object v19, v2, v0

    const/16 v0, 0xf

    aput-object v20, v2, v0

    aput-object v21, v2, v14

    const/16 v0, 0x11

    aput-object v4, v2, v0

    sput-object v2, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->$VALUES:[Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 67
    invoke-static {}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->values()[Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/photoremasterservice/ServiceID$Description$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/photoremasterservice/ServiceID$Description$$ExternalSyntheticLambda1;-><init>()V

    .line 68
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 67
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->SERVICE_ID_DESCRIPTION:Ljava/util/Map;

    .line 66
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->code:I

    .line 63
    iput-object p4, p0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->description:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static blacklist createFromId(I)Lcom/samsung/android/photoremasterservice/ServiceID$Description;
    .locals 2
    .param p0, "code"    # I

    .line 72
    sget-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->SERVICE_ID_DESCRIPTION:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/photoremasterservice/ServiceID$Description$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/photoremasterservice/ServiceID$Description$$ExternalSyntheticLambda0;-><init>(I)V

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    .line 72
    return-object v0
.end method

.method static synthetic blacklist lambda$createFromId$0(I)Ljava/lang/IllegalArgumentException;
    .locals 3
    .param p0, "code"    # I

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/android/photoremasterservice/ServiceID$Description;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 37
    const-class v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/photoremasterservice/ServiceID$Description;
    .locals 1

    .line 37
    sget-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->$VALUES:[Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    invoke-virtual {v0}, [Lcom/samsung/android/photoremasterservice/ServiceID$Description;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    return-object v0
.end method


# virtual methods
.method public blacklist getDescription()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->description:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getId()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->code:I

    return v0
.end method
