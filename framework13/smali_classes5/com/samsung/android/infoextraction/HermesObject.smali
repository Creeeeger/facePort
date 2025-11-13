.class public Lcom/samsung/android/infoextraction/HermesObject;
.super Ljava/lang/Object;
.source "HermesObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/infoextraction/HermesObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist obj:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/samsung/android/infoextraction/HermesObject$1;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/HermesObject$1;-><init>()V

    sput-object v0, Lcom/samsung/android/infoextraction/HermesObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/HermesObject;->obj:Ljava/lang/Object;

    .line 14
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getObject()Ljava/lang/Object;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/infoextraction/HermesObject;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    const-class v0, Lcom/samsung/android/infoextraction/HermesObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/HermesObject;->obj:Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public blacklist setObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/samsung/android/infoextraction/HermesObject;->obj:Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 38
    iget-object v0, p0, Lcom/samsung/android/infoextraction/HermesObject;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/infoextraction/HermesObject;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 39
    return-void
.end method
