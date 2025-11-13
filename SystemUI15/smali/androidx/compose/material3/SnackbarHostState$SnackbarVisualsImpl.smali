.class public final Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/material3/SnackbarVisuals;


# instance fields
.field public final actionLabel:Ljava/lang/String;

.field public final duration:Landroidx/compose/material3/SnackbarDuration;

.field public final message:Ljava/lang/String;

.field public final withDismissAction:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroidx/compose/material3/SnackbarDuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->message:Ljava/lang/String;

    iput-object p2, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->actionLabel:Ljava/lang/String;

    iput-boolean p3, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->withDismissAction:Z

    iput-object p4, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->duration:Landroidx/compose/material3/SnackbarDuration;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;

    if-eq v3, v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;

    iget-object v2, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->message:Ljava/lang/String;

    iget-object v3, p1, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->message:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->actionLabel:Ljava/lang/String;

    iget-object v3, p1, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->actionLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->withDismissAction:Z

    iget-boolean v3, p1, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->withDismissAction:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->duration:Landroidx/compose/material3/SnackbarDuration;

    iget-object p1, p1, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->duration:Landroidx/compose/material3/SnackbarDuration;

    if-eq p0, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final getActionLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->actionLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final getDuration()Landroidx/compose/material3/SnackbarDuration;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->duration:Landroidx/compose/material3/SnackbarDuration;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getWithDismissAction()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->withDismissAction:Z

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->actionLabel:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->withDismissAction:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/TransitionData$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/material3/SnackbarHostState$SnackbarVisualsImpl;->duration:Landroidx/compose/material3/SnackbarDuration;

    invoke-virtual {p0}, Ljava/lang/Enum;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
