.class public Landroid/content/om/FabricatedOverlay;
.super Ljava/lang/Object;
.source "FabricatedOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/FabricatedOverlay$StringTypeOverlayResource;,
        Landroid/content/om/FabricatedOverlay$Builder;
    }
.end annotation


# instance fields
.field final blacklist mOverlay:Landroid/os/FabricatedOverlayInternal;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/os/FabricatedOverlayInternal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/FabricatedOverlayInternal;Landroid/content/om/FabricatedOverlay-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/om/FabricatedOverlay;-><init>(Landroid/os/FabricatedOverlayInternal;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    nop

    invoke-static {p1}, Lcom/android/internal/content/om/OverlayManagerImpl;->checkOverlayNameValid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'targetPackage\' must not be empty nor null"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v4, v2}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/om/FabricatedOverlay;-><init>(Landroid/os/FabricatedOverlayInternal;)V

    return-void
.end method

.method private static blacklist ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v0, :cond_0

    if-eqz v1, :cond_0

    sub-int v2, v0, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "\"%s\" is invalid resource name"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method private static blacklist generateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/os/FabricatedOverlayInternalEntry;",
            ">;)",
            "Landroid/os/FabricatedOverlayInternal;"
        }
    .end annotation

    new-instance v0, Landroid/os/FabricatedOverlayInternal;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternal;-><init>()V

    iput-object p0, v0, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    iput-object p1, v0, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    iput-object p2, v0, Landroid/os/FabricatedOverlayInternal;->targetPackageName:Ljava/lang/String;

    invoke-static {p3}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->targetOverlayable:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    iget-object v1, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .locals 4

    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    nop

    const/16 v1, 0x10

    const/16 v2, 0x1f

    const-string v3, "dataType"

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    iput p2, v0, Landroid/os/FabricatedOverlayInternalEntry;->data:I

    iput-object p3, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .locals 4

    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    nop

    const/4 v1, 0x3

    const/4 v2, 0x6

    const-string v3, "dataType"

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->stringData:Ljava/lang/String;

    iput-object p3, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;
    .locals 3

    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryData:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataOffset:J

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataSize:J

    iput-object p2, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    return-object v0
.end method

.method private static blacklist generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;
    .locals 3

    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    iput-object p0, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryData:Landroid/os/ParcelFileDescriptor;

    iput-object p2, v0, Landroid/os/FabricatedOverlayInternalEntry;->configuration:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataOffset:J

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/os/FabricatedOverlayInternalEntry;->binaryDataSize:J

    iput-boolean p3, v0, Landroid/os/FabricatedOverlayInternalEntry;->isNinePatch:Z

    return-object v0
.end method


# virtual methods
.method public whitelist getIdentifier()Landroid/content/om/OverlayIdentifier;
    .locals 3

    new-instance v0, Landroid/content/om/OverlayIdentifier;

    iget-object v1, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v1, v1, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v2, v2, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getTargetOverlayable()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->targetOverlayable:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist setNinePatchResourceValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    const/4 v1, 0x1

    invoke-static {p1, p2, p3, v1}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist setOwningPackage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iput-object p1, v0, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-static {p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-static {p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    invoke-static {p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist setResourceValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->ensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    iget-object v0, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1}, Landroid/content/om/FabricatedOverlay;->generateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist setTargetOverlayable(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/content/om/FabricatedOverlay;->mOverlay:Landroid/os/FabricatedOverlayInternal;

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->targetOverlayable:Ljava/lang/String;

    return-void
.end method
