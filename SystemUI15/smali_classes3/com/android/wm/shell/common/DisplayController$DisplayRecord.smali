.class public final Lcom/android/wm/shell/common/DisplayController$DisplayRecord;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field public mInsetsState:Landroid/view/InsetsState;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/view/InsetsState;

    invoke-direct {p1}, Landroid/view/InsetsState;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;->mInsetsState:Landroid/view/InsetsState;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/DisplayController$DisplayRecord;-><init>(I)V

    return-void
.end method
