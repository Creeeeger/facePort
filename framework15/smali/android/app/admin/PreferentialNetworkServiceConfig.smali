.class public final Landroid/app/admin/PreferentialNetworkServiceConfig;
.super Ljava/lang/Object;
.source "PreferentialNetworkServiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;,
        Landroid/app/admin/PreferentialNetworkServiceConfig$PreferentialNetworkPreferenceId;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/admin/PreferentialNetworkServiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "PreferentialNetworkServiceConfig"

.field public static final whitelist PREFERENTIAL_NETWORK_ID_1:I = 0x1

.field public static final whitelist PREFERENTIAL_NETWORK_ID_2:I = 0x2

.field public static final whitelist PREFERENTIAL_NETWORK_ID_3:I = 0x3

.field public static final whitelist PREFERENTIAL_NETWORK_ID_4:I = 0x4

.field public static final whitelist PREFERENTIAL_NETWORK_ID_5:I = 0x5

.field private static final blacklist TAG_ALLOW_FALLBACK_TO_DEFAULT_CONNECTION:Ljava/lang/String; = "allow_fallback_to_default_connection"

.field private static final blacklist TAG_BLOCK_NON_MATCHING_NETWORKS:Ljava/lang/String; = "block_non_matching_networks"

.field private static final blacklist TAG_CONFIG_ENABLED:Ljava/lang/String; = "preferential_network_service_config_enabled"

.field private static final blacklist TAG_EXCLUDED_UIDS:Ljava/lang/String; = "excluded_uids"

.field private static final blacklist TAG_INCLUDED_UIDS:Ljava/lang/String; = "included_uids"

.field private static final blacklist TAG_NETWORK_ID:Ljava/lang/String; = "preferential_network_service_network_id"

.field private static final blacklist TAG_PREFERENTIAL_NETWORK_SERVICE_CONFIG:Ljava/lang/String; = "preferential_network_service_config"

.field private static final blacklist TAG_UID:Ljava/lang/String; = "uid"


# instance fields
.field final blacklist mAllowFallbackToDefaultConnection:Z

