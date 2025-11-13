.class public Landroid/content/ContentProviderOperation$Builder;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProviderOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mArg:Ljava/lang/String;

.field private blacklist mExceptionAllowed:Z

.field private greylist-max-o mExpectedCount:Ljava/lang/Integer;

.field private blacklist mExtras:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mMethod:Ljava/lang/String;

.field private greylist-max-o mSelection:Ljava/lang/String;

.field private blacklist mSelectionArgs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mType:I

.field private final greylist-max-o mUri:Landroid/net/Uri;

.field private blacklist mValues:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mYieldAllowed:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmArg(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mArg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExceptionAllowed(Landroid/content/ContentProviderOperation$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/ContentProviderOperation$Builder;->mExceptionAllowed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpectedCount(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMethod(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mMethod:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelection(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionArgs(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/content/ContentProviderOperation$Builder;)I
    .locals 0

    iget p0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUri(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValues(Landroid/content/ContentProviderOperation$Builder;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmYieldAllowed(Landroid/content/ContentProviderOperation$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    return p0
.end method

.method private constructor greylist-max-o <init>(ILandroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;)V

    return-void
.end method

.method private constructor blacklist <init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;

    iput-object p3, p0, Landroid/content/ContentProviderOperation$Builder;->mMethod:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/ContentProviderOperation$Builder;->mArg:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentProviderOperation$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist assertExtrasAllowed()V
    .locals 3

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Extras not supported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    nop

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist assertSelectionAllowed()V
    .locals 3

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selection not supported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    nop

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist assertValuesAllowed()V
    .locals 3

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Values not supported for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->typeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    nop

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist ensureExtras()V
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    :cond_0
    return-void
.end method

.method private blacklist ensureSelectionArgs()V
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    :cond_0
    return-void
.end method

.method private blacklist ensureValues()V
    .locals 1

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    :cond_0
    return-void
.end method

.method private blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureExtras()V

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/ContentProviderOperation$BackReference;

    instance-of v1, p2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/content/ContentProviderOperation$Builder;->mExtras:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private blacklist setSelectionArg(ILjava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureSelectionArgs()V

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/ContentProviderOperation$BackReference;

    instance-of v1, p2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private blacklist setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureValues()V

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/ContentProviderOperation$BackReference;

    instance-of v1, p2, Landroid/content/ContentProviderOperation$BackReference;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/content/ContentProviderOperation;
    .locals 3

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    const-string v2, "Empty values"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    new-instance v0, Landroid/content/ContentProviderOperation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation-IA;)V

    return-object v0
.end method

.method public whitelist withExceptionAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/ContentProviderOperation$Builder;->mExceptionAllowed:Z

    return-object p0
.end method

.method public whitelist withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/content/ContentProviderOperation$Builder;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only updates, deletes, and asserts can have expected counts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;

    return-object p0
.end method

.method public whitelist withExtra(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertExtrasAllowed()V

    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whitelist withExtraBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertExtrasAllowed()V

    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$BackReference-IA;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whitelist withExtraBackReference(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertExtrasAllowed()V

    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$BackReference-IA;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whitelist withExtras(Landroid/os/Bundle;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertExtrasAllowed()V

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureExtras()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public blacklist withFailureAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/ContentProviderOperation$Builder;->withExceptionAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertSelectionAllowed()V

    iput-object p1, p0, Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureSelectionArgs()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-direct {p0, v0, v1}, Landroid/content/ContentProviderOperation$Builder;->setSelectionArg(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public whitelist withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertSelectionAllowed()V

    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$BackReference-IA;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setSelectionArg(ILjava/lang/Object;)V

    return-object p0
.end method

.method public whitelist withSelectionBackReference(IILjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertSelectionAllowed()V

    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$BackReference-IA;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setSelectionArg(ILjava/lang/Object;)V

    return-object p0
.end method

.method public whitelist withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    invoke-static {p2}, Landroid/content/ContentValues;->isSupportedValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$BackReference-IA;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whitelist withValueBackReference(Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    new-instance v0, Landroid/content/ContentProviderOperation$BackReference;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$BackReference-IA;)V

    invoke-direct {p0, p1, v0}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public whitelist withValueBackReferences(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 6

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    invoke-virtual {p1}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Landroid/content/ContentProviderOperation$BackReference;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v5}, Landroid/content/ContentProviderOperation$BackReference;-><init>(ILjava/lang/String;Landroid/content/ContentProviderOperation$BackReference-IA;)V

    invoke-direct {p0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public whitelist withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->assertValuesAllowed()V

    invoke-direct {p0}, Landroid/content/ContentProviderOperation$Builder;->ensureValues()V

    invoke-virtual {p1}, Landroid/content/ContentValues;->getValues()Landroid/util/ArrayMap;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public whitelist withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z

    return-object p0
.end method
