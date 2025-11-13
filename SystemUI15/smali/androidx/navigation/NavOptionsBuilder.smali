.class public final Landroidx/navigation/NavOptionsBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final builder:Landroidx/navigation/NavOptions$Builder;

.field public inclusive:Z

.field public launchSingleTop:Z

.field public popUpToId:I

.field public restoreState:Z

.field public saveState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/navigation/NavOptions$Builder;

    invoke-direct {v0}, Landroidx/navigation/NavOptions$Builder;-><init>()V

    iput-object v0, p0, Landroidx/navigation/NavOptionsBuilder;->builder:Landroidx/navigation/NavOptions$Builder;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/navigation/NavOptionsBuilder;->popUpToId:I

    return-void
.end method
