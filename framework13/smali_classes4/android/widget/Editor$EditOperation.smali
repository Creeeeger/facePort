.class public Landroid/widget/Editor$EditOperation;
.super Landroid/content/UndoOperation;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EditOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/UndoOperation<",
        "Landroid/widget/Editor;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Landroid/widget/Editor$EditOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TYPE_DELETE:I = 0x1

.field private static final greylist-max-o TYPE_INSERT:I = 0x0

.field private static final greylist-max-o TYPE_REPLACE:I = 0x2


# instance fields
.field private greylist-max-o mFrozen:Z

.field private greylist-max-o mIsComposition:Z

.field private greylist-max-o mNewCursorPos:I

.field private greylist-max-o mNewText:Ljava/lang/String;

.field private greylist-max-o mOldCursorPos:I

.field private greylist-max-o mOldText:Ljava/lang/String;

.field private greylist-max-o mStart:I

.field private greylist-max-o mType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNewText(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOldText(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFrozen(Landroid/widget/Editor$EditOperation;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmergeWith(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 9594
    new-instance v0, Landroid/widget/Editor$EditOperation$1;

    invoke-direct {v0}, Landroid/widget/Editor$EditOperation$1;-><init>()V

    sput-object v0, Landroid/widget/Editor$EditOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 9355
    invoke-direct {p0, p1, p2}, Landroid/content/UndoOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 9356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 9357
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 9358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 9359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 9360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 9361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 9362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    .line 9363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 9364
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1
    .param p1, "editor"    # Landroid/widget/Editor;
    .param p2, "oldText"    # Ljava/lang/String;
    .param p3, "dstart"    # I
    .param p4, "newText"    # Ljava/lang/String;
    .param p5, "isComposition"    # Z

    .line 9334
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmUndoOwner(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/UndoOperation;-><init>(Landroid/content/UndoOwner;)V

    .line 9335
    iput-object p2, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 9336
    iput-object p4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 9339
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 9340
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    goto :goto_0

    .line 9341
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 9342
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    goto :goto_0

    .line 9344
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 9347
    :goto_0
    iput p3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 9349
    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    .line 9350
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p3

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 9351
    iput-boolean p5, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 9352
    return-void
.end method

.method private greylist-max-o getNewTextEnd()I
    .locals 2

    .line 9379
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o getOldTextEnd()I
    .locals 2

    .line 9383
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private greylist-max-o getTypeString()Ljava/lang/String;
    .locals 1

    .line 9570
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 9578
    const-string v0, ""

    return-object v0

    .line 9576
    :pswitch_0
    const-string/jumbo v0, "replace"

    return-object v0

    .line 9574
    :pswitch_1
    const-string v0, "delete"

    return-object v0

    .line 9572
    :pswitch_2
    const-string v0, "insert"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 4
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .line 9463
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 9464
    return v1

    .line 9467
    :cond_0
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 9468
    return v1

    .line 9470
    :cond_1
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 9471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 9472
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 9473
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 9474
    return v2
.end method

.method private greylist-max-o mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 6
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .line 9437
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 9439
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-eq v0, v3, :cond_0

    .line 9440
    return v2

    .line 9442
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 9443
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 9444
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    .line 9445
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 9446
    return v1

    .line 9448
    :cond_1
    iget-boolean v3, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-gt v0, v3, :cond_2

    .line 9449
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    if-lt v0, v3, :cond_2

    .line 9451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v4, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 9452
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    iget v4, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 9453
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 9454
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 9455
    return v1

    .line 9457
    :cond_2
    return v2
.end method

.method private greylist-max-o mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 6
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .line 9478
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    iget v2, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-ne v0, v2, :cond_0

    .line 9480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 9481
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 9482
    return v1

    .line 9484
    :cond_0
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 9485
    return v2

    .line 9487
    :cond_1
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-gt v0, v3, :cond_3

    .line 9488
    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v0

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    if-lt v0, v3, :cond_3

    .line 9490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v4, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v5, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 9491
    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v3

    iget v4, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 9492
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9493
    iput v1, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 9495
    :cond_2
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 9496
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 9497
    return v1

    .line 9499
    :cond_3
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v3, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget-object v3, p1, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 9500
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9502
    iget-object v0, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 9503
    iget v0, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 9504
    iget-boolean v0, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 9505
    return v1

    .line 9507
    :cond_4
    return v2
.end method

.method private greylist-max-o mergeWith(Landroid/widget/Editor$EditOperation;)Z
    .locals 2
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .line 9420
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 9421
    return v1

    .line 9424
    :cond_0
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 9432
    return v1

    .line 9430
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeReplaceWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    return v0

    .line 9428
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeDeleteWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    return v0

    .line 9426
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeInsertWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static greylist-max-o modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V
    .locals 2
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "deleteFrom"    # I
    .param p2, "deleteTo"    # I
    .param p3, "newText"    # Ljava/lang/CharSequence;
    .param p4, "newTextInsertAt"    # I
    .param p5, "newCursorPos"    # I

    .line 9549
    invoke-static {p0, p1, p2}, Landroid/widget/Editor;->-$$Nest$smisValidRange(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9550
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    sub-int v1, p2, p1

    sub-int/2addr v0, v1

    if-gt p4, v0, :cond_1

    .line 9551
    if-eq p1, p2, :cond_0

    .line 9552
    invoke-interface {p0, p1, p2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 9554
    :cond_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 9555
    invoke-interface {p0, p4, p3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 9561
    :cond_1
    if-ltz p5, :cond_2

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gt p5, v0, :cond_2

    .line 9564
    invoke-static {p0, p5}, Landroid/widget/TextView;->semSetSelection(Landroid/text/Spannable;I)V

    .line 9567
    :cond_2
    return-void
.end method


# virtual methods
.method public greylist-max-o commit()V
    .locals 0

    .line 9388
    return-void
.end method

.method public greylist-max-o forceMergeWith(Landroid/widget/Editor$EditOperation;)V
    .locals 14
    .param p1, "edit"    # Landroid/widget/Editor$EditOperation;

    .line 9516
    invoke-direct {p0, p1}, Landroid/widget/Editor$EditOperation;->mergeWith(Landroid/widget/Editor$EditOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9517
    return-void

    .line 9519
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    .line 9525
    .local v0, "editor":Landroid/widget/Editor;
    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 9526
    .local v1, "editable":Landroid/text/Editable;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9529
    .local v2, "originalText":Landroid/text/Editable;
    iget v3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    iget v6, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v7, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-static/range {v2 .. v7}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 9532
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9533
    .local v8, "finalText":Landroid/text/Editable;
    iget v9, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p1}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v10

    iget-object v11, p1, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v12, p1, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v13, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-static/range {v8 .. v13}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 9537
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/Editor$EditOperation;->mType:I

    .line 9538
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    .line 9539
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    .line 9540
    const/4 v3, 0x0

    iput v3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    .line 9541
    iget v3, p1, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    iput v3, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    .line 9542
    iget-boolean v3, p1, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    iput-boolean v3, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    .line 9544
    return-void
.end method

.method public greylist-max-o redo()V
    .locals 8

    .line 9403
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    .line 9404
    .local v0, "editor":Landroid/widget/Editor;
    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 9405
    .local v1, "text":Landroid/text/Editable;
    iget v3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getOldTextEnd()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    iget v6, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v7, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 9406
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 9584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getTypeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOldText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOldCursorPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNewCursorPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrozen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsComposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o undo()V
    .locals 8

    .line 9394
    invoke-virtual {p0}, Landroid/widget/Editor$EditOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    .line 9395
    .local v0, "editor":Landroid/widget/Editor;
    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    .line 9396
    .local v1, "text":Landroid/text/Editable;
    iget v3, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-direct {p0}, Landroid/widget/Editor$EditOperation;->getNewTextEnd()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    iget v6, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    iget v7, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    move-object v2, v1

    invoke-static/range {v2 .. v7}, Landroid/widget/Editor$EditOperation;->modifyText(Landroid/text/Editable;IILjava/lang/CharSequence;II)V

    .line 9397
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 9368
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9369
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mOldText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9370
    iget-object v0, p0, Landroid/widget/Editor$EditOperation;->mNewText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9371
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9372
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mOldCursorPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9373
    iget v0, p0, Landroid/widget/Editor$EditOperation;->mNewCursorPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9374
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mFrozen:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9375
    iget-boolean v0, p0, Landroid/widget/Editor$EditOperation;->mIsComposition:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9376
    return-void
.end method
