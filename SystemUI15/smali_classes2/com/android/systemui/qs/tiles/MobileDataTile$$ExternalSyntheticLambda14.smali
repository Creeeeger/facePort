.class public final synthetic Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

.field public final synthetic f$1:Ljava/lang/CharSequence;

.field public final synthetic f$2:Ljava/lang/CharSequence;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic f$5:I

.field public final synthetic f$6:Landroid/content/DialogInterface$OnClickListener;

.field public final synthetic f$7:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$1:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$2:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$4:Landroid/content/DialogInterface$OnClickListener;

    iput p6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$5:I

    iput-object p7, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$6:Landroid/content/DialogInterface$OnClickListener;

    iput-object p8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$7:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$1:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$2:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$3:I

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$4:Landroid/content/DialogInterface$OnClickListener;

    iget v5, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$5:I

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$6:Landroid/content/DialogInterface$OnClickListener;

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda14;->f$7:Landroid/view/View;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getContext$2()Landroid/content/Context;

    move-result-object p0

    const v7, 0x7f140604

    invoke-static {p0, v7}, Lcom/android/systemui/util/SystemUIDialogUtils;->createSystemUIDialogUtils(Landroid/content/Context;I)Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->getContext$2()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    :cond_0
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MobileDataTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    invoke-interface {v1}, Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;->collapsePanels()V

    new-instance v1, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda15;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/qs/tiles/MobileDataTile;I)V

    invoke-virtual {p0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
