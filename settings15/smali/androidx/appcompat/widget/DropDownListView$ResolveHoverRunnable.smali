.class public final Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/appcompat/widget/DropDownListView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/DropDownListView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroidx/appcompat/widget/DropDownListView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;->this$0:Landroidx/appcompat/widget/DropDownListView;

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/appcompat/widget/DropDownListView;->mResolveHoverRunnable:Landroidx/appcompat/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/DropDownListView;->drawableStateChanged()V

    return-void
.end method
