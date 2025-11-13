.class public Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
.super Ljava/lang/Object;
.source "ParsedProcessImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedProcess;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist appClassNamesByPackage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist deniedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist gwpAsanMode:I

.field private blacklist memtagMode:I

.field private blacklist name:Ljava/lang/String;

.field private blacklist nativeHeapZeroInitialized:I

.field private blacklist useEmbeddedDex:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringSet;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    :cond_0
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    const-class v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    sget-object v4, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    invoke-interface {v4, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    const-class v8, Landroid/annotation/NonNull;

    iget-object v9, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v8, v10, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    const-class v8, Landroid/annotation/NonNull;

    iget-object v9, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    invoke-static {v8, v10, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v4, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    const-class v8, Landroid/annotation/NonNull;

    iget-object v9, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    invoke-static {v8, v10, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v5, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    const-class v8, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    iget v9, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    invoke-static {v8, v10, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput v6, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    const-class v8, Landroid/content/pm/ApplicationInfo$MemtagMode;

    iget v9, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    invoke-static {v8, v10, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput v7, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    const-class v8, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    iget v9, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    invoke-static {v8, v10, v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-boolean v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/pm/pkg/component/ParsedProcess;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getAppClassNamesByPackage()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getAppClassNamesByPackage()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    :goto_0
    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getGwpAsanMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getMemtagMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getNativeHeapZeroInitialized()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->isUseEmbeddedDex()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/Set;IIIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IIIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    nop

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    const-class v0, Landroid/annotation/NonNull;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p4, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    const-class v0, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    invoke-static {v0, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput p5, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    const-class v0, Landroid/content/pm/ApplicationInfo$MemtagMode;

    invoke-static {v0, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput p6, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    const-class v0, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    invoke-static {v0, v1, p6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-boolean p7, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method


# virtual methods
.method public blacklist addStateFrom(Lcom/android/internal/pm/pkg/component/ParsedProcess;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getGwpAsanMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getMemtagMode()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getNativeHeapZeroInitialized()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->isUseEmbeddedDex()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getAppClassNamesByPackage()Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppClassNamesByPackage()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public blacklist getDeniedPermissions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    return-object v0
.end method

.method public blacklist getGwpAsanMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    return v0
.end method

.method public blacklist getMemtagMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    return v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNativeHeapZeroInitialized()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    return v0
.end method

.method public blacklist isUseEmbeddedDex()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    return v0
.end method

.method public blacklist putAppClassNameForPackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setAppClassNamesByPackage(Landroid/util/ArrayMap;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public blacklist setDeniedPermissions(Ljava/util/Set;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public blacklist setGwpAsanMode(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .locals 3

    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    const-class v0, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-object p0
.end method

.method public blacklist setMemtagMode(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .locals 3

    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    const-class v0, Landroid/content/pm/ApplicationInfo$MemtagMode;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-object p0
.end method

.method public blacklist setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .locals 3

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public blacklist setNativeHeapZeroInitialized(I)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .locals 3

    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    const-class v0, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-object p0
.end method

.method public blacklist setUseEmbeddedDex(Z)Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->useEmbeddedDex:Z

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x40

    int-to-byte v0, v1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->appClassNamesByPackage:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    sget-object v1, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->deniedPermissions:Ljava/util/Set;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    iget v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->gwpAsanMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->memtagMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Lcom/android/internal/pm/pkg/component/ParsedProcessImpl;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
