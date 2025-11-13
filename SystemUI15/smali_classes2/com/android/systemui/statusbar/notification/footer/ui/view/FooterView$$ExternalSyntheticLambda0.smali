.class public final synthetic Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

.field public final synthetic f$1:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;Landroid/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$$ExternalSyntheticLambda0;->f$1:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView$$ExternalSyntheticLambda0;->f$1:Landroid/util/IndentingPrintWriter;

    sget v1, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->$r8$clinit:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "visibility: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/util/DumpUtilsKt;->visibilityString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "manageButton showHistory: false"

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "manageButton visibility: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/util/DumpUtilsKt;->visibilityString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dismissButton visibility: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/footer/ui/view/FooterView;->mClearAllButton:Lcom/android/systemui/statusbar/notification/row/FooterViewButton;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DumpUtilsKt;->visibilityString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
