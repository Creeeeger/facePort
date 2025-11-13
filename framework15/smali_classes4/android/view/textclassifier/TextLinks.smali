.class public final Landroid/view/textclassifier/TextLinks;
.super Ljava/lang/Object;
.source "TextLinks.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextLinks$TextLink;,
        Landroid/view/textclassifier/TextLinks$Builder;,
        Landroid/view/textclassifier/TextLinks$TextLinkSpan;,
        Landroid/view/textclassifier/TextLinks$Request;,
        Landroid/view/textclassifier/TextLinks$ApplyStrategy;,
        Landroid/view/textclassifier/TextLinks$Status;
    }
.end annotation


# static fields
.field public static final whitelist APPLY_STRATEGY_IGNORE:I = 0x0

.field public static final whitelist APPLY_STRATEGY_REPLACE:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextLinks;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist STATUS_DIFFERENT_TEXT:I = 0x3

.field public static final whitelist STATUS_LINKS_APPLIED:I = 0x0

.field public static final whitelist STATUS_NO_LINKS_APPLIED:I = 0x2

.field public static final whitelist STATUS_NO_LINKS_FOUND:I = 0x1

.field public static final whitelist STATUS_UNSUPPORTED_CHARACTER:I = 0x4


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final greylist-max-o mFullText:Ljava/lang/String;

.field private final greylist-max-o mLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextLinks$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLinks$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextLinks;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks;->mFullText:Ljava/lang/String;

    sget-object v0, Landroid/view/textclassifier/TextLinks$TextLink;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks;->mLinks:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextLinks-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextLinks;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextLinks;->mFullText:Ljava/lang/String;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextLinks;->mLinks:Ljava/util/List;

    iput-object p3, p0, Landroid/view/textclassifier/TextLinks;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;Landroid/view/textclassifier/TextLinks-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/textclassifier/TextLinks;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public whitelist apply(Landroid/text/Spannable;ILjava/util/function/Function;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Spannable;",
            "I",
            "Ljava/util/function/Function<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            "Landroid/view/textclassifier/TextLinks$TextLinkSpan;",
            ">;)I"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/view/textclassifier/TextLinksParams$Builder;

    invoke-direct {v0}, Landroid/view/textclassifier/TextLinksParams$Builder;-><init>()V

    invoke-virtual {v0, p2}, Landroid/view/textclassifier/TextLinksParams$Builder;->setApplyStrategy(I)Landroid/view/textclassifier/TextLinksParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/textclassifier/TextLinksParams$Builder;->setSpanFactory(Ljava/util/function/Function;)Landroid/view/textclassifier/TextLinksParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextLinksParams$Builder;->build()Landroid/view/textclassifier/TextLinksParams;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/view/textclassifier/TextLinksParams;->apply(Landroid/text/Spannable;Landroid/view/textclassifier/TextLinks;)I

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getLinks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/view/textclassifier/TextLinks$TextLink;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks;->mLinks:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks;->mFullText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Landroid/view/textclassifier/TextLinks;->mFullText:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextLinks;->mLinks:Ljava/util/List;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TextLinks{fullText=%s, links=%s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks;->mFullText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks;->mLinks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/view/textclassifier/TextLinks;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
