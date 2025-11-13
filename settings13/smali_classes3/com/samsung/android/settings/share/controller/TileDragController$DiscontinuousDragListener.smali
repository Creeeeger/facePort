.class abstract Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;
.super Ljava/lang/Object;
.source "TileDragController.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/share/controller/TileDragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DiscontinuousDragListener"
.end annotation


# instance fields
.field private mEnterTime:J

.field private mEntered:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 136
    iput-wide v0, p0, Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;->mEnterTime:J

    const/4 v0, 0x0

    .line 137
    iput-boolean v0, p0, Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;->mEntered:Z

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5

    .line 141
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    return v2

    .line 158
    :pswitch_0
    iput-wide v0, p0, Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;->mEnterTime:J

    const/4 p1, 0x0

    .line 159
    iput-boolean p1, p0, Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;->mEntered:Z

    return v2

    .line 146
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;->mEnterTime:J

    return v2

    .line 163
    :pswitch_2
    iput-wide v0, p0, Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;->mEnterTime:J

    .line 164
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;->onDragEnd(Landroid/view/View;)V

    return v2

    .line 149
    :pswitch_3
    iget-boolean p2, p0, Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;->mEntered:Z

    if-eqz p2, :cond_0

    return v2

    .line 152
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;->mEnterTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0xc8

    cmp-long p2, v0, v3

    if-lez p2, :cond_1

    .line 153
    iput-boolean v2, p0, Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;->mEntered:Z

    .line 154
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;->onDragEnter(Landroid/view/View;)V

    :cond_1
    return v2

    .line 143
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/share/controller/TileDragController$DiscontinuousDragListener;->onDragStart(Landroid/view/View;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method abstract onDragEnd(Landroid/view/View;)V
.end method

.method abstract onDragEnter(Landroid/view/View;)V
.end method

.method abstract onDragStart(Landroid/view/View;)V
.end method
