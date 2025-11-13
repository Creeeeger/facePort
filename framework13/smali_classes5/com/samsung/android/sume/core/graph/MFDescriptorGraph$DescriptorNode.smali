.class Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;
.super Ljava/lang/Object;
.source "MFDescriptorGraph.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/graph/MFDescriptorGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DescriptorNode"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist channelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

.field blacklist evaluatorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/sume/core/evaluate/Evaluator;",
            ">;"
        }
    .end annotation
.end field

.field blacklist id:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 210
    new-instance v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(ILcom/samsung/android/sume/core/descriptor/MFDescriptor;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "descriptor"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->children:Ljava/util/List;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->evaluatorMap:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->channelMap:Ljava/util/Map;

    .line 177
    iput p1, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->id:I

    .line 178
    iput-object p2, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 179
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->children:Ljava/util/List;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->evaluatorMap:Ljava/util/Map;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->channelMap:Ljava/util/Map;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->id:I

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->children:Ljava/util/List;

    .line 197
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->evaluatorMap:Ljava/util/Map;

    const-class v1, Lcom/samsung/android/sume/core/evaluate/Equal;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->channelMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 199
    return-void
.end method


# virtual methods
.method blacklist addNode(Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;Lcom/samsung/android/sume/core/evaluate/Evaluator;I)V
    .locals 3
    .param p1, "childNode"    # Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;
    .param p2, "evaluator"    # Lcom/samsung/android/sume/core/evaluate/Evaluator;
    .param p3, "channelType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "childNode",
            "evaluator",
            "channelType"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->children:Ljava/util/List;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    if-eqz p2, :cond_0

    .line 188
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->evaluatorMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    if-eqz p3, :cond_1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->channelMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_1
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method blacklist getId()I
    .locals 1

    .line 182
    iget v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->id:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 203
    iget v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->descriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 205
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->evaluatorMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 207
    iget-object v0, p0, Lcom/samsung/android/sume/core/graph/MFDescriptorGraph$DescriptorNode;->channelMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 208
    return-void
.end method
