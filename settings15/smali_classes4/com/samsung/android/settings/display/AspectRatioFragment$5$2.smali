.class public final Lcom/samsung/android/settings/display/AspectRatioFragment$5$2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

.field public final synthetic val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/display/AspectRatioFragment$4;Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$5$2;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    iput-object p2, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$5$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const-string p1, "Click switch : "

    const-string v0, "AspectRatioFragment"

    invoke-static {p1, v0, p2}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$5$2;->val$row:Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;

    iput p2, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mType:I

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$5$2;->this$1:Lcom/samsung/android/settings/display/AspectRatioFragment$4;

    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment$4;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/display/AspectRatioFragment;

    iget-object v1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mPackage:Ljava/lang/String;

    iget p1, p1, Lcom/samsung/android/settings/display/AspectRatioFragment$AppRow;->mUid:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setMaxAspectPackage : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " for uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/display/AspectRatioFragment;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, -0x1

    invoke-interface {p0, v1, p1, p2, v2}, Landroid/view/IWindowManager;->setMaxAspectRatioPolicy(Ljava/lang/String;IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "setMaxAspectPackage() RemoteException"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
