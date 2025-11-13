.class public final Landroid/view/textclassifier/TextSelection;
.super Ljava/lang/Object;
.source "TextSelection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextSelection$Builder;,
        Landroid/view/textclassifier/TextSelection$Request;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextSelection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mEndIndex:I

.field private final greylist-max-o mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mId:Ljava/lang/String;

.field private final greylist-max-o mStartIndex:I

.field private final blacklist mTextClassification:Landroid/view/textclassifier/TextClassification;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextSelection$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextSelection$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextSelection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILjava/util/Map;Ljava/lang/String;Landroid/view/textclassifier/TextClassification;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/view/textclassifier/TextClassification;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/textclassifier/TextSelection;->mStartIndex:I

    iput p2, p0, Landroid/view/textclassifier/TextSelection;->mEndIndex:I

    new-instance v0, Landroid/view/textclassifier/EntityConfidence;

    invoke-direct {v0, p3}, Landroid/view/textclassifier/EntityConfidence;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    iput-object p4, p0, Landroid/view/textclassifier/TextSelection;->mId:Ljava/lang/String;

    iput-object p5, p0, Landroid/view/textclassifier/TextSelection;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    iput-object p6, p0, Landroid/view/textclassifier/TextSelection;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/util/Map;Ljava/lang/String;Landroid/view/textclassifier/TextClassification;Landroid/os/Bundle;Landroid/view/textclassifier/TextSelection-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/textclassifier/TextSelection;-><init>(IILjava/util/Map;Ljava/lang/String;Landroid/view/textclassifier/TextClassification;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextSelection;->mStartIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/textclassifier/TextSelection;->mEndIndex:I

    sget-object v0, Landroid/view/textclassifier/EntityConfidence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/EntityConfidence;

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection;->mExtras:Landroid/os/Bundle;

    const-class v0, Landroid/view/textclassifier/TextClassification;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/view/textclassifier/TextClassification;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassification;

    iput-object v0, p0, Landroid/view/textclassifier/TextSelection;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextSelection-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextSelection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getConfidenceScore(Ljava/lang/String;)F
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1}, Landroid/view/textclassifier/EntityConfidence;->getConfidenceScore(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public whitelist getEntity(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getEntityCount()I
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0}, Landroid/view/textclassifier/EntityConfidence;->getEntities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSelectionEndIndex()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextSelection;->mEndIndex:I

    return v0
.end method

.method public whitelist getSelectionStartIndex()I
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextSelection;->mStartIndex:I

    return v0
.end method

.method public whitelist getTextClassification()Landroid/view/textclassifier/TextClassification;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method public blacklist toBuilder()Landroid/view/textclassifier/TextSelection$Builder;
    .locals 3

    new-instance v0, Landroid/view/textclassifier/TextSelection$Builder;

    iget v1, p0, Landroid/view/textclassifier/TextSelection;->mStartIndex:I

    iget v2, p0, Landroid/view/textclassifier/TextSelection;->mEndIndex:I

    invoke-direct {v0, v1, v2}, Landroid/view/textclassifier/TextSelection$Builder;-><init>(II)V

    iget-object v1, p0, Landroid/view/textclassifier/TextSelection;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextSelection$Builder;->setId(Ljava/lang/String;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextSelection$Builder;->setEntityConfidence(Landroid/view/textclassifier/EntityConfidence;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextSelection;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextSelection$Builder;->setTextClassification(Landroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/textclassifier/TextSelection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/view/textclassifier/TextSelection$Builder;->setExtras(Landroid/os/Bundle;)Landroid/view/textclassifier/TextSelection$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Landroid/view/textclassifier/TextSelection;->mId:Ljava/lang/String;

    iget v2, p0, Landroid/view/textclassifier/TextSelection;->mStartIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/view/textclassifier/TextSelection;->mEndIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TextSelection {id=%s, startIndex=%d, endIndex=%d, entities=%s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/view/textclassifier/TextSelection;->mStartIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textclassifier/TextSelection;->mEndIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mEntityConfidence:Landroid/view/textclassifier/EntityConfidence;

    invoke-virtual {v0, p1, p2}, Landroid/view/textclassifier/EntityConfidence;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextSelection;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
