.class public Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;
.super Ljava/lang/Object;
.source "ParsedUsesPermissionImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedUsesPermission;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sParcellingForName:Lcom/android/internal/util/Parcelling;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/Parcelling<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist name:Ljava/lang/String;

.field private blacklist usesPermissionFlags:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-direct {v0}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;-><init>()V

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->put(Lcom/android/internal/util/Parcelling;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    :cond_0
    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    invoke-interface {v0, p1}, Lcom/android/internal/util/Parcelling;->unparcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    const-class v2, Landroid/annotation/NonNull;

    iget-object v3, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput v1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    const-class v2, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission$UsesPermissionFlags;

    iget v3, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    iput p2, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    const-class v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission$UsesPermissionFlags;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

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

.method public blacklist getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUsesPermissionFlags()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    return v0
.end method

.method public blacklist setName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;
    .locals 3

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    return-object p0
.end method

.method public blacklist setUsesPermissionFlags(I)Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;
    .locals 3

    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    const-class v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermission$UsesPermissionFlags;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    sget-object v0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->sParcellingForName:Lcom/android/internal/util/Parcelling;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling;->parcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedUsesPermissionImpl;->usesPermissionFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
