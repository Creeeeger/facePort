.class public final Landroid/content/om/FabricatedOverlay$Builder;
.super Ljava/lang/Object;
.source "FabricatedOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/FabricatedOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/FabricatedOverlayInternalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mOwningPackage:Ljava/lang/String;

.field private blacklist mTargetOverlayable:Ljava/lang/String;

.field private final blacklist mTargetPackage:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetOverlayable:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    const-string v0, "\'owningPackage\' must not be empty nor null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "\'name\'\' must not be empty nor null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "\'targetPackage\' must not be empty nor null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mOwningPackage:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/om/FabricatedOverlay$Builder;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/content/om/FabricatedOverlay;
    .locals 6

    new-instance v0, Landroid/content/om/FabricatedOverlay;

    iget-object v1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mOwningPackage:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/om/FabricatedOverlay$Builder;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetPackage:Ljava/lang/String;

    iget-object v4, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetOverlayable:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3, v4, v5}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smgenerateFabricatedOverlayInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Landroid/os/FabricatedOverlayInternal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/om/FabricatedOverlay;-><init>(Landroid/os/FabricatedOverlayInternal;Landroid/content/om/FabricatedOverlay-IA;)V

    return-object v0
.end method

.method public blacklist setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        since = "Please use FabricatedOverlay#setResourceValue instead"
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;IILjava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setResourceValue(Ljava/lang/String;IILjava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "Please use FabricatedOverlay#setResourceValue instead"
    .end annotation

    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;IILjava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setResourceValue(Ljava/lang/String;ILjava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
        since = "Please use FabricatedOverlay#setResourceValue instead"
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/om/FabricatedOverlay$Builder;->setResourceValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setResourceValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "Please use FabricatedOverlay#setResourceValue instead"
    .end annotation

    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3, p4}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setResourceValue(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "Please use FabricatedOverlay#setResourceValue instead"
    .end annotation

    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setResourceValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
        since = "Please use FabricatedOverlay#setResourceValue instead"
    .end annotation

    invoke-static {p1}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smensureValidResourceName(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v1}, Landroid/content/om/FabricatedOverlay;->-$$Nest$smgenerateFabricatedOverlayInternalEntry(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Z)Landroid/os/FabricatedOverlayInternalEntry;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist setTargetOverlayable(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetOverlayable:Ljava/lang/String;

    return-object p0
.end method
