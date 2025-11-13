.class public final Landroidx/leanback/widget/SearchEditText$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/SearchEditText;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchEditText;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/SearchEditText$1;->this$0:Landroidx/leanback/widget/SearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroidx/leanback/widget/SearchEditText$1;->this$0:Landroidx/leanback/widget/SearchEditText;

    iget-object p0, p0, Landroidx/leanback/widget/SearchEditText;->mKeyboardDismissListener:Landroidx/leanback/widget/SearchBar$4;

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$4;->this$0:Landroidx/leanback/widget/SearchBar;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method
