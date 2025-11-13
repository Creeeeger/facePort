.class public Lcom/android/internal/widget/remotecompose/core/CoreDocument;
.super Ljava/lang/Object;
.source "CoreDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;,
        Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickCallbacks;
    }
.end annotation


# instance fields
.field blacklist mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

.field blacklist mClickAreas:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mClickListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mContentAlignment:I

.field blacklist mContentDescription:Ljava/lang/String;

.field blacklist mContentMode:I

.field blacklist mContentScroll:I

.field blacklist mContentSizing:I

.field blacklist mHeight:I

.field blacklist mOperations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

.field private blacklist mRepaintNext:I

.field blacklist mRequiredCapabilities:J

.field private final blacklist mScaleOutput:[F

.field blacklist mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

.field private final blacklist mTranslateOutput:[F

.field blacklist mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

.field blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    const/16 v0, 0x22

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickListeners:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    const/4 v0, 0x2

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    return-void
.end method

.method private blacklist computeTranslate(FFFF[F)V
    .locals 8

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    and-int/lit16 v0, v0, 0xf0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, p3

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, p4

    const/high16 v6, 0x40000000    # 2.0f

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sub-float v2, p1, v4

    goto :goto_0

    :sswitch_1
    sub-float v7, p1, v4

    div-float v2, v7, v6

    goto :goto_0

    :sswitch_2
    nop

    :goto_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    sub-float v3, p2, v5

    goto :goto_1

    :pswitch_2
    sub-float v7, p2, v5

    div-float v3, v7, v6

    goto :goto_1

    :pswitch_3
    nop

    :goto_1
    const/4 v6, 0x0

    aput v2, p5, v6

    const/4 v6, 0x1

    aput v3, p5, v6

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x20 -> :sswitch_1
        0x40 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private blacklist warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickListeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickCallbacks;

    iget v2, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    iget-object v3, p1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mMetadata:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickCallbacks;->click(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    new-instance v10, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    move-object v2, v10

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;-><init>(ILjava/lang/String;FFFFLjava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addClickListener(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickCallbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist canBeDisplayed(IIJ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->major:I

    if-gt v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;->minor:I

    if-gt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist computeScale(FF[F)V
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v2, v2

    div-float v2, p1, v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v3, v3

    div-float v3, p2, v3

    move v0, v2

    move v1, v3

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v2, v2

    div-float v2, p1, v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v3, v3

    div-float v3, p2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move v0, v4

    move v1, v4

    goto :goto_0

    :pswitch_2
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v2, v2

    div-float v2, p1, v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v3, v3

    div-float v3, p2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v0, v4

    move v1, v4

    goto :goto_0

    :pswitch_3
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v2, v2

    div-float v2, p2, v2

    move v0, v2

    move v1, v2

    goto :goto_0

    :pswitch_4
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v2, v2

    div-float v2, p1, v2

    move v0, v2

    move v1, v2

    goto :goto_0

    :pswitch_5
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    int-to-float v2, v2

    div-float v2, p1, v2

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    int-to-float v3, v3

    div-float v3, p2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    move v0, v4

    move v1, v4

    nop

    :cond_0
    :goto_0
    const/4 v2, 0x0

    aput v0, p3, v2

    const/4 v2, 0x1

    aput v1, p3, v2

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist getBuffer()Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    return-object v0
.end method

.method public blacklist getClickAreas()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    return-object v0
.end method

.method public blacklist getContentDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getContentMode()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    return v0
.end method

.method public blacklist getContentScroll()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    return v0
.end method

.method public blacklist getContentSizing()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    return v0
.end method

.method public blacklist getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    return v0
.end method

.method public blacklist getRemoteComposeState()Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    return-object v0
.end method

.method public blacklist getRequiredCapabilities()J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    return-wide v0
.end method

.method public blacklist getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    return v0
.end method

.method public blacklist initFromBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;->inflateFromBuffer(Ljava/util/ArrayList;)V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    return-void
.end method

.method public blacklist initializeContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->reset()V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setNextId(I)V

    iput-object p0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->DATA:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/VariableSupport;->registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_0
    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    return-void
.end method

.method public blacklist needsRepaint()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    return v0
.end method

.method public blacklist onClick(FF)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist paint(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)V
    .locals 12

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->PAINT:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->setTheme(I)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iput-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    iget v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget v2, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->computeScale(FF[F)V

    iget v7, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mWidth:F

    iget v8, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mHeight:F

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    aget v9, v1, v4

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    aget v10, v1, v3

    iget-object v11, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->computeTranslate(FFFF[F)V

    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    aget v2, v2, v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTranslateOutput:[F

    aget v5, v5, v3

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->translate(FF)V

    iget-object v1, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    aget v2, v2, v4

    iget-object v5, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mScaleOutput:[F

    aget v5, v5, v3

    invoke-virtual {v1, v2, v5}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->scale(FF)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mTimeVariables:Lcom/android/internal/widget/remotecompose/core/TimeVariables;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/remotecompose/core/TimeVariables;->updateTime(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x6

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->updateOps()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRepaintNext:I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    const/4 v5, 0x1

    if-eq p2, v0, :cond_3

    instance-of v6, v2, Lcom/android/internal/widget/remotecompose/core/operations/Theme;

    if-nez v6, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getTheme()I

    move-result v6

    if-eq v6, p2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getTheme()I

    move-result v6

    if-ne v6, v0, :cond_1

    goto :goto_1

    :cond_1
    move v6, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v6, v3

    :goto_2
    move v5, v6

    :cond_3
    if-eqz v5, :cond_4

    invoke-interface {v2, p1}, Lcom/android/internal/widget/remotecompose/core/Operation;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_4
    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;->UNSET:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    iput-object v0, p1, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->mMode:Lcom/android/internal/widget/remotecompose/core/RemoteContext$ContextMode;

    return-void
.end method

.method public blacklist performClick(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mClickAreas:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;

    iget v2, v1, Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;->mId:I

    if-ne v2, p1, :cond_0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->warnClickListeners(Lcom/android/internal/widget/remotecompose/core/CoreDocument$ClickAreaRepresentation;)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist setBuffer(Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mBuffer:Lcom/android/internal/widget/remotecompose/core/RemoteComposeBuffer;

    return-void
.end method

.method public blacklist setContentDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentDescription:Ljava/lang/String;

    return-void
.end method

.method public blacklist setHeight(I)V
    .locals 2

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mHeight:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowHeight(F)V

    return-void
.end method

.method public blacklist setRemoteComposeState(Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    return-void
.end method

.method public blacklist setRequiredCapabilities(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRequiredCapabilities:J

    return-void
.end method

.method public blacklist setRootContentBehavior(IIII)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentScroll:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentAlignment:I

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentSizing:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mContentMode:I

    return-void
.end method

.method blacklist setVersion(III)V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mVersion:Lcom/android/internal/widget/remotecompose/core/CoreDocument$Version;

    return-void
.end method

.method public blacklist setWidth(I)V
    .locals 2

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mWidth:I

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->setWindowWidth(F)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->mOperations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/Operation;

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/Operation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
