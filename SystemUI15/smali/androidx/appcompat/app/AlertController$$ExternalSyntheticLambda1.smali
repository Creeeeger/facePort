.class public final synthetic Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/core/util/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AlertController;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/app/AlertController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda1;->f$0:Landroidx/appcompat/app/AlertController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f0a021f

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda2;-><init>(Landroid/widget/LinearLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
