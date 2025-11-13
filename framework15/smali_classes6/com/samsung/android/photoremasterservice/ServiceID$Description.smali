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

.field public static final enum blacklist MSG_GET_BITMAP_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_GET_FOCUS_ROI:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_GET_INT_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_GET_LONG_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_GET_STRING_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_INIT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_ON_UPDATE_METADATA:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_ON_UPDATE_PROGRESS:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_PROCESS_AESTHETIC_SCORING:Lcom/samsung/android/photoremasterservice/ServiceID$Description;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum blacklist MSG_PROCESS_IMAGE:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_PROCESS_IMAGE_LEGACY:Lcom/samsung/android/photoremasterservice/ServiceID$Description;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum blacklist MSG_RET:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_SET_BITMAP_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_SET_CONTEXT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum blacklist MSG_SET_LONG_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_SET_PROGRESS_UPDATE_LISTENER:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_SET_STRING_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_SET_URI_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_STOP:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

.field public static final enum blacklist MSG_TRY_INIT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

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
.method private static synthetic blacklist $values()[Lcom/samsung/android/photoremasterservice/ServiceID$Description;
    .locals 22

    sget-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_EXCEPTION:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v1, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_RET:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v2, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_CONTEXT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v3, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_INIT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v4, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_TRY_INIT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v5, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_DEINIT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v6, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_STOP:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v7, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_PROCESS_IMAGE:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v8, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_PROCESS_IMAGE_LEGACY:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v9, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_PROCESS_AESTHETIC_SCORING:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v10, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_URI_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v11, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_BITMAP_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v12, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_STRING_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v13, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_LONG_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v14, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_GET_STRING_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v15, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_GET_INT_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v16, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_GET_LONG_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v17, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_PROGRESS_UPDATE_LISTENER:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v18, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_ON_UPDATE_METADATA:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v19, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_ON_UPDATE_PROGRESS:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v20, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_GET_FOCUS_ROI:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    sget-object v21, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_GET_BITMAP_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    filled-new-array/range {v0 .. v21}, [Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const/4 v1, -0x1

    const-string v2, "MSG_EXCEPTION"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_EXCEPTION:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v1, "MSG_RET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_RET:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v1, "MSG_SET_CONTEXT"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_CONTEXT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v1, "MSG_INIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_INIT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v1, "MSG_TRY_INIT"

    const/4 v3, 0x4

    const/16 v4, 0x12

    invoke-direct {v0, v1, v3, v4, v1}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_TRY_INIT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v1, "MSG_DEINIT"

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5, v2, v1}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_DEINIT:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v1, "MSG_STOP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_STOP:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v1, "MSG_PROCESS_IMAGE"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v5, v1}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_PROCESS_IMAGE:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v1, "MSG_PROCESS_IMAGE_LEGACY"

    const/16 v5, 0x8

    invoke-direct {v0, v1, v5, v2, v1}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_PROCESS_IMAGE_LEGACY:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v1, "MSG_PROCESS_AESTHETIC_SCORING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_PROCESS_AESTHETIC_SCORING:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const-string v1, "MSG_SET_URI_PARAM"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3, v5, v1}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_URI_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const/16 v1, 0x14

    const-string v3, "MSG_SET_BITMAP_PARAM"

    const-string v5, "MSG_SET_BITMAP_PARAM"

    const/16 v6, 0xb

    invoke-direct {v0, v5, v6, v1, v3}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_BITMAP_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const/16 v1, 0xc

    const-string v3, "MSG_SET_STRING_PARAM"

    const-string v5, "MSG_SET_STRING_PARAM"

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_STRING_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const/16 v1, 0xa

    const-string v2, "MSG_SET_LONG_PARAM"

    const-string v3, "MSG_SET_LONG_PARAM"

    const/16 v5, 0xd

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_LONG_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const/16 v1, 0xb

    const-string v2, "MSG_GET_STRING_PARAM"

    const-string v3, "MSG_GET_STRING_PARAM"

    const/16 v5, 0xe

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_GET_STRING_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const/16 v1, 0xc

    const-string v2, "MSG_GET_INT_PARAM"

    const-string v3, "MSG_GET_INT_PARAM"

    const/16 v5, 0xf

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_GET_INT_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const/16 v1, 0xd

    const-string v2, "MSG_GET_LONG_PARAM"

    const-string v3, "MSG_GET_LONG_PARAM"

    const/16 v5, 0x10

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_GET_LONG_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const/16 v1, 0xe

    const-string v2, "MSG_SET_PROGRESS_UPDATE_LISTENER"

    const-string v3, "MSG_SET_PROGRESS_UPDATE_LISTENER"

    const/16 v5, 0x11

    invoke-direct {v0, v3, v5, v1, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_SET_PROGRESS_UPDATE_LISTENER:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const/16 v1, 0xf

    const-string v2, "MSG_ON_UPDATE_METADATA"

    const-string v3, "MSG_ON_UPDATE_METADATA"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_ON_UPDATE_METADATA:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const/16 v1, 0x10

    const-string v2, "MSG_ON_UPDATE_PROGRESS"

    const-string v3, "MSG_ON_UPDATE_PROGRESS"

    const/16 v4, 0x13

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_ON_UPDATE_PROGRESS:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const/16 v1, 0x11

    const-string v2, "MSG_GET_FOCUS_ROI"

    const-string v3, "MSG_GET_FOCUS_ROI"

    const/16 v4, 0x14

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_GET_FOCUS_ROI:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    new-instance v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    const/16 v1, 0x13

    const-string v2, "MSG_GET_BITMAP_PARAM"

    const-string v3, "MSG_GET_BITMAP_PARAM"

    const/16 v4, 0x15

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->MSG_GET_BITMAP_PARAM:Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    invoke-static {}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->$values()[Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->$VALUES:[Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    invoke-static {}, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->values()[Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    move-result-object v0

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/photoremasterservice/ServiceID$Description$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/photoremasterservice/ServiceID$Description$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->SERVICE_ID_DESCRIPTION:Ljava/util/Map;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->code:I

    iput-object p4, p0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->description:Ljava/lang/String;

    return-void
.end method

.method public static blacklist createFromId(I)Lcom/samsung/android/photoremasterservice/ServiceID$Description;
    .locals 2

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

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    return-object v0
.end method

.method static synthetic blacklist lambda$createFromId$0(I)Ljava/lang/IllegalArgumentException;
    .locals 3

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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    return-object v0
.end method

.method public static blacklist values()[Lcom/samsung/android/photoremasterservice/ServiceID$Description;
    .locals 1

    sget-object v0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->$VALUES:[Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    invoke-virtual {v0}, [Lcom/samsung/android/photoremasterservice/ServiceID$Description;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/photoremasterservice/ServiceID$Description;

    return-object v0
.end method


# virtual methods
.method public blacklist getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->description:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/photoremasterservice/ServiceID$Description;->code:I

    return v0
.end method
