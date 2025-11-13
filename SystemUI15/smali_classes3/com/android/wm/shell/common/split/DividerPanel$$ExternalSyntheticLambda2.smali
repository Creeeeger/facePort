.class public final synthetic Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/split/DividerPanel;

.field public final synthetic f$1:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/DividerPanel;Landroid/util/ArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/split/DividerPanel;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/common/split/DividerPanel;

    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerPanel$$ExternalSyntheticLambda2;->f$1:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/wm/shell/common/split/DividerPanel;->mAppPairShortcutController:Lcom/android/wm/shell/splitscreen/AppPairShortcutController;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/splitscreen/AppPairShortcutController;->createAppPairShortcut(I)V

    return-void
.end method
