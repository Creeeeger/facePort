.class public Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
.super Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
.source "ParsedProviderImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedProvider;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist authority:Ljava/lang/String;

.field private blacklist forceUriPermissions:Z

.field private blacklist grantUriPermissions:Z

.field private blacklist initOrder:I

.field private blacklist multiProcess:Z

.field private blacklist pathPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PathPermission;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist readPermission:Ljava/lang/String;

.field private blacklist syncable:Z

.field private blacklist uriPermissionPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist writePermission:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>(Landroid/os/Parcel;)V

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    sget-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    sget-object v0, Landroid/content/pm/PathPermission;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/pm/pkg/component/ParsedProvider;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isSyncable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isGrantUriPermissions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isForceUriPermissions()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->isMultiProcess()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getInitOrder()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getUriPermissionPatterns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProvider;->getPathPermissions()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZZZILjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZI",
            "Ljava/util/List<",
            "Landroid/os/PatternMatcher;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/PathPermission;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;-><init>()V

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    nop

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    iput-object p3, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    iput-boolean p6, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    iput-boolean p7, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    iput p8, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    iput-object p9, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p10, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public blacklist addPathPermission(Landroid/content/pm/PathPermission;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-object p0
.end method

.method public blacklist addUriPermissionPattern(Landroid/os/PatternMatcher;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/internal/util/CollectionUtils;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAuthority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getInitOrder()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    return v0
.end method

.method public blacklist getPathPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/PathPermission;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getReadPermission()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUriPermissionPatterns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getWritePermission()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isForceUriPermissions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    return v0
.end method

.method public blacklist isGrantUriPermissions()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    return v0
.end method

.method public blacklist isMultiProcess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    return v0
.end method

.method public blacklist isSyncable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    return v0
.end method

.method public blacklist setAuthority(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setForceUriPermissions(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    return-object p0
.end method

.method public blacklist setGrantUriPermissions(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    return-object p0
.end method

.method public blacklist setInitOrder(I)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    return-object p0
.end method

.method public blacklist setMultiProcess(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    return-object p0
.end method

.method public blacklist setReadPermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSyncable(Z)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    return-object p0
.end method

.method public blacklist setWritePermission(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Provider{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->syncable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->writePermission:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->grantUriPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->forceUriPermissions:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->multiProcess:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->initOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->uriPermissionPatterns:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProviderImpl;->pathPermissions:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    return-void
.end method
