.class public final Landroid/updatabledriver/UpdatableDriverProto$Denylist;
.super Lcom/android/framework/protobuf/GeneratedMessageLite;
.source "UpdatableDriverProto.java"

# interfaces
.implements Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Denylist"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite<",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;",
        ">;",
        "Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

.field public static final blacklist PACKAGE_NAMES_FIELD_NUMBER:I = 0x2

.field private static volatile blacklist PARSER:Lcom/android/framework/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist VERSION_CODE_FIELD_NUMBER:I = 0x1


# instance fields
.field private blacklist bitField0_:I

.field private blacklist packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/framework/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist versionCode_:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-direct {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;-><init>()V

    sput-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    const-class v1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v1, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;-><init>()V

    invoke-static {}, Lcom/android/framework/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic blacklist access$000()Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method static synthetic blacklist access$100(Landroid/updatabledriver/UpdatableDriverProto$Denylist;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->setVersionCode(J)V

    return-void
.end method

.method static synthetic blacklist access$200(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .locals 0

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->clearVersionCode()V

    return-void
.end method

.method static synthetic blacklist access$300(Landroid/updatabledriver/UpdatableDriverProto$Denylist;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->setPackageNames(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$400(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addPackageNames(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$500(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addAllPackageNames(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic blacklist access$600(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V
    .locals 0

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->clearPackageNames()V

    return-void
.end method

.method static synthetic blacklist access$700(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Lcom/android/framework/protobuf/ByteString;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)V

    return-void
.end method

.method private blacklist addAllPackageNames(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->ensurePackageNamesIsMutable()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private blacklist addPackageNames(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->ensurePackageNamesIsMutable()V

    iget-object v1, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)V
    .locals 2

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->ensurePackageNamesIsMutable()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/android/framework/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist clearPackageNames()V
    .locals 1

    invoke-static {}, Lcom/android/framework/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private blacklist clearVersionCode()V
    .locals 2

    iget v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->bitField0_:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->versionCode_:J

    return-void
.end method

.method private blacklist ensurePackageNamesIsMutable()V
    .locals 2

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    nop

    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/framework/protobuf/Internal$ProtobufList;)Lcom/android/framework/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static blacklist getDefaultInstance()Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist newBuilder()Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .locals 1

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->createBuilder()Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;

    return-object v0
.end method

.method public static blacklist newBuilder(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .locals 1

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0, p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->createBuilder(Lcom/android/framework/protobuf/GeneratedMessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->parseDelimitedFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/ByteString;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/ByteString;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/CodedInputStream;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist parseFrom(Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Lcom/android/framework/protobuf/CodedInputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[B)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist parseFrom([BLcom/android/framework/protobuf/ExtensionRegistryLite;)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/framework/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p0, p1}, Lcom/android/framework/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/framework/protobuf/GeneratedMessageLite;[BLcom/android/framework/protobuf/ExtensionRegistryLite;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0
.end method

.method public static blacklist parser()Lcom/android/framework/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Parser<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getParserForType()Lcom/android/framework/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setPackageNames(ILjava/lang/String;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->ensurePackageNamesIsMutable()V

    iget-object v1, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1, p2}, Lcom/android/framework/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist setVersionCode(J)V
    .locals 1

    iget v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->bitField0_:I

    iput-wide p1, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->versionCode_:J

    return-void
.end method


# virtual methods
.method protected final blacklist dynamicMethod(Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

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
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->PARSER:Lcom/android/framework/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->PARSER:Lcom/android/framework/protobuf/Parser;

    move-object v0, v2

    if-nez v0, :cond_0

    new-instance v2, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-direct {v2, v3}, Lcom/android/framework/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    sput-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->PARSER:Lcom/android/framework/protobuf/Parser;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_0
    return-object v0

    :pswitch_3
    sget-object v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    return-object v0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string/jumbo v1, "versionCode_"

    const-string/jumbo v2, "packageNames_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1002\u0000\u0002\u001a"

    sget-object v2, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->DEFAULT_INSTANCE:Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v2, v1, v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->newMessageInfo(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    :pswitch_5
    new-instance v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;

    invoke-direct {v0, v1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;-><init>(Landroid/updatabledriver/UpdatableDriverProto$1;)V

    return-object v0

    :pswitch_6
    new-instance v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-direct {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;-><init>()V

    return-object v0

    nop

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

.method public blacklist getPackageNames(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/framework/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackageNamesCount()I
    .locals 1

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/framework/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getPackageNamesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->packageNames_:Lcom/android/framework/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public blacklist getVersionCode()J
    .locals 2

    iget-wide v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->versionCode_:J

    return-wide v0
.end method

.method public blacklist hasVersionCode()Z
    .locals 2

    iget v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
