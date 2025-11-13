.class public final synthetic Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;->setUpdateButtonState(Z)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/galaxysystemupdate/GalaxySystemUpdateFragment;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
