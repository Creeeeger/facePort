.class public abstract Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
.super Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
.source "MFDescriptorBase.java"

# interfaces
.implements Lcom/samsung/android/sume/core/descriptor/MFDescriptor;


# static fields
.field protected static blacklist FILTER_ID:I

.field protected static blacklist FILTER_TYPE:I

.field protected static blacklist PLUGIN_CLASS:I

.field protected static blacklist PLUGIN_CLASS_NAME:I

.field protected static blacklist PLUGIN_ID:I

.field protected static blacklist PLUGIN_INPUT_FORMAT:I

.field protected static blacklist PLUGIN_LOADING_TYPE:I

.field protected static blacklist PLUGIN_MEDIA_TYPE:I

.field protected static blacklist PLUGIN_OUTPUT_FORMAT:I

.field protected static blacklist PLUGIN_TARGET_FORMAT:I

.field protected static blacklist PLUGIN_VERSION:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x3e8

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_CLASS:I

    const/16 v0, 0x3e9

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_ID:I

    const/16 v0, 0x3ea

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_VERSION:I

    const/16 v0, 0x3eb

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_MEDIA_TYPE:I

    const/16 v0, 0x3ec

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_INPUT_FORMAT:I

    const/16 v0, 0x3ed

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_OUTPUT_FORMAT:I

    const/16 v0, 0x3ee

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_LOADING_TYPE:I

    const/16 v0, 0x3ef

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_CLASS_NAME:I

    const/16 v0, 0x3f0

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->PLUGIN_TARGET_FORMAT:I

    const/16 v0, 0x3f2

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->FILTER_ID:I

    const/16 v0, 0x3f3

    sput v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->FILTER_TYPE:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getFilterId()Ljava/lang/String;
    .locals 1

    sget v0, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->FILTER_ID:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getFilterType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->FILTER_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public blacklist getOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .locals 0

    return-object p0
.end method

.method public blacklist setFilterId(Ljava/lang/String;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->FILTER_ID:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist setFilterType(Ljava/lang/Class;)Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->getAll()Ljava/util/Map;

    move-result-object v0

    sget v1, Lcom/samsung/android/sume/core/descriptor/MFDescriptorBase;->FILTER_TYPE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist setOption(Lcom/samsung/android/sume/core/filter/MediaFilter$Option;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->copyTo(Lcom/samsung/android/sume/core/types/OptionBase;)V

    return-void
.end method
