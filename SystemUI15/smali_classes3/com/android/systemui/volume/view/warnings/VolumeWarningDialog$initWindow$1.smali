.class public final Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f071839

    invoke-static {v1, v0}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f071838

    invoke-static {v2, v1}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f070ac1

    invoke-static {v3, v2}, Lcom/android/systemui/volume/util/ContextUtils;->getDimenInt(ILandroid/content/Context;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/volume/util/ContextUtils;->getDisplayWidth(Landroid/content/Context;)I

    move-result v3

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v4, -0x2

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog$initWindow$1;->this$0:Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;

    invoke-virtual {p0}, Lcom/android/systemui/volume/view/warnings/VolumeWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v0, p0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
