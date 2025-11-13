.class public final Lcom/android/systemui/edgelighting/effect/view/MorphView$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/view/MorphView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-boolean v0, p1, Lcom/android/systemui/edgelighting/effect/view/AbsToastView;->mIsHiding:Z

    const-string v1, "MorphView"

    if-eqz v0, :cond_0

    sget p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->$r8$clinit:I

    const-string p0, " Do not copy when hiding animation"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object v0, v0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/edgelighting/effect/utils/Utils;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "semclipboard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/content/clipboard/SemClipboardManager;

    const-string v3, "com.samsung.android.emergencymode.SemEmergencyManager"

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v3, "com.samsung.android.emergencymode.SemEmergencyManager not found"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-direct {v3}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;-><init>()V

    invoke-virtual {v3, v0}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->setText(Ljava/lang/CharSequence;)Z

    invoke-virtual {v2, p1, v3, v4}, Lcom/samsung/android/content/clipboard/SemClipboardManager;->addClip(Landroid/content/Context;Lcom/samsung/android/content/clipboard/data/SemClipData;Lcom/samsung/android/content/clipboard/SemClipboardManager$OnAddClipResultListener;)V

    goto :goto_1

    :cond_1
    const-string v2, "clipboard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    const-string v2, "label"

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "doCopyCode : copiedCode = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView$1;->this$0:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mPopupListener:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->mCodeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    iget-object p0, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect$1;->this$0:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/AbsEdgeLightingView;->mEdgeListener:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$4;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mWindowCallback:Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/android/systemui/edgelighting/effect/interfaces/IEdgeLightingWindowCallback;->doActionNotification()V

    goto :goto_2

    :cond_2
    sget p0, Lcom/android/systemui/edgelighting/effect/view/MorphView;->$r8$clinit:I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, " code text is null. So can not copy : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/edgelighting/effect/utils/VerificationCodeUtils;->getVerifyCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method
