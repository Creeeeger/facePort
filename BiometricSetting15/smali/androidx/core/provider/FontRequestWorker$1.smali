.class public final Landroidx/core/provider/FontRequestWorker$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$context:Landroid/content/Context;

.field public final synthetic val$id:Ljava/lang/String;

.field public final synthetic val$request:Landroidx/core/provider/FontRequest;

.field public final synthetic val$style:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;II)V
    .locals 0

    .line 1
    iput p5, p0, Landroidx/core/provider/FontRequestWorker$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Landroidx/core/provider/FontRequestWorker$1;->val$id:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Landroidx/core/provider/FontRequestWorker$1;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p3, p0, Landroidx/core/provider/FontRequestWorker$1;->val$request:Landroidx/core/provider/FontRequest;

    .line 8
    .line 9
    iput p4, p0, Landroidx/core/provider/FontRequestWorker$1;->val$style:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Landroidx/core/provider/FontRequestWorker$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/core/provider/FontRequestWorker$1;->val$id:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/core/provider/FontRequestWorker$1;->val$context:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/core/provider/FontRequestWorker$1;->val$request:Landroidx/core/provider/FontRequest;

    .line 11
    .line 12
    iget p0, p0, Landroidx/core/provider/FontRequestWorker$1;->val$style:I

    .line 13
    .line 14
    invoke-static {v0, v1, v2, p0}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    new-instance p0, Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 20
    .line 21
    const/4 v0, -0x3

    .line 22
    invoke-direct {p0, v0}, Landroidx/core/provider/FontRequestWorker$TypefaceResult;-><init>(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-object p0

    .line 26
    :pswitch_0
    iget-object v0, p0, Landroidx/core/provider/FontRequestWorker$1;->val$context:Landroid/content/Context;

    .line 27
    .line 28
    iget v1, p0, Landroidx/core/provider/FontRequestWorker$1;->val$style:I

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/core/provider/FontRequestWorker$1;->val$id:Ljava/lang/String;

    .line 31
    .line 32
    iget-object p0, p0, Landroidx/core/provider/FontRequestWorker$1;->val$request:Landroidx/core/provider/FontRequest;

    .line 33
    .line 34
    invoke-static {v2, v0, p0, v1}, Landroidx/core/provider/FontRequestWorker;->getFontSync(Ljava/lang/String;Landroid/content/Context;Landroidx/core/provider/FontRequest;I)Landroidx/core/provider/FontRequestWorker$TypefaceResult;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
