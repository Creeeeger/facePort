.class Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener$1;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;

    .line 2261
    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 2

    .line 2264
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->runCommand()V

    .line 2265
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;

    iget-object v0, v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->mFaceView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener$1;->this$1:Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 2266
    return-void
.end method