.field final blacklist mExcludedUids:[I

.field final blacklist mIncludedUids:[I

.field final blacklist mIsEnabled:Z

.field final blacklist mNetworkId:I

.field final blacklist mShouldBlockNonMatchingNetworks:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v0

    sput-object v0, Landroid/app/admin/PreferentialNetworkServiceConfig;->DEFAULT:Landroid/app/admin/PreferentialNetworkServiceConfig;

    new-instance v0, Landroid/app/admin/PreferentialNetworkServiceConfig$1;

    invoke-direct {v0}, Landroid/app/admin/PreferentialNetworkServiceConfig$1;-><init>()V

    sput-object v0, Landroid/app/admin/PreferentialNetworkServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mShouldBlockNonMatchingNetworks:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/admin/PreferentialNetworkServiceConfig-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/admin/PreferentialNetworkServiceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(ZZZ[I[II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    iput-boolean p2, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    iput-boolean p3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mShouldBlockNonMatchingNetworks:Z

    iput-object p4, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    iput-object p5, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    iput p6, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(ZZZ[I[IILandroid/app/admin/PreferentialNetworkServiceConfig-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/app/admin/PreferentialNetworkServiceConfig;-><init>(ZZZ[I[II)V

    return-void
.end method

.method public static blacklist getPreferentialNetworkServiceConfig(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)Landroid/app/admin/PreferentialNetworkServiceConfig;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    move v3, v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_a

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_a

    :cond_1
    if-eq v3, v2, :cond_0

    const/4 v2, 0x4

    if-ne v3, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "preferential_network_service_config_enabled"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    const-string/jumbo v7, "value"

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    invoke-interface {p0, v8, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setEnabled(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v5, "preferential_network_service_network_id"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0, v8, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setNetworkId(I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    :cond_4
    goto :goto_1

    :cond_5
    const-string v5, "allow_fallback_to_default_connection"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {p0, v8, v7, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setFallbackToDefaultConnectionAllowed(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto :goto_1

    :cond_6
    const-string v4, "block_non_matching_networks"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p0, v8, v7, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setShouldBlockNonMatchingNetworks(Z)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto :goto_1

    :cond_7
    const-string v4, "included_uids"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "uid"

    if-eqz v4, :cond_8

    invoke-static {p0, v5}, Landroid/app/admin/PreferentialNetworkServiceConfig;->readStringListToIntArray(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setIncludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto :goto_1

    :cond_8
    const-string v4, "excluded_uids"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p0, v5}, Landroid/app/admin/PreferentialNetworkServiceConfig;->readStringListToIntArray(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[I

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->setExcludedUids([I)Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;

    goto :goto_1

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag under "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PreferentialNetworkServiceConfig"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$Builder;->build()Landroid/app/admin/PreferentialNetworkServiceConfig;

    move-result-object v2

    return-object v2
.end method

.method private blacklist intArrayToStringList([I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic blacklist lambda$readStringListToIntArray$0(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->clear()V

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    invoke-interface {p0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected tag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " but found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PreferentialNetworkServiceConfig"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_4
    return-void
.end method

.method private static blacklist readStringListToIntArray(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->readAttributeValues(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/app/admin/PreferentialNetworkServiceConfig$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v1

    return-object v1
.end method

.method private blacklist writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private blacklist writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "value"

    invoke-interface {p1, v0, v1, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method private blacklist writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/modules/utils/TypedXmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v3, "value"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1, v0, p3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    const-string/jumbo v0, "networkId="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(I)V

    const-string/jumbo v0, "isEnabled="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "allowFallbackToDefaultConnection="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "blockNonMatchingNetworks="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mShouldBlockNonMatchingNetworks:Z

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    const-string v0, "includedUids="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "excludedUids="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/admin/PreferentialNetworkServiceConfig;

    iget-boolean v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    iget-boolean v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    iget-boolean v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mShouldBlockNonMatchingNetworks:Z

    iget-boolean v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mShouldBlockNonMatchingNetworks:Z

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    iget v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    iget-object v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    iget-object v4, v2, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist getExcludedUids()[I
    .locals 1

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    return-object v0
.end method

.method public whitelist getIncludedUids()[I
    .locals 1

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    return-object v0
.end method

.method public whitelist getNetworkId()I
    .locals 1

    iget v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 7

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mShouldBlockNonMatchingNetworks:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    return v0
.end method

.method public whitelist isFallbackToDefaultConnectionAllowed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    return v0
.end method

.method public whitelist shouldBlockNonMatchingNetworks()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mShouldBlockNonMatchingNetworks:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferentialNetworkServiceConfig{mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mAllowFallbackToDefaultConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isFallbackToDefaultConnectionAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mBlockNonMatchingNetworks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->shouldBlockNonMatchingNetworks()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mIncludedUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mExcludedUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mNetworkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIsEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mAllowFallbackToDefaultConnection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mShouldBlockNonMatchingNetworks:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mIncludedUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/app/admin/PreferentialNetworkServiceConfig;->mExcludedUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method

.method public blacklist writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "preferential_network_service_config"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "preferential_network_service_config_enabled"

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isEnabled()Z

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v2, "preferential_network_service_network_id"

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getNetworkId()I

    move-result v3

    invoke-direct {p0, p1, v2, v3}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;I)V

    nop

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->isFallbackToDefaultConnectionAllowed()Z

    move-result v2

    const-string v3, "allow_fallback_to_default_connection"

    invoke-direct {p0, p1, v3, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    nop

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->shouldBlockNonMatchingNetworks()Z

    move-result v2

    const-string v3, "block_non_matching_networks"

    invoke-direct {p0, p1, v3, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValueToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Z)V

    nop

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getIncludedUids()[I

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->intArrayToStringList([I)Ljava/util/List;

    move-result-object v2

    const-string v3, "included_uids"

    const-string/jumbo v4, "uid"

    invoke-direct {p0, p1, v3, v4, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    nop

    invoke-virtual {p0}, Landroid/app/admin/PreferentialNetworkServiceConfig;->getExcludedUids()[I

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->intArrayToStringList([I)Ljava/util/List;

    move-result-object v2

    const-string v3, "excluded_uids"

    invoke-direct {p0, p1, v3, v4, v2}, Landroid/app/admin/PreferentialNetworkServiceConfig;->writeAttributeValuesToXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
