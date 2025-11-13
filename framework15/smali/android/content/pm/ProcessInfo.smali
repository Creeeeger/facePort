.class public Landroid/content/pm/ProcessInfo;
.super Ljava/lang/Object;
.source "ProcessInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist deniedPermissions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist gwpAsanMode:I

.field public blacklist memtagMode:I

.field public blacklist name:Ljava/lang/String;

.field public blacklist nativeHeapZeroInitialized:I

.field public blacklist useEmbeddedDex:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    sget-object v0, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedStringArraySet;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    :cond_0
    new-instance v0, Landroid/content/pm/ProcessInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ProcessInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ProcessInfo;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    iput-object v0, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    iget v0, p1, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    iput v0, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    iget v0, p1, Landroid/content/pm/ProcessInfo;->memtagMode:I

    iput v0, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    iget v0, p1, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    iput v0, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    iget-boolean v0, p1, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    iput-boolean v0, p0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    invoke-interface {v3, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    iput-object v2, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v9, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    iput v4, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    const-class v7, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    iget v8, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    invoke-static {v7, v9, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput v5, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    const-class v7, Landroid/content/pm/ApplicationInfo$MemtagMode;

    iget v8, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-static {v7, v9, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput v6, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    const-class v7, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    iget v8, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    invoke-static {v7, v9, v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-boolean v1, p0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/util/ArraySet;IIIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;IIIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    iput p3, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    const-class v0, Landroid/content/pm/ApplicationInfo$GwpAsanMode;

    invoke-static {v0, v1, p3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput p4, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    const-class v0, Landroid/content/pm/ApplicationInfo$MemtagMode;

    invoke-static {v0, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput p5, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    const-class v0, Landroid/content/pm/ApplicationInfo$NativeHeapZeroInitialized;

    invoke-static {v0, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    iput-boolean p6, p0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

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

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/content/pm/ProcessInfo;->useEmbeddedDex:Z

    if-eqz v1, :cond_0

    or-int/lit8 v1, v0, 0x20

    int-to-byte v0, v1

    :cond_0
    iget-object v1, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v1, :cond_1

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v1, p0, Landroid/content/pm/ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v1, Landroid/content/pm/ProcessInfo;->sParcellingForDeniedPermissions:Lcom/android/internal/util/Parcelling;

    iget-object v2, p0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    iget v1, p0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
