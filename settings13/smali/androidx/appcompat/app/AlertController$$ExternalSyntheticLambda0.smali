.class public final synthetic Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic f$0:Landroidx/appcompat/app/AlertController;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/AlertController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AlertController;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/app/AlertController$$ExternalSyntheticLambda0;->f$0:Landroidx/appcompat/app/AlertController;

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p0, p1}, Landroidx/appcompat/app/AlertController;->$r8$lambda$N9HxDm26UfAz218OSW_tY6axy-o(Landroidx/appcompat/app/AlertController;Landroid/view/ViewGroup;)Landroid/view/TouchDelegate;

    move-result-object p0

    return-object p0
.end method
