.class public final Lcom/android/app/viewcapture/data/ViewNode;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# static fields
.field public static final ALPHA_FIELD_NUMBER:I = 0xf

.field public static final CHILDREN_FIELD_NUMBER:I = 0x3

.field public static final CLASSNAME_INDEX_FIELD_NUMBER:I = 0x1

.field public static final CLIPCHILDREN_FIELD_NUMBER:I = 0x11

.field private static final DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

.field public static final ELEVATION_FIELD_NUMBER:I = 0x13

.field public static final HASHCODE_FIELD_NUMBER:I = 0x2

.field public static final HEIGHT_FIELD_NUMBER:I = 0x8

.field public static final ID_FIELD_NUMBER:I = 0x4

.field public static final LEFT_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser;"
        }
    .end annotation
.end field

.field public static final SCALEX_FIELD_NUMBER:I = 0xd

.field public static final SCALEY_FIELD_NUMBER:I = 0xe

.field public static final SCROLLX_FIELD_NUMBER:I = 0x9

.field public static final SCROLLY_FIELD_NUMBER:I = 0xa

.field public static final TOP_FIELD_NUMBER:I = 0x6

.field public static final TRANSLATIONX_FIELD_NUMBER:I = 0xb

.field public static final TRANSLATIONY_FIELD_NUMBER:I = 0xc

.field public static final VISIBILITY_FIELD_NUMBER:I = 0x12

.field public static final WIDTH_FIELD_NUMBER:I = 0x7

.field public static final WILLNOTDRAW_FIELD_NUMBER:I = 0x10


# instance fields
.field private alpha_:F

.field private bitField0_:I

.field private children_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList;"
        }
    .end annotation
.end field

.field private classnameIndex_:I

.field private clipChildren_:Z

.field private elevation_:F

.field private hashcode_:I

.field private height_:I

.field private id_:Ljava/lang/String;

.field private left_:I

.field private scaleX_:F

.field private scaleY_:F

.field private scrollX_:I

.field private scrollY_:I

.field private top_:I

.field private translationX_:F

.field private translationY_:F

.field private visibility_:I

.field private width_:I

.field private willNotDraw_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-direct {v0}, Lcom/android/app/viewcapture/data/ViewNode;-><init>()V

    sput-object v0, Lcom/android/app/viewcapture/data/ViewNode;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

    const-class v1, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    sget-object v0, Lcom/google/protobuf/ProtobufArrayList;->EMPTY_LIST:Lcom/google/protobuf/ProtobufArrayList;

    iput-object v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->children_:Lcom/google/protobuf/Internal$ProtobufList;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->id_:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->scaleX_:F

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->scaleY_:F

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->alpha_:F

    return-void
.end method

.method public static synthetic access$000()Lcom/android/app/viewcapture/data/ViewNode;
    .locals 1

    sget-object v0, Lcom/android/app/viewcapture/data/ViewNode;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

    return-object v0
.end method

