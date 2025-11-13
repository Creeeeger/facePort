.class public abstract Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/viewholder/WindowDecorationViewHolder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract bindData(Landroid/app/ActivityManager$RunningTaskInfo;)V
.end method

.method public abstract onHandleMenuClosed()V
.end method

.method public abstract onHandleMenuOpened()V
.end method
