.class public final Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;
.super Landroid/database/ContentObserver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final isEnable()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "aod_show_state"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-boolean p1, p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mTransparent:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->isEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->updateBackground(Landroid/view/Window;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->isEnable()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    iget-object v0, p1, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->mMorphView:Lcom/android/systemui/edgelighting/effect/view/MorphView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/effect/view/MorphView;->updateMargin(Landroid/view/WindowInsets;)V

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->addTouchInsector()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    iget-object p1, p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->mNotificationEffect:Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/effect/container/NotificationEffect;->isTouchable()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;->$r8$clinit:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " AOD_SHOW_STATE changed "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->isEnable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EdgeLightingDialog"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog$AODShowState;->this$0:Lcom/android/systemui/edgelighting/effect/container/EdgeLightingDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    return-void
.end method
