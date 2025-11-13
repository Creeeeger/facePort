.class public Landroid/service/autofill/CustomDescription$Builder;
.super Ljava/lang/Object;
.source "CustomDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/CustomDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/service/autofill/InternalOnClickAction;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDestroyed:Z

.field private final greylist-max-o mPresentation:Landroid/widget/RemoteViews;

.field private greylist-max-o mTransformations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/service/autofill/InternalTransformation;",
            ">;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/service/autofill/InternalValidator;",
            "Landroid/service/autofill/BatchUpdates;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActions(Landroid/service/autofill/CustomDescription$Builder;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/CustomDescription$Builder;->mActions:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPresentation(Landroid/service/autofill/CustomDescription$Builder;)Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/CustomDescription$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTransformations(Landroid/service/autofill/CustomDescription$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/CustomDescription$Builder;->mTransformations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUpdates(Landroid/service/autofill/CustomDescription$Builder;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroid/service/autofill/CustomDescription$Builder;->mUpdates:Ljava/util/ArrayList;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/widget/RemoteViews;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mPresentation:Landroid/widget/RemoteViews;

    return-void
.end method

.method private greylist-max-o throwIfDestroyed()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mDestroyed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already called #build()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addChild(ILandroid/service/autofill/Transformation;)Landroid/service/autofill/CustomDescription$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/service/autofill/CustomDescription$Builder;->throwIfDestroyed()V

    instance-of v0, p2, Landroid/service/autofill/InternalTransformation;

    const-string/jumbo v1, "not provided by Android System: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mTransformations:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mTransformations:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mTransformations:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Landroid/service/autofill/InternalTransformation;

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist addOnClickAction(ILandroid/service/autofill/OnClickAction;)Landroid/service/autofill/CustomDescription$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/service/autofill/CustomDescription$Builder;->throwIfDestroyed()V

    instance-of v0, p2, Landroid/service/autofill/InternalOnClickAction;

    const-string/jumbo v1, "not provided by Android System: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mActions:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mActions:Landroid/util/SparseArray;

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mActions:Landroid/util/SparseArray;

    move-object v1, p2

    check-cast v1, Landroid/service/autofill/InternalOnClickAction;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p0
.end method

.method public whitelist batchUpdate(Landroid/service/autofill/Validator;Landroid/service/autofill/BatchUpdates;)Landroid/service/autofill/CustomDescription$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/service/autofill/CustomDescription$Builder;->throwIfDestroyed()V

    instance-of v0, p1, Landroid/service/autofill/InternalValidator;

    const-string/jumbo v1, "not provided by Android System: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mUpdates:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mUpdates:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mUpdates:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    move-object v2, p1

    check-cast v2, Landroid/service/autofill/InternalValidator;

    invoke-direct {v1, v2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public whitelist build()Landroid/service/autofill/CustomDescription;
    .locals 2

    invoke-direct {p0}, Landroid/service/autofill/CustomDescription$Builder;->throwIfDestroyed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/autofill/CustomDescription$Builder;->mDestroyed:Z

    new-instance v0, Landroid/service/autofill/CustomDescription;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/service/autofill/CustomDescription;-><init>(Landroid/service/autofill/CustomDescription$Builder;Landroid/service/autofill/CustomDescription-IA;)V

    return-object v0
.end method
