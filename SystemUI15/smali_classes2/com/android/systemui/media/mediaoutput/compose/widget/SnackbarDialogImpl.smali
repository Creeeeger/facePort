.class public final Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/media/mediaoutput/compose/widget/DialogInterface;
.implements Landroidx/compose/material3/SnackbarVisuals;


# instance fields
.field public final actionLabel:Ljava/lang/String;

.field public final actions:Ljava/util/List;

.field public final body:Ljava/lang/String;

.field public final duration:Landroidx/compose/material3/SnackbarDuration;

.field public final message:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogImpl;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogImpl;->body:Ljava/lang/String;

    invoke-static {p3}, Lkotlin/collections/ArraysKt___ArraysKt;->toList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogImpl;->actions:Ljava/util/List;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogImpl;->message:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogImpl;->actionLabel:Ljava/lang/String;

    sget-object p1, Landroidx/compose/material3/SnackbarDuration;->Indefinite:Landroidx/compose/material3/SnackbarDuration;

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogImpl;->duration:Landroidx/compose/material3/SnackbarDuration;

    return-void
.end method


# virtual methods
.method public final getActionLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogImpl;->actionLabel:Ljava/lang/String;

    return-object p0
.end method

.method public final getDuration()Landroidx/compose/material3/SnackbarDuration;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogImpl;->duration:Landroidx/compose/material3/SnackbarDuration;

    return-object p0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/SnackbarDialogImpl;->message:Ljava/lang/String;

    return-object p0
.end method

.method public final getWithDismissAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
