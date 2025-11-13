.class final Lcom/android/framework/protobuf/RawMessageInfo;
.super Ljava/lang/Object;
.source "RawMessageInfo.java"

# interfaces
.implements Lcom/android/framework/protobuf/MessageInfo;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# instance fields
.field private final blacklist defaultInstance:Lcom/android/framework/protobuf/MessageLite;

.field private final blacklist flags:I

.field private final blacklist info:Ljava/lang/String;

.field private final blacklist objects:[Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/framework/protobuf/RawMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    iput-object p2, p0, Lcom/android/framework/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/framework/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v2, 0xd800

    if-ge v0, v2, :cond_0

    iput v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    goto :goto_1

    :cond_0
    and-int/lit16 v3, v0, 0x1fff

    const/16 v4, 0xd

    :goto_0
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    if-lt v1, v2, :cond_1

    and-int/lit16 v1, v0, 0x1fff

    shl-int/2addr v1, v4

    or-int/2addr v3, v1

    add-int/lit8 v4, v4, 0xd

    move v1, v5

    goto :goto_0

    :cond_1
    shl-int v1, v0, v4

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    move v1, v5

    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    return-object v0
.end method

.method blacklist getObjects()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getStringInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;
    .locals 2

    iget v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO2:Lcom/android/framework/protobuf/ProtoSyntax;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO3:Lcom/android/framework/protobuf/ProtoSyntax;

    :goto_0
    return-object v0
.end method

.method public blacklist isMessageSetWireFormat()Z
    .locals 2

    iget v0, p0, Lcom/android/framework/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
