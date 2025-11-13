.class public final Landroidx/slice/core/SliceQuery$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/slice/core/SliceQuery$Filter;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$format:Ljava/lang/String;

.field public final synthetic val$hints:[Ljava/lang/String;

.field public final synthetic val$nonHints:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Landroidx/slice/core/SliceQuery$2;->$r8$classId:I

    iput-object p1, p0, Landroidx/slice/core/SliceQuery$2;->val$format:Ljava/lang/String;

    iput-object p2, p0, Landroidx/slice/core/SliceQuery$2;->val$hints:[Ljava/lang/String;

    iput-object p3, p0, Landroidx/slice/core/SliceQuery$2;->val$nonHints:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/core/SliceQuery$2;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "slice"

    iput-object v0, p0, Landroidx/slice/core/SliceQuery$2;->val$format:Ljava/lang/String;

    iput-object p1, p0, Landroidx/slice/core/SliceQuery$2;->val$hints:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/slice/core/SliceQuery$2;->val$nonHints:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final filter(Landroidx/slice/SliceItem;)Z
    .locals 1

    iget v0, p0, Landroidx/slice/core/SliceQuery$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/slice/core/SliceQuery$2;->val$format:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/core/SliceQuery$2;->val$hints:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/slice/core/SliceQuery$2;->val$nonHints:[Ljava/lang/String;

    invoke-static {p1, p0}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$2;->val$format:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/core/SliceQuery$2;->val$hints:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/slice/core/SliceQuery$2;->val$nonHints:[Ljava/lang/String;

    invoke-static {p1, p0}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0

    :pswitch_1
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$2;->val$format:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/slice/core/SliceQuery$2;->val$hints:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/slice/core/SliceQuery$2;->val$nonHints:[Ljava/lang/String;

    invoke-static {p1, p0}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0

    :pswitch_2
    iget-object v0, p0, Landroidx/slice/core/SliceQuery$2;->val$format:Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->checkFormat(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/core/SliceQuery$2;->val$hints:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroidx/slice/core/SliceQuery;->hasHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/slice/core/SliceQuery$2;->val$nonHints:[Ljava/lang/String;

    invoke-static {p1, p0}, Landroidx/slice/core/SliceQuery;->hasAnyHints(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
