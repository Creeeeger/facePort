.class public final synthetic Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda2;->f$0:Landroidx/appcompat/widget/Toolbar;

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 1

    iget-object p0, p0, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda2;->f$0:Landroidx/appcompat/widget/Toolbar;

    sget v0, Landroidx/appcompat/widget/Toolbar;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p0}, Landroidx/appcompat/widget/Toolbar$$ExternalSyntheticLambda3;-><init>(Landroidx/appcompat/widget/Toolbar;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
