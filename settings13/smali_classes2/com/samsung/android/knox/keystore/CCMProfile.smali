.class public Lcom/samsung/android/knox/keystore/CCMProfile;
.super Ljava/lang/Object;
.source "CCMProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/keystore/CCMProfile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

.field public accessControlPassword:Ljava/lang/String;

.field public packageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tuiPinLength:I

.field public tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

.field public whiteListAllPackages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 213
    new-instance v0, Lcom/samsung/android/knox/keystore/CCMProfile$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/keystore/CCMProfile$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/keystore/CCMProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    const/4 v1, 0x0

    .line 129
    iput-boolean v1, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlPassword:Ljava/lang/String;

    const/4 v2, 0x6

    .line 145
    iput v2, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiPinLength:I

    .line 153
    iput-object v1, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    .line 174
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    sget-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    const/4 v0, 0x0

    .line 137
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlPassword:Ljava/lang/String;

    const/4 v1, 0x6

    .line 145
    iput v1, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiPinLength:I

    .line 153
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    .line 188
    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/keystore/CCMProfile;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/keystore/CCMProfile-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/CCMProfile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 196
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-nez v0, :cond_0

    .line 198
    sget-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 200
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlPassword:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    .line 202
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/keystore/TUIProperty;

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    .line 206
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlMethod:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->accessControlPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-boolean v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->whiteListAllPackages:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->packageList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 167
    iget-object p0, p0, Lcom/samsung/android/knox/keystore/CCMProfile;->tuiProperty:Lcom/samsung/android/knox/keystore/TUIProperty;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