.method public static access$100(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->classnameIndex_:I

    return-void
.end method

.method public static access$1100(Lcom/android/app/viewcapture/data/ViewNode;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput-object p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->id_:Ljava/lang/String;

    return-void
.end method

.method public static access$1400(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->left_:I

    return-void
.end method

.method public static access$1600(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->top_:I

    return-void
.end method

.method public static access$1800(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->width_:I

    return-void
.end method

.method public static access$2000(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->height_:I

    return-void
.end method

.method public static access$2200(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->scrollX_:I

    return-void
.end method

.method public static access$2400(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->scrollY_:I

    return-void
.end method

.method public static access$2600(Lcom/android/app/viewcapture/data/ViewNode;F)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->translationX_:F

    return-void
.end method

.method public static access$2800(Lcom/android/app/viewcapture/data/ViewNode;F)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->translationY_:F

    return-void
.end method

.method public static access$300(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->hashcode_:I

    return-void
.end method

.method public static access$3000(Lcom/android/app/viewcapture/data/ViewNode;F)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->scaleX_:F

    return-void
.end method

.method public static access$3200(Lcom/android/app/viewcapture/data/ViewNode;F)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->scaleY_:F

    return-void
.end method

.method public static access$3400(Lcom/android/app/viewcapture/data/ViewNode;F)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->alpha_:F

    return-void
.end method

.method public static access$3600(Lcom/android/app/viewcapture/data/ViewNode;Z)V
    .locals 1

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput-boolean p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->willNotDraw_:Z

    return-void
.end method

.method public static access$3800(Lcom/android/app/viewcapture/data/ViewNode;Z)V
    .locals 2

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput-boolean p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->clipChildren_:Z

    return-void
.end method

.method public static access$4000(Lcom/android/app/viewcapture/data/ViewNode;I)V
    .locals 2

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->visibility_:I

    return-void
.end method

.method public static access$4200(Lcom/android/app/viewcapture/data/ViewNode;F)V
    .locals 2

    iget v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->bitField0_:I

    iput p1, p0, Lcom/android/app/viewcapture/data/ViewNode;->elevation_:F

    return-void
.end method

.method public static access$600(Lcom/android/app/viewcapture/data/ViewNode;Lcom/android/app/viewcapture/data/ViewNode;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->children_:Lcom/google/protobuf/Internal$ProtobufList;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/AbstractProtobufList;

    iget-boolean v1, v1, Lcom/google/protobuf/AbstractProtobufList;->isMutable:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/app/viewcapture/data/ViewNode;->children_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    iget-object p0, p0, Lcom/android/app/viewcapture/data/ViewNode;->children_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static newBuilder()Lcom/android/app/viewcapture/data/ViewNode$Builder;
    .locals 1

    sget-object v0, Lcom/android/app/viewcapture/data/ViewNode;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/app/viewcapture/data/ViewNode$Builder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 22

    sget-object v0, Lcom/android/app/viewcapture/data/ViewNode$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    return-object v1

    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/android/app/viewcapture/data/ViewNode;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/app/viewcapture/data/ViewNode;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/app/viewcapture/data/ViewNode;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/android/app/viewcapture/data/ViewNode;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v0, Lcom/android/app/viewcapture/data/ViewNode;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/app/viewcapture/data/ViewNode;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

    return-object v0

    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "classnameIndex_"

    const-string v3, "hashcode_"

    const-string v4, "children_"

    const-class v5, Lcom/android/app/viewcapture/data/ViewNode;

    const-string v6, "id_"

    const-string v7, "left_"

    const-string/jumbo v8, "top_"

    const-string/jumbo v9, "width_"

    const-string v10, "height_"

    const-string v11, "scrollX_"

    const-string v12, "scrollY_"

    const-string/jumbo v13, "translationX_"

    const-string/jumbo v14, "translationY_"

    const-string v15, "scaleX_"

    const-string v16, "scaleY_"

    const-string v17, "alpha_"

    const-string/jumbo v18, "willNotDraw_"

    const-string v19, "clipChildren_"

    const-string/jumbo v20, "visibility_"

    const-string v21, "elevation_"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u001b\u0004\u1008\u0002\u0005\u1004\u0003\u0006\u1004\u0004\u0007\u1004\u0005\u0008\u1004\u0006\t\u1004\u0007\n\u1004\u0008\u000b\u1001\t\u000c\u1001\n\r\u1001\u000b\u000e\u1001\u000c\u000f\u1001\r\u0010\u1007\u000e\u0011\u1007\u000f\u0012\u1004\u0010\u0013\u1001\u0011"

    sget-object v2, Lcom/android/app/viewcapture/data/ViewNode;->DEFAULT_INSTANCE:Lcom/android/app/viewcapture/data/ViewNode;

    new-instance v3, Lcom/google/protobuf/RawMessageInfo;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/protobuf/RawMessageInfo;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :pswitch_5
    new-instance v0, Lcom/android/app/viewcapture/data/ViewNode$Builder;

    invoke-direct {v0, v1}, Lcom/android/app/viewcapture/data/ViewNode$Builder;-><init>(Lcom/android/app/viewcapture/data/ViewNode$1;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/android/app/viewcapture/data/ViewNode;

    invoke-direct {v0}, Lcom/android/app/viewcapture/data/ViewNode;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
