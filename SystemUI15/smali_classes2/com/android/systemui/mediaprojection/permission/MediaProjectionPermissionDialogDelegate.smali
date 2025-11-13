.class public final Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;
.super Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$Companion;


# instance fields
.field public final appName:Ljava/lang/String;

.field public final onCancelClicked:Ljava/lang/Runnable;

.field public final onStartRecordingClicked:Ljava/util/function/Consumer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;->Companion:Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/projection/MediaProjectionConfig;Ljava/util/function/Consumer;Ljava/lang/Runnable;Ljava/lang/String;ZILcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/media/projection/MediaProjectionConfig;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/String;",
            "ZI",
            "Lcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v11, p5

    sget-object v0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;->Companion:Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v11, :cond_0

    const v0, 0x7f130beb

    goto :goto_0

    :cond_0
    const v0, 0x7f130be7

    :goto_0
    if-nez v11, :cond_1

    const v1, 0x7f130bea

    :goto_1
    move v5, v1

    goto :goto_2

    :cond_1
    const v1, 0x7f130be6

    goto :goto_1

    :goto_2
    const/4 v1, 0x0

    if-eqz v11, :cond_2

    if-nez p6, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/media/projection/MediaProjectionConfig;->getRegionToCapture()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move v9, v3

    goto :goto_3

    :cond_2
    move v9, v1

    :goto_3
    if-eqz v9, :cond_3

    const v2, 0x7f130be4

    filled-new-array/range {p5 .. p5}, [Ljava/lang/Object;

    move-result-object v3

    move-object v4, p1

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_4
    new-instance v12, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    const v3, 0x7f130fd5

    invoke-direct {v12, v1, v3, v0, v2}, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;-><init>(IIILjava/lang/String;)V

    new-instance v0, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    const/16 v7, 0x8

    const/4 v8, 0x0

    const/4 v3, 0x1

    const v4, 0x7f130fd4

    const/4 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;-><init>(IIILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    filled-new-array {v12, v0}, [Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v9, :cond_4

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    :cond_4
    move-object v1, v0

    const/16 v8, 0x70

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object/from16 v2, p5

    move/from16 v3, p7

    move-object/from16 v4, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;-><init>(Ljava/util/List;Ljava/lang/String;ILcom/android/systemui/mediaprojection/MediaProjectionMetricsLogger;Ljava/lang/Integer;Ljava/lang/Integer;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p3

    iput-object v0, v10, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;->onStartRecordingClicked:Ljava/util/function/Consumer;

    move-object/from16 v0, p4

    iput-object v0, v10, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;->onCancelClicked:Ljava/lang/Runnable;

    iput-object v11, v10, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;->appName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/app/AlertDialog;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->onCreate(Landroid/app/AlertDialog;Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;->appName:Ljava/lang/String;

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const p2, 0x7f130be9

    invoke-virtual {p0, p2}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->setDialogTitle(I)V

    iget-object p2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->startButton:Landroid/widget/TextView;

    if-nez p2, :cond_0

    move-object p2, v0

    :cond_0
    const v1, 0x7f130be8

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const p2, 0x7f130be5

    invoke-virtual {p0, p2}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->setDialogTitle(I)V

    iget-object p2, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->startButton:Landroid/widget/TextView;

    if-nez p2, :cond_2

    move-object p2, v0

    :cond_2
    const v1, 0x7f130be3

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    new-instance p2, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$onCreate$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$onCreate$1;-><init>(Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;Landroid/app/AlertDialog;)V

    iget-object v1, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->startButton:Landroid/widget/TextView;

    if-nez v1, :cond_3

    move-object v1, v0

    :cond_3
    new-instance v2, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate$setStartButtonOnClickListener$1;

    invoke-direct {v2, p0, p2}, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate$setStartButtonOnClickListener$1;-><init>(Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$onCreate$2;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate$onCreate$2;-><init>(Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;Landroid/app/AlertDialog;)V

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->cancelButton:Landroid/widget/TextView;

    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, p0

    :goto_1
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final bridge synthetic onCreate(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;->onCreate(Landroid/app/AlertDialog;Landroid/os/Bundle;)V

    return-void
.end method
