.class public final synthetic Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/FragmentManagerImpl;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda4;->f$0:Landroidx/fragment/app/FragmentManagerImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final saveState()Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda4;->f$0:Landroidx/fragment/app/FragmentManagerImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->saveAllStateInternal()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
