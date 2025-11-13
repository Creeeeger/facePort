.class public final Landroidx/navigation/NavOptionsBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final builder:Landroidx/navigation/NavOptions$Builder;

.field public inclusive:Z

.field public launchSingleTop:Z

.field public popUpToId:I

.field public restoreState:Z

.field public saveState:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroidx/navigation/NavOptions$Builder;->popUpToId:I

    iput v1, v0, Landroidx/navigation/NavOptions$Builder;->enterAnim:I

    iput v1, v0, Landroidx/navigation/NavOptions$Builder;->exitAnim:I

    iput v1, v0, Landroidx/navigation/NavOptions$Builder;->popEnterAnim:I

    iput v1, v0, Landroidx/navigation/NavOptions$Builder;->popExitAnim:I

    iput-object v0, p0, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    return-void
.end method


# virtual methods
.method public final popUpTo(ILkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "popUpToBuilder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    new-instance p1, Landroidx/navigation/PopUpToBuilder;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p2, p1, Landroidx/navigation/PopUpToBuilder;->inclusive:Z

    iput-boolean p2, p0, Landroidx/navigation/NavOptionsBuilder;->inclusive:Z

    iget-boolean p1, p1, Landroidx/navigation/PopUpToBuilder;->saveState:Z

    iput-boolean p1, p0, Landroidx/navigation/NavOptionsBuilder;->saveState:Z

    return-void
.end method
