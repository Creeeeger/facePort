.class public Landroid/app/RemoteInputHistoryItem;
.super Ljava/lang/Object;
.source "RemoteInputHistoryItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/RemoteInputHistoryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mMimeType:Ljava/lang/String;

.field private blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mUri:Landroid/net/Uri;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/RemoteInputHistoryItem$1;

    invoke-direct {v0}, Landroid/app/RemoteInputHistoryItem$1;-><init>()V

    sput-object v0, Landroid/app/RemoteInputHistoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteInputHistoryItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteInputHistoryItem;->mMimeType:Ljava/lang/String;

    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/RemoteInputHistoryItem;->mUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteInputHistoryItem;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/RemoteInputHistoryItem;->mMimeType:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/RemoteInputHistoryItem;->mUri:Landroid/net/Uri;

    invoke-static {p3}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/RemoteInputHistoryItem;->mText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/RemoteInputHistoryItem;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/RemoteInputHistoryItem;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/app/RemoteInputHistoryItem;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/RemoteInputHistoryItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/RemoteInputHistoryItem;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/RemoteInputHistoryItem;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
