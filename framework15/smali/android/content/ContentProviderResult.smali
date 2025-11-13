.class public Landroid/content/ContentProviderResult;
.super Ljava/lang/Object;
.source "ContentProviderResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/ContentProviderResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final whitelist count:Ljava/lang/Integer;

.field public final whitelist exception:Ljava/lang/Throwable;

.field public final whitelist extras:Landroid/os/Bundle;

.field public final whitelist uri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/ContentProviderResult$1;

    invoke-direct {v0}, Landroid/content/ContentProviderResult$1;-><init>()V

    sput-object v0, Landroid/content/ContentProviderResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1, v0, v0}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;Ljava/lang/Integer;Landroid/os/Bundle;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/ContentProviderResult;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    iget-object v0, p1, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    iget-object v0, p1, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    iget-object v0, p1, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    iput-object v0, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/Uri;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, v1}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;Ljava/lang/Integer;Landroid/os/Bundle;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/Integer;Landroid/os/Bundle;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    iput-object p2, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    iput-object p3, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    iput-object p4, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0, v1}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;Ljava/lang/Integer;Landroid/os/Bundle;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    goto :goto_2

    :cond_2
    iput-object v1, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    :goto_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/os/ParcelableException;->readFromParcel(Landroid/os/Parcel;)Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    goto :goto_3

    :cond_3
    iput-object v1, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    :goto_3
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, p1}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;Ljava/lang/Integer;Landroid/os/Bundle;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentProviderResult("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    const/16 v2, 0x20

    if-eqz v1, :cond_0

    const-string/jumbo v1, "uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v1, "count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_3

    const-string v1, "exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderResult;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    iget-object v0, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentProviderResult;->exception:Ljava/lang/Throwable;

    invoke-static {p1, v0}, Landroid/os/ParcelableException;->writeToParcel(Landroid/os/Parcel;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return-void
.end method
