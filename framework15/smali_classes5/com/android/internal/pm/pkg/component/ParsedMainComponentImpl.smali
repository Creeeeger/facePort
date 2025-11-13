.class public Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
.super Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;
.source "ParsedMainComponentImpl.java"

# interfaces
.implements Lcom/android/internal/pm/pkg/component/ParsedMainComponent;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist attributionTags:[Ljava/lang/String;

.field private blacklist directBootAware:Z

.field private blacklist enabled:Z

.field private blacklist exported:Z

.field private blacklist order:I

.field private blacklist processName:Ljava/lang/String;

.field private blacklist splitName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl$1;

    invoke-direct {v0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl$1;-><init>()V

    sput-object v0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->unparcel(Landroid/os/Parcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->order:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createString8Array()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/pm/pkg/component/ParsedMainComponent;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>(Lcom/android/internal/pm/pkg/component/ParsedComponent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getProcessName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isDirectBootAware()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->isExported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getOrder()I

    move-result v0

    iput v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->order:I

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getSplitName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/internal/pm/pkg/component/ParsedMainComponent;->getAttributionTags()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZZZILjava/lang/String;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    iput-boolean p3, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    iput-boolean p4, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    iput p5, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->order:I

    iput-object p6, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

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

.method public blacklist getAttributionTags()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public blacklist getClassName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getOrder()I
    .locals 1

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->order:I

    return v0
.end method

.method public blacklist getProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSplitName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isDirectBootAware()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    return v0
.end method

.method public blacklist isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    return v0
.end method

.method public blacklist isExported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    return v0
.end method

.method public varargs blacklist setAttributionTags([Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setDirectBootAware(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    return-object p0
.end method

.method public blacklist setEnabled(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    return-object p0
.end method

.method public blacklist setExported(Z)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    return-object p0
.end method

.method public blacklist setOrder(I)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .locals 0

    iput p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->order:I

    return-object p0
.end method

.method public blacklist setProcessName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setSplitName(Ljava/lang/String;)Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;
    .locals 0

    iput-object p1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/internal/pm/pkg/component/ParsedComponentImpl;->writeToParcel(Landroid/os/Parcel;I)V

    sget-object v0, Lcom/android/internal/pm/parsing/pkg/PackageImpl;->sForInternedString:Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;

    iget-object v1, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/util/Parcelling$BuiltIn$ForInternedString;->parcel(Ljava/lang/String;Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->directBootAware:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->exported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->order:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->splitName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/pm/pkg/component/ParsedMainComponentImpl;->attributionTags:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8Array([Ljava/lang/String;)V

    return-void
.end method
