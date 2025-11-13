.class public final Landroidx/lifecycle/SavedStateHandleSupport$DEFAULT_ARGS_KEY$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroidx/lifecycle/viewmodel/CreationExtras$Key;
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# virtual methods
.method public create(Ljava/lang/Class;Landroidx/lifecycle/viewmodel/CreationExtras;)Landroidx/lifecycle/ViewModel;
    .locals 0

    .line 1
    const-string p0, "extras"

    .line 2
    .line 3
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Landroidx/lifecycle/SavedStateHandlesVM;

    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/lifecycle/SavedStateHandlesVM;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
