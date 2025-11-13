.class public final Landroidx/appcompat/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic val$mode:Landroidx/appcompat/view/ActionMode;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/ActionMode;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/ActionBarContextView$1;->val$mode:Landroidx/appcompat/view/ActionMode;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/appcompat/widget/ActionBarContextView$1;->val$mode:Landroidx/appcompat/view/ActionMode;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/appcompat/view/ActionMode;->finish()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
