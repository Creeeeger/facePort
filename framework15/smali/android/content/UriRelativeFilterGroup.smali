.class public final Landroid/content/UriRelativeFilterGroup;
.super Ljava/lang/Object;
.source "UriRelativeFilterGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/UriRelativeFilterGroup$Action;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_ALLOW:I = 0x0

.field public static final whitelist ACTION_BLOCK:I = 0x1

.field private static final blacklist ALLOW_STR:Ljava/lang/String; = "allow"

.field private static final blacklist URI_RELATIVE_FILTER_GROUP_STR:Ljava/lang/String; = "uriRelativeFilterGroup"


# instance fields
.field private final blacklist mAction:I

.field private final blacklist mUriRelativeFilters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/UriRelativeFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    iput p1, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/UriRelativeFilterGroupParcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    iget v0, p1, Landroid/content/UriRelativeFilterGroupParcel;->action:I

    iput v0, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/content/UriRelativeFilterGroupParcel;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    new-instance v2, Landroid/content/UriRelativeFilter;

    iget-object v3, p1, Landroid/content/UriRelativeFilterGroupParcel;->filters:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriRelativeFilterParcel;

    invoke-direct {v2, v3}, Landroid/content/UriRelativeFilter;-><init>(Landroid/content/UriRelativeFilterParcel;)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    new-instance v3, Landroid/content/UriRelativeFilter;

    invoke-direct {v3, p1}, Landroid/content/UriRelativeFilter;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    const/4 v0, 0x0

    const-string v1, "allow"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    move v2, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "uriRelativeFilter"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Landroid/content/UriRelativeFilter;

    invoke-direct {v3, p1}, Landroid/content/UriRelativeFilter;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {p0, v3}, Landroid/content/UriRelativeFilterGroup;->addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown tag parsing IntentFilter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "IntentFilter"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static blacklist groupsToParcels(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroup;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroupParcel;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriRelativeFilterGroup;

    invoke-virtual {v2}, Landroid/content/UriRelativeFilterGroup;->toParcel()Landroid/content/UriRelativeFilterGroupParcel;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static blacklist matchGroupsToUri(Ljava/util/List;Landroid/net/Uri;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroup;",
            ">;",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UriRelativeFilterGroup;

    invoke-virtual {v1, p1}, Landroid/content/UriRelativeFilterGroup;->matchData(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/UriRelativeFilterGroup;

    invoke-virtual {v1}, Landroid/content/UriRelativeFilterGroup;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public static blacklist parcelsToGroups(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroupParcel;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/UriRelativeFilterGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Landroid/content/UriRelativeFilterGroup;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriRelativeFilterGroupParcel;

    invoke-direct {v2, v3}, Landroid/content/UriRelativeFilterGroup;-><init>(Landroid/content/UriRelativeFilterGroupParcel;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public whitelist addUriRelativeFilter(Landroid/content/UriRelativeFilter;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10e00000001L

    iget v4, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriRelativeFilter;

    const-wide v4, 0x20b00000002L

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/UriRelativeFilter;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/content/UriRelativeFilterGroup;

    iget v2, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    iget v3, v1, Landroid/content/UriRelativeFilterGroup;->mAction:I

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    iget-object v2, v1, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method public whitelist getAction()I
    .locals 1

    iget v0, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    return v0
.end method

.method public whitelist getUriRelativeFilters()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/content/UriRelativeFilter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    const/4 v0, 0x0

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public whitelist matchData(Landroid/net/Uri;)Z
    .locals 4

    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriRelativeFilter;

    invoke-virtual {v2, p1}, Landroid/content/UriRelativeFilter;->matchData(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist toParcel()Landroid/content/UriRelativeFilterGroupParcel;
    .locals 5

    new-instance v0, Landroid/content/UriRelativeFilterGroupParcel;

    invoke-direct {v0}, Landroid/content/UriRelativeFilterGroupParcel;-><init>()V

    iget v1, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    iput v1, v0, Landroid/content/UriRelativeFilterGroupParcel;->action:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/content/UriRelativeFilterGroupParcel;->filters:Ljava/util/List;

    iget-object v1, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriRelativeFilter;

    iget-object v3, v0, Landroid/content/UriRelativeFilterGroupParcel;->filters:Ljava/util/List;

    invoke-virtual {v2}, Landroid/content/UriRelativeFilter;->toParcel()Landroid/content/UriRelativeFilterParcel;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UriRelativeFilterGroup { allow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uri_filters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/UriRelativeFilter;

    invoke-virtual {v2, p1, p2}, Landroid/content/UriRelativeFilter;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method

.method public blacklist writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "uriRelativeFilterGroup"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p0, Landroid/content/UriRelativeFilterGroup;->mAction:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "allow"

    invoke-interface {p1, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Landroid/content/UriRelativeFilterGroup;->mUriRelativeFilters:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriRelativeFilter;

    invoke-virtual {v3, p1}, Landroid/content/UriRelativeFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
