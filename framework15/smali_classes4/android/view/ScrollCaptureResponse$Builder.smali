.class public Landroid/view/ScrollCaptureResponse$Builder;
.super Ljava/lang/Object;
.source "ScrollCaptureResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScrollCaptureResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBoundsInWindow:Landroid/graphics/Rect;

.field private blacklist mBuilderFieldsSet:J

.field private blacklist mConnection:Landroid/view/IScrollCaptureConnection;

.field private blacklist mDescription:Ljava/lang/String;

.field private blacklist mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mWindowBounds:Landroid/graphics/Rect;

.field private blacklist mWindowTitle:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    return-void
.end method

.method private blacklist checkNotUsed()V
    .locals 4

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist addMessage(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;
    .locals 1

    iget-object v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/ScrollCaptureResponse$Builder;->setMessages(Ljava/util/ArrayList;)Landroid/view/ScrollCaptureResponse$Builder;

    :cond_0
    iget-object v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist build()Landroid/view/ScrollCaptureResponse;
    .locals 9

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mDescription:Ljava/lang/String;

    :cond_0
    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-object v1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mConnection:Landroid/view/IScrollCaptureConnection;

    :cond_1
    iget-wide v4, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    iput-object v1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowBounds:Landroid/graphics/Rect;

    :cond_2
    iget-wide v4, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x8

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_3

    iput-object v1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBoundsInWindow:Landroid/graphics/Rect;

    :cond_3
    iget-wide v4, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_4

    iput-object v1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowTitle:Ljava/lang/String;

    :cond_4
    iget-wide v4, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    cmp-long v0, v4, v2

    if-nez v0, :cond_5

    iput-object v1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mPackageName:Ljava/lang/String;

    :cond_5
    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v4, 0x40

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    :cond_6
    new-instance v0, Landroid/view/ScrollCaptureResponse;

    iget-object v2, p0, Landroid/view/ScrollCaptureResponse$Builder;->mDescription:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/ScrollCaptureResponse$Builder;->mConnection:Landroid/view/IScrollCaptureConnection;

    iget-object v4, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBoundsInWindow:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowTitle:Ljava/lang/String;

    iget-object v7, p0, Landroid/view/ScrollCaptureResponse$Builder;->mPackageName:Ljava/lang/String;

    iget-object v8, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/view/ScrollCaptureResponse;-><init>(Ljava/lang/String;Landroid/view/IScrollCaptureConnection;Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public blacklist setBoundsInWindow(Landroid/graphics/Rect;)Landroid/view/ScrollCaptureResponse$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBoundsInWindow:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist setConnection(Landroid/view/IScrollCaptureConnection;)Landroid/view/ScrollCaptureResponse$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mConnection:Landroid/view/IScrollCaptureConnection;

    return-object p0
.end method

.method public blacklist setDescription(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setMessages(Ljava/util/ArrayList;)Landroid/view/ScrollCaptureResponse$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/view/ScrollCaptureResponse$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mMessages:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist setPackageName(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setWindowBounds(Landroid/graphics/Rect;)Landroid/view/ScrollCaptureResponse$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist setWindowTitle(Ljava/lang/String;)Landroid/view/ScrollCaptureResponse$Builder;
    .locals 4

    invoke-direct {p0}, Landroid/view/ScrollCaptureResponse$Builder;->checkNotUsed()V

    iget-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScrollCaptureResponse$Builder;->mBuilderFieldsSet:J

    iput-object p1, p0, Landroid/view/ScrollCaptureResponse$Builder;->mWindowTitle:Ljava/lang/String;

    return-object p0
.end method
