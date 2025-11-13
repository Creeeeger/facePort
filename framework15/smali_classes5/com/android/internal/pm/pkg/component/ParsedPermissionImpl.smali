.class public Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
.super Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
.source "ParsedPermissionImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedPermission;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field private blacklist backgroundPermission:Ljava/lang/String;

.field private blacklist group:Ljava/lang/String;

.field private blacklist knownCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

.field private blacklist protectionLevel:I

.field private blacklist requestRes:I

.field private blacklist tree:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    const-class v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;IIZLcom/android/internal/pm/pkg/component/ParsedPermissionGroup;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    iput p4, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    iput-boolean p5, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    iput-object p6, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    iput-object p7, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBackgroundPermission()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKnownCerts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    :goto_0
    return-object v0
.end method

.method public blacklist getParsedPermissionGroup()Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    return-object v0
.end method

.method public blacklist getProtectionLevel()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    return v0
.end method

.method public blacklist getRequestRes()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    return v0
.end method

.method public blacklist isTree()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    return v0
.end method

.method public blacklist setBackgroundPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setGroup(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    return-object p0
.end method

.method protected blacklist setKnownCert(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    return-void
.end method

.method public blacklist setKnownCerts(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    return-object p0
.end method

.method protected blacklist setKnownCerts([Ljava/lang/String;)V
    .locals 5

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setParsedPermissionGroup(Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    return-object p0
.end method

.method public blacklist setProtectionLevel(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    return-object p0
.end method

.method public blacklist setRequestRes(I)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    return-object p0
.end method

.method public blacklist setTree(Z)Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->backgroundPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->group:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->requestRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->protectionLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->tree:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->parsedPermissionGroup:Lcom/android/internal/pm/pkg/component/ParsedPermissionGroup;

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedPermissionImpl;->knownCerts:Ljava/util/Set;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    return-void
.end method
