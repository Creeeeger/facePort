.class public final Landroidx/slice/widget/EventInfo;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public actionCount:I

.field public actionIndex:I

.field public actionPosition:I

.field public final actionType:I

.field public final rowIndex:I

.field public final rowTemplateType:I

.field public final sliceMode:I

.field public state:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    iput p2, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    iput p3, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    iput p4, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    iput p1, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    iput p1, p0, Landroidx/slice/widget/EventInfo;->state:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Landroidx/slice/widget/SliceView$3;

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget v3, p0, Landroidx/slice/widget/EventInfo;->sliceMode:I

    if-eq v3, v2, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const-string/jumbo v4, "unknown mode: "

    invoke-static {v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "MODE SHORTCUT"

    goto :goto_0

    :cond_1
    const-string v3, "MODE LARGE"

    goto :goto_0

    :cond_2
    const-string v3, "MODE SMALL"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", actionType="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "TOGGLE"

    const-string v4, "SLIDER"

    const-string v5, "SELECTION"

    const-string v6, "DATE_PICK"

    const-string v7, "TIME_PICK"

    iget v8, p0, Landroidx/slice/widget/EventInfo;->actionType:I

    packed-switch v8, :pswitch_data_0

    const-string/jumbo v9, "unknown action: "

    invoke-static {v8, v9}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :pswitch_0
    move-object v8, v7

    goto :goto_1

    :pswitch_1
    move-object v8, v6

    goto :goto_1

    :pswitch_2
    move-object v8, v5

    goto :goto_1

    :pswitch_3
    const-string v8, "SEE MORE"

    goto :goto_1

    :pswitch_4
    const-string v8, "CONTENT"

    goto :goto_1

    :pswitch_5
    move-object v8, v4

    goto :goto_1

    :pswitch_6
    const-string v8, "BUTTON"

    goto :goto_1

    :pswitch_7
    move-object v8, v3

    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", rowTemplateType="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Landroidx/slice/widget/EventInfo;->rowTemplateType:I

    packed-switch v8, :pswitch_data_1

    const-string/jumbo v3, "unknown row type: "

    invoke-static {v8, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :pswitch_8
    move-object v3, v7

    goto :goto_2

    :pswitch_9
    move-object v3, v6

    goto :goto_2

    :pswitch_a
    move-object v3, v5

    goto :goto_2

    :pswitch_b
    const-string v3, "PROGRESS"

    goto :goto_2

    :pswitch_c
    move-object v3, v4

    goto :goto_2

    :pswitch_d
    const-string v3, "MESSAGING"

    goto :goto_2

    :pswitch_e
    const-string v3, "GRID"

    goto :goto_2

    :pswitch_f
    const-string v3, "LIST"

    goto :goto_2

    :pswitch_10
    const-string v3, "SHORTCUT"

    :goto_2
    :pswitch_11
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rowIndex="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/slice/widget/EventInfo;->rowIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", actionPosition="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroidx/slice/widget/EventInfo;->actionPosition:I

    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_4

    if-eq v3, v1, :cond_3

    const-string/jumbo v1, "unknown position: "

    invoke-static {v3, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, "CELL"

    goto :goto_3

    :cond_4
    const-string v1, "END"

    goto :goto_3

    :cond_5
    const-string v1, "START"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", actionIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/slice/widget/EventInfo;->actionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/slice/widget/EventInfo;->state:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_11
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
