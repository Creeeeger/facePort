.class public final Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
.super Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
.source "UpdatableDriverProto.java"

# interfaces
.implements Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto$Denylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;",
        ">;",
        "Landroid/updatabledriver/UpdatableDriverProto$DenylistOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-static {}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$000()Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/updatabledriver/UpdatableDriverProto$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addAllPackageNames(Ljava/lang/Iterable;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$500(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public blacklist addPackageNames(Ljava/lang/String;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$400(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist addPackageNamesBytes(Lcom/android/framework/protobuf/ByteString;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$700(Landroid/updatabledriver/UpdatableDriverProto$Denylist;Lcom/android/framework/protobuf/ByteString;)V

    return-object p0
.end method

.method public blacklist clearPackageNames()Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$600(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-object p0
.end method

.method public blacklist clearVersionCode()Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$200(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-object p0
.end method

.method public blacklist getPackageNames(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNames(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;
    .locals 1

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesBytes(I)Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPackageNamesCount()I
    .locals 1

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesCount()I

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

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getPackageNamesList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVersionCode()J
    .locals 2

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->getVersionCode()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist hasVersionCode()Z
    .locals 1

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-virtual {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->hasVersionCode()Z

    move-result v0

    return v0
.end method

.method public blacklist setPackageNames(ILjava/lang/String;)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$300(Landroid/updatabledriver/UpdatableDriverProto$Denylist;ILjava/lang/String;)V

    return-object p0
.end method

.method public blacklist setVersionCode(J)Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist;->access$100(Landroid/updatabledriver/UpdatableDriverProto$Denylist;J)V

    return-object p0
.end method
