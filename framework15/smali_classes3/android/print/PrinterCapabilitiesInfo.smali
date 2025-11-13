.class public final Landroid/print/PrinterCapabilitiesInfo;
.super Ljava/lang/Object;
.source "PrinterCapabilitiesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterCapabilitiesInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrinterCapabilitiesInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

.field public static final greylist-max-o DEFAULT_UNDEFINED:I = -0x1

.field private static final greylist-max-o PROPERTY_COLOR_MODE:I = 0x2

.field private static final greylist-max-o PROPERTY_COUNT:I = 0x4

.field private static final greylist-max-o PROPERTY_DUPLEX_MODE:I = 0x3

.field private static final greylist-max-o PROPERTY_MEDIA_SIZE:I = 0x0

.field private static final greylist-max-o PROPERTY_RESOLUTION:I = 0x1


# instance fields
.field private greylist-max-o mColorModes:I

.field private final greylist-max-o mDefaults:[I

.field private greylist-max-o mDuplexModes:I

.field private greylist-max-o mMediaSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrintAttributes$MediaSize;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mMinMargins:Landroid/print/PrintAttributes$Margins;

.field private greylist-max-o mResolutions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/print/PrintAttributes$Resolution;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmColorModes(Landroid/print/PrinterCapabilitiesInfo;)I
    .locals 0

    iget p0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDefaults(Landroid/print/PrinterCapabilitiesInfo;)[I
    .locals 0

    iget-object p0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDuplexModes(Landroid/print/PrinterCapabilitiesInfo;)I
    .locals 0

    iget p0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMediaSizes(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinMargins(Landroid/print/PrinterCapabilitiesInfo;)Landroid/print/PrintAttributes$Margins;
    .locals 0

    iget-object p0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResolutions(Landroid/print/PrinterCapabilitiesInfo;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmColorModes(Landroid/print/PrinterCapabilitiesInfo;I)V
    .locals 0

    iput p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDuplexModes(Landroid/print/PrinterCapabilitiesInfo;I)V
    .locals 0

    iput p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMediaSizes(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMinMargins(Landroid/print/PrinterCapabilitiesInfo;Landroid/print/PrintAttributes$Margins;)V
    .locals 0

    iput-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResolutions(Landroid/print/PrinterCapabilitiesInfo;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smenforceValidMask(ILjava/util/function/IntConsumer;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->enforceValidMask(ILjava/util/function/IntConsumer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/print/PrintAttributes$Margins;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    sput-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    new-instance v0, Landroid/print/PrinterCapabilitiesInfo$1;

    invoke-direct {v0}, Landroid/print/PrinterCapabilitiesInfo$1;-><init>()V

    sput-object v0, Landroid/print/PrinterCapabilitiesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readMargins(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readMediaSizes(Landroid/os/Parcel;)V

    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readResolutions(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    new-instance v1, Landroid/print/PrinterCapabilitiesInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/print/PrinterCapabilitiesInfo$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->enforceValidMask(ILjava/util/function/IntConsumer;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    new-instance v1, Landroid/print/PrinterCapabilitiesInfo$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/print/PrinterCapabilitiesInfo$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Landroid/print/PrinterCapabilitiesInfo;->enforceValidMask(ILjava/util/function/IntConsumer;)V

    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->readDefaults(Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x1

    if-le v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    aget v1, v1, v3

    if-le v0, v1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/print/PrinterCapabilitiesInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/print/PrinterCapabilitiesInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/print/PrinterCapabilitiesInfo;->DEFAULT_MARGINS:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-virtual {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->copyFrom(Landroid/print/PrinterCapabilitiesInfo;)V

    return-void
.end method

.method private greylist-max-o colorModesToString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    not-int v4, v2

    and-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v2}, Landroid/print/PrintAttributes;->colorModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o duplexModesToString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    const/4 v3, 0x1

    shl-int v2, v3, v2

    not-int v4, v2

    and-int/2addr v1, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v3, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {v2}, Landroid/print/PrintAttributes;->duplexModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static greylist-max-o enforceValidMask(ILjava/util/function/IntConsumer;)V
    .locals 3

    move v0, p0

    :goto_0
    if-lez v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    not-int v2, v1

    and-int/2addr v0, v2

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic blacklist lambda$new$0(I)V
    .locals 0

    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidColorMode(I)V

    return-void
.end method

.method static synthetic blacklist lambda$new$1(I)V
    .locals 0

    invoke-static {p0}, Landroid/print/PrintAttributes;->enforceValidDuplexMode(I)V

    return-void
.end method

.method private greylist-max-o readDefaults(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o readMargins(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/print/PrintAttributes$Margins;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Margins;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private greylist-max-o readMediaSizes(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-static {p1}, Landroid/print/PrintAttributes$MediaSize;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$MediaSize;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o readResolutions(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-static {p1}, Landroid/print/PrintAttributes$Resolution;->createFromParcel(Landroid/os/Parcel;)Landroid/print/PrintAttributes$Resolution;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o writeDefaults(Landroid/os/Parcel;)V
    .locals 3

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private greylist-max-o writeMargins(Landroid/print/PrintAttributes$Margins;Landroid/os/Parcel;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p2}, Landroid/print/PrintAttributes$Margins;->writeToParcel(Landroid/os/Parcel;)V

    :goto_0
    return-void
.end method

.method private greylist-max-o writeMediaSizes(Landroid/os/Parcel;)V
    .locals 3

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v2, p1}, Landroid/print/PrintAttributes$MediaSize;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o writeResolutions(Landroid/os/Parcel;)V
    .locals 3

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v2, p1}, Landroid/print/PrintAttributes$Resolution;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public greylist-max-o copyFrom(Landroid/print/PrinterCapabilitiesInfo;)V
    .locals 4

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iget-object v0, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    :goto_0
    iget-object v0, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    iget-object v1, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    goto :goto_1

    :cond_4
    iput-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    :goto_1
    iget v0, p1, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    iput v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    iget v0, p1, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    iput v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    iget-object v0, p1, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    array-length v0, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    iget-object v3, p1, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/print/PrinterCapabilitiesInfo;

    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-nez v3, :cond_3

    iget-object v3, v2, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    if-eqz v3, :cond_4

    return v1

    :cond_3
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    iget-object v4, v2, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v3, v4}, Landroid/print/PrintAttributes$Margins;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v2, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-eqz v3, :cond_6

    return v1

    :cond_5
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    iget-object v4, v2, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    return v1

    :cond_6
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v2, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-eqz v3, :cond_8

    return v1

    :cond_7
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    iget-object v4, v2, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    return v1

    :cond_8
    iget v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    iget v4, v2, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    if-eq v3, v4, :cond_9

    return v1

    :cond_9
    iget v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    iget v4, v2, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    if-eq v3, v4, :cond_a

    return v1

    :cond_a
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    iget-object v4, v2, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-nez v3, :cond_b

    return v1

    :cond_b
    return v0
.end method

.method public whitelist getColorModes()I
    .locals 1

    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    return v0
.end method

.method public whitelist getDefaults()Landroid/print/PrintAttributes;
    .locals 6

    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    iget-object v1, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v0, v2}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    :cond_0
    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_1

    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/print/PrintAttributes$Resolution;

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    :cond_1
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    if-lez v3, :cond_2

    invoke-virtual {v0, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    :cond_2
    iget-object v4, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    if-lez v4, :cond_3

    invoke-virtual {v0, v4}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;

    :cond_3
    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v5

    return-object v5
.end method

.method public whitelist getDuplexModes()I
    .locals 1

    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    return v0
.end method

.method public whitelist getMediaSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrintAttributes$MediaSize;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getMinMargins()Landroid/print/PrintAttributes$Margins;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    return-object v0
.end method

.method public whitelist getResolutions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/print/PrintAttributes$Resolution;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v3}, Landroid/print/PrintAttributes$Margins;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v4

    :goto_2
    add-int/2addr v2, v4

    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    add-int/2addr v1, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    add-int/2addr v2, v3

    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Landroid/print/PrinterCapabilitiesInfo;->mDefaults:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int/2addr v1, v3

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrinterInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "minMargins="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaSizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mMediaSizes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resolutions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/print/PrinterCapabilitiesInfo;->mResolutions:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", colorModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/print/PrinterCapabilitiesInfo;->colorModesToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duplexModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/print/PrinterCapabilitiesInfo;->duplexModesToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mMinMargins:Landroid/print/PrintAttributes$Margins;

    invoke-direct {p0, v0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeMargins(Landroid/print/PrintAttributes$Margins;Landroid/os/Parcel;)V

    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeMediaSizes(Landroid/os/Parcel;)V

    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeResolutions(Landroid/os/Parcel;)V

    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mColorModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/print/PrinterCapabilitiesInfo;->mDuplexModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p0, p1}, Landroid/print/PrinterCapabilitiesInfo;->writeDefaults(Landroid/os/Parcel;)V

    return-void
.end method
