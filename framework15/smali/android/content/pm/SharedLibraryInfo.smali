.class public final Landroid/content/pm/SharedLibraryInfo;
.super Ljava/lang/Object;
.source "SharedLibraryInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SharedLibraryInfo$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_BUILTIN:I = 0x0

.field public static final whitelist TYPE_DYNAMIC:I = 0x1

.field public static final whitelist TYPE_SDK_PACKAGE:I = 0x3

.field public static final whitelist TYPE_STATIC:I = 0x2

.field public static final whitelist VERSION_UNDEFINED:I = -0x1


# instance fields
.field private final blacklist mCodePaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDeclaringPackage:Landroid/content/pm/VersionedPackage;

.field private blacklist mDependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mDependentPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsNative:Z

.field private final greylist-max-o mName:Ljava/lang/String;

.field private final blacklist mOptionalDependentPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPath:Ljava/lang/String;

.field private final greylist-max-o mType:I

.field private final greylist-max-o mVersion:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/SharedLibraryInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SharedLibraryInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const-class v0, Landroid/content/pm/VersionedPackage;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/VersionedPackage;

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    const-class v0, Landroid/content/pm/VersionedPackage;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    sget-object v0, Landroid/content/pm/SharedLibraryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/content/pm/VersionedPackage;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/content/pm/VersionedPackage;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/SharedLibraryInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/SharedLibraryInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Landroid/content/pm/VersionedPackage;",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    iput-object p4, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    iput-wide p5, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    iput p7, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    iput-object p8, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    iput-object p9, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    iput-object p10, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    iput-boolean p11, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;JILandroid/content/pm/VersionedPackage;Ljava/util/List;ZLandroid/util/Pair;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JI",
            "Landroid/content/pm/VersionedPackage;",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;Z",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    iput-object v2, v0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    move-object/from16 v3, p2

    iput-object v3, v0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    move-object/from16 v4, p3

    iput-object v4, v0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    move-object/from16 v5, p4

    iput-object v5, v0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    move-wide/from16 v6, p5

    iput-wide v6, v0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    move/from16 v8, p7

    iput v8, v0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    move-object/from16 v9, p8

    iput-object v9, v0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    move-object/from16 v10, p9

    iput-object v10, v0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    move/from16 v11, p10

    iput-boolean v11, v0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    iget-object v12, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/util/List;

    iput-object v12, v0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    const/4 v14, 0x0

    iget v15, v0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const/4 v1, 0x3

    if-ne v15, v1, :cond_2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/content/pm/Flags;->sdkLibIndependence()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v12, :cond_2

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ne v1, v15, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v15

    if-ge v1, v15, :cond_2

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/VersionedPackage;

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Boolean;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-eqz v16, :cond_1

    if-nez v14, :cond_0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v14, v16

    :cond_0
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iput-object v14, v0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    return-void
.end method

.method private static greylist-max-o typeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v0, "unknown"

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "sdk"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "static"

    return-object v0

    :pswitch_2
    const-string v0, "dynamic"

    return-object v0

    :pswitch_3
    const-string v0, "builtin"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist addDependency(Landroid/content/pm/SharedLibraryInfo;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist clearDependencies()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllCodePaths()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDeclaringPackage()Landroid/content/pm/VersionedPackage;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    return-object v0
.end method

.method public blacklist getDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/SharedLibraryInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getDependentPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getLongVersion()J
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    return-wide v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOptionalDependentPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .locals 1

    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    return v0
.end method

.method public whitelist getVersion()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    :goto_0
    long-to-int v0, v0

    return v0
.end method

.method public greylist isBuiltin()Z
    .locals 1

    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist isDynamic()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist isNative()Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    return v0
.end method

.method public blacklist isSdk()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist isStatic()Z
    .locals 2

    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharedLibraryInfo{name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    invoke-static {v1}, Landroid/content/pm/SharedLibraryInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/SharedLibraryInfo;->getDependentPackages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, " has dependents"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
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

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    iget-object v1, p0, Landroid/content/pm/SharedLibraryInfo;->mCodePaths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/content/pm/SharedLibraryInfo;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/content/pm/SharedLibraryInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDeclaringPackage:Landroid/content/pm/VersionedPackage;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependentPackages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mDependencies:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-boolean v0, p0, Landroid/content/pm/SharedLibraryInfo;->mIsNative:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/content/pm/SharedLibraryInfo;->mOptionalDependentPackages:Ljava/util/List;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    return-void
.end method
