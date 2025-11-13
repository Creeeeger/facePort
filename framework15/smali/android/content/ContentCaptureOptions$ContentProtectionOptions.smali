.class public Landroid/content/ContentCaptureOptions$ContentProtectionOptions;
.super Ljava/lang/Object;
.source "ContentCaptureOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentCaptureOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentProtectionOptions"
.end annotation


# instance fields
.field public final blacklist bufferSize:I

.field public final blacklist enableReceiver:Z

.field public final blacklist optionalGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final blacklist optionalGroupsThreshold:I

.field public final blacklist requiredGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdumpShort(Landroid/content/ContentCaptureOptions$ContentProtectionOptions;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->dumpShort(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwriteToParcel(Landroid/content/ContentCaptureOptions$ContentProtectionOptions;Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->writeToParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions$ContentProtectionOptions;
    .locals 0

    invoke-static {p0}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 6

    sget-object v3, Landroid/view/contentcapture/ContentCaptureManager;->DEFAULT_CONTENT_PROTECTION_REQUIRED_GROUPS:Ljava/util/List;

    sget-object v4, Landroid/view/contentcapture/ContentCaptureManager;->DEFAULT_CONTENT_PROTECTION_OPTIONAL_GROUPS:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x96

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;-><init>(ZILjava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public constructor blacklist <init>(ZILjava/util/List;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    iput p2, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->bufferSize:I

    iput-object p3, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->requiredGroups:Ljava/util/List;

    iput-object p4, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroups:Ljava/util/List;

    iput p5, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroupsThreshold:I

    return-void
.end method

.method private static blacklist createFromParcel(Landroid/os/Parcel;)Landroid/content/ContentCaptureOptions$ContentProtectionOptions;
    .locals 12

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-static {p0}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->createGroupsFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v8

    invoke-static {p0}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->createGroupsFromParcel(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    new-instance v11, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;

    move-object v0, v11

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-direct/range {v0 .. v5}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;-><init>(ZILjava/util/List;Ljava/util/List;I)V

    return-object v11
.end method

.method private static blacklist createGroupsFromParcel(Landroid/os/Parcel;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v2, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda2;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toUnmodifiableList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method private blacklist dumpShort(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "enableReceiver="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ", bufferSize="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->bufferSize:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", requiredGroupsSize="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->requiredGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", optionalGroupsSize="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ", optionalGroupsThreshold="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroupsThreshold:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method static synthetic blacklist lambda$createGroupsFromParcel$0(I)Ljava/util/ArrayList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static blacklist writeGroupsToParcel(Ljava/util/List;Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist writeToParcel(Landroid/os/Parcel;)V
    .locals 1

    iget-boolean v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->bufferSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->requiredGroups:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->writeGroupsToParcel(Ljava/util/List;Landroid/os/Parcel;)V

    iget-object v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroups:Ljava/util/List;

    invoke-static {v0, p1}, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->writeGroupsToParcel(Ljava/util/List;Landroid/os/Parcel;)V

    iget v0, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroupsThreshold:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ContentProtectionOptions ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    nop

    const-string v1, "enableReceiver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->enableReceiver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bufferSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requiredGroupsSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->requiredGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", optionalGroupsSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroups:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", optionalGroupsThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentCaptureOptions$ContentProtectionOptions;->optionalGroupsThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
