.class Landroid/widget/Editor$DragLocalState;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DragLocalState"
.end annotation


# instance fields
.field public greylist-max-o end:I

.field public greylist-max-o sourceTextView:Landroid/widget/TextView;

.field public greylist-max-o start:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/TextView;II)V
    .locals 0
    .param p1, "sourceTextView"    # Landroid/widget/TextView;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 3386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3387
    iput-object p1, p0, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    .line 3388
    iput p2, p0, Landroid/widget/Editor$DragLocalState;->start:I

    .line 3389
    iput p3, p0, Landroid/widget/Editor$DragLocalState;->end:I

    .line 3390
    return-void
.end method
